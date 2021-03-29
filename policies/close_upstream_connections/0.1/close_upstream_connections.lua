local setmetatable = setmetatable

local _M = require('apicast.policy').new('Close Upstream Connections Policy', '0.1')
local mt = { __index = _M }

local new = _M.new

function _M.new()
  return setmetatable({}, mt)
end

function _M:rewrite()
  ngx.var.upstream_connection_header = "Close"
end

return _M
