-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/erik/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/erik/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/erik/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/erik/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/erik/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/barbar.nvim"
  },
  ["dashboard-nvim"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/dashboard-nvim"
  },
  ["galaxyline.nvim"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/galaxyline.nvim"
  },
  ["git-blame.nvim"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/git-blame.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
  },
  ["html-snippets"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/html-snippets"
  },
  ["java-snippets"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/java-snippets"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  neogit = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/neogit"
  },
  ["nvcode-color-schemes.vim"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/nvcode-color-schemes.vim"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua"
  },
  ["nvim-comment"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/nvim-comment"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-miniyank"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/nvim-miniyank"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-treesitter-refactor"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/nvim-treesitter-refactor"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["python-snippets"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/python-snippets"
  },
  ["telescope-media-files.nvim"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/telescope-media-files.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  trusty_rusty_snippets = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/trusty_rusty_snippets"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-polyglot"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/vim-polyglot"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/vim-rhubarb"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  ["vscode-es7-javascript-react-snippets"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/vscode-es7-javascript-react-snippets"
  },
  ["vscode-go"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/vscode-go"
  },
  ["vscode-javascript"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/vscode-javascript"
  },
  ["vscode-rust"] = {
    loaded = true,
    path = "/home/erik/.local/share/nvim/site/pack/packer/start/vscode-rust"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
