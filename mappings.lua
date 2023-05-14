-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
   
    -- Save / Close file
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, 
    ["<C-w>"] = { ":close<cr>" }, 
    ["<C-q>"] = { ":q<cr>" }, 

    -- Do not copy on register when pressing x
    ["x"] = { "_x" }, 

    -- Split window
    ["sv"] = { "<C-w>v" }, 
    ["sh"] = { "<C-w>s" }, 
    ["se"] = { "<C-w>=" }, 

    -- Tabs
    ["<C-n>"] = { ":tabnew<cr>" }, 
    ["tx"] = { ":tabclose<cr>" }, 
    ["tn"] = { ":tabn<cr>" }, 
    ["tp"] = { ":tabp<cr>" }, 

    -- Quit search highlight until next search
    ["<S-h>"] = { ":noh<cr>" },

    -- Telescope
    ["<C-p>"] = { "<cmd>Telescope find_files<cr>" },
    ["<C-b>"] = { "<cmd>Telescope buffers<cr>" },
    ["<C-f>"] = { "<cmd>Telescope live_grep<cr>" },
    ["<C-h>"] = { "<cmd>Telescope help_tags<cr>" },
    ["<C-g>"] = { "<cmd>Telescope grep_string<cr>" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = { 
    -- Do not copy on register when pressing x
    ["x"] = { "_x" }, 
    
    -- Maintain tab after using << or >>
    ["<"] = { "<gv" },
    [">"] = { ">gv" },
  }
}
