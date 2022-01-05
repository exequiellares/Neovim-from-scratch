return {
  init_options = {
    licenceKey = os.getenv("PHP_INTELEPHENSE_LICENCE")
  },
  settings = {
    intelephense = {
      telemetry = {
        enabled = false
      },
      completion = {
        fullyQualifyGlobalConstantsAndFunctions = false
      },
      phpdoc = {
        returnVoid = false
      },
      files = {
        maxSize = 5000000,
        exclude = {
          "**/.git/**",
          "**/.svn/**",
          "**/.hg/**",
          "**/CVS/**",
          "**/.DS_Store/**",
          "**/node_modules/**",
          "**/bower_components/**",
          "**/vendor/**/{Test,test,Tests,tests}/**",
          "**/generated/**"
        }
      }
    }
  }
}
-- return {
--     --root_dir = nvim_lsp.util.root_pattern('.git', 'foo'),
--     settings = {
--         intelephense = {
--             stubs = { 
--                 "bcmath",
--                 "bz2",
--                 "calendar",
--                 "Core",
--                 "curl",
--                 "date",
--                 "dba",
--                 "dom",
--                 "enchant",
--                 "fileinfo",
--                 "filter",
--                 "ftp",
--                 "gd",
--                 "gettext",
--                 "hash",
--                 "iconv",
--                 "imap",
--                 "intl",
--                 "json",
--                 "ldap",
--                 "libxml",
--                 "mbstring",
--                 "mcrypt",
--                 "mysql",
--                 "mysqli",
--                 "password",
--                 "pcntl",
--                 "pcre",
--                 "PDO",
--                 "pdo_mysql",
--                 "Phar",
--                 "readline",
--                 "recode",
--                 "Reflection",
--                 "regex",
--                 "session",
--                 "SimpleXML",
--                 "soap",
--                 "sockets",
--                 "sodium",
--                 "SPL",
--                 "standard",
--                 "superglobals",
--                 "sysvsem",
--                 "sysvshm",
--                 "tokenizer",
--                 "xml",
--                 "xdebug",
--                 "xmlreader",
--                 "xmlwriter",
--                 "yaml",
--                 "zip",
--                 "zlib",
--                 "acf-pro",
--                 "wp-cli",
--                 "genesis",
--                 "polylang"
--             },
--             files = {
--                 maxSize = 5000000,
--                 exclude = {
--                   "**/.git/**",
--                   "**/.svn/**",
--                   "**/.hg/**",
--                   "**/CVS/**",
--                   "**/.DS_Store/**",
--                   "**/node_modules/**",
--                   "**/bower_components/**",
--                   "**/vendor/**/{Test,test,Tests,tests}/**",
--                   "**/generated/**"
--                 }
--             },
--      --       phpVersion = "7.4.27"
--         },
--     },
-- }
