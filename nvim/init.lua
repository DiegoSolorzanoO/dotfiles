require('tlport.base')
require('tlport.maps')
require('tlport.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"

if is_mac then
  require('tlport.macos')
end
if is_win then
  require('tlport.windows')
end
