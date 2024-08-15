require("neotest").setup({
  adapters = {
    require("neotest-gtest").setup({
      root_files = { "CMakeLists.txt", "Makefile", ".git" },
      build_directory = "build/x86/Debug",
      args = { "--gtest_color=yes" },
      filter_dir = function(name)
        return name ~= "build"
      end
    })
  },
  -- Other neotest configurations
})
