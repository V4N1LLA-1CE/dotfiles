-- Override LazyVim's Java extra to use sdkman Java and Lombok
return {
  {
    "nvim-jdtls",
    opts = function(_, opts)
      -- Ensure JAVA_HOME is set for jdtls (use system Java)
      if not vim.env.JAVA_HOME or vim.env.JAVA_HOME == "" then
        local java_home = vim.fn.trim(vim.fn.system("/usr/libexec/java_home 2>/dev/null"))
        if java_home ~= "" then
          vim.env.JAVA_HOME = java_home
        end
      end

      local lombok_path = vim.fn.expand("~/.local/share/nvim/mason/packages/jdtls/lombok.jar")

      -- Set Lombok as environment variable for jdtls wrapper
      vim.env.JDTLS_JVM_ARGS = "-javaagent:" .. lombok_path

      -- Add Spring Boot root markers
      opts.root_dir = require("lspconfig.util").root_pattern(
        "settings.gradle",
        "settings.gradle.kts",
        "pom.xml",
        "build.gradle",
        "mvnw",
        "gradlew",
        "build.gradle.kts",
        ".git"
      )

      -- Configure jdtls with Lombok
      opts.jdtls = vim.tbl_deep_extend("force", opts.jdtls or {}, {
        settings = {
          java = {
            signatureHelp = { enabled = true },
            maven = {
              downloadSources = true,
              downloadJavadoc = true,
              updateSnapshots = true,
            },
            gradle = {
              downloadSources = true,
              downloadJavadoc = true,
            },
            eclipse = {
              downloadSources = true,
            },
            autobuild = {
              enabled = true,
            },
            format = {
              enabled = true,
            },
            references = {
              includeDecompiledSources = true,
            },
            implementationsCodeLens = {
              enabled = true,
            },
            referencesCodeLens = {
              enabled = true,
            },
            completion = {
              favoriteStaticMembers = {},
              filteredTypes = {},
              maxResults = 0,
              guessMethodArguments = true,
            },
            contentProvider = {
              preferred = "fernflower",
            },
            sources = {
              organizeImports = {
                starThreshold = 9999,
                staticStarThreshold = 9999,
              },
            },
          },
        },
      })

      -- Add Lombok to JVM args (ensure it's set properly)
      opts.jdtls = opts.jdtls or {}
      local lombok_arg = "-javaagent:" .. lombok_path

      -- Initialize or ensure jvm_args exists
      if not opts.jdtls.jvm_args then
        opts.jdtls.jvm_args = { lombok_arg }
      else
        -- Check if lombok agent already exists to avoid duplicates
        local has_lombok = false
        for _, arg in ipairs(opts.jdtls.jvm_args) do
          if arg:match("javaagent:.*lombok%.jar") then
            has_lombok = true
            break
          end
        end
        if not has_lombok then
          table.insert(opts.jdtls.jvm_args, lombok_arg)
        end
      end

      return opts
    end,
  },
  {
    "mfussenegger/nvim-dap",
    optional = true,
    opts = function()
      local dap = require("dap")

      -- Simple Java attach adapter (no jdtls dependency)
      dap.adapters.java_attach = {
        type = "server",
        host = "127.0.0.1",
        port = 5005,
      }

      -- Override Java configurations to use simple attach
      vim.api.nvim_create_autocmd("FileType", {
        pattern = "java",
        callback = function()
          vim.defer_fn(function()
            if dap.configurations.java then
              -- Add simple attach config at the beginning
              table.insert(dap.configurations.java, 1, {
                type = "java_attach",
                request = "attach",
                name = "Attach to Spring Boot (Simple)",
                hostName = "127.0.0.1",
                port = 5005,
              })
            end
          end, 1000)
        end,
      })
    end,
  },
}
