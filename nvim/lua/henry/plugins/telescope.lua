return {
    'nvim-telescope/telescope.nvim', tag = '0.1.3',
-- or                              , branch = '0.1.x',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        'sharkdp/fd',
        'BurntSushi/ripgrep'
    },
    config = function() 
        -- set keymaps
        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
        vim.keymap.set('n', '<C-p>', builtin.git_files, {})
        vim.keymap.set('n', '<leader>ps', function()
            builtin.grep_string({ search = vim.fn.input("Grep > ") })
        end)
        
    end
}