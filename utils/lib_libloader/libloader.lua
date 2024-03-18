local errors = require("logerror")
local libs = {
    libfilesys_dir = "/libs/libfilesys/dir",
    libfilesys_file = "/libs/libfilesys/file",
    liblogfs_log = "/libs/liblogfs/log",
    basalt = "/libs/libbasalt/main"
}
local lib = {}

function lib.require(libn)
    local loadlib = libs[libn]
    if loadlib ~= nil then
        return loadlib
    elseif loadlib == nil then
        errors.error("LibLoader.LOADLIB_NULL")
    else
        errors.error("LibLoader.UNEXPECTED_ERROR")
    end
end

return lib