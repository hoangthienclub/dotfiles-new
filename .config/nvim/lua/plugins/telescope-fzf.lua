local config = function()
  require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
    }
  }
}
  -- To get fzf loaded and working with telescope, you need to call
  -- load_extension, somewhere after setup function:
  require('telescope').load_extension('fzf')
end

return {
  'nvim-telescope/telescope-fzf-native.nvim',
  lazy = false,
  build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build',
	config = config,
}

