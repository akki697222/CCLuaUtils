local errors = require("libs.lib_logfs.log_critical")
local libs = {
    libfilesys_dir = "libs.lib_filesys.dir",
    libfilesys_file = "libs.lib_filesys.file",
    liblogfs_log = "libs.lib_logfs.log",
    liblogfs_critical = "libs.lib_logfs.log_critical"
    --basalt = "/libs/lib_basalt/main"
}
local lib = {}

function lib.require(libn)
    local loadlib = libs[libn]
    if loadlib ~= nil then
        return loadlib
    elseif loadlib == nil then
        errors.error("LibLoader.EXPECTION_NULL")
    else
        errors.error("LibLoader.UNEXPECTED_ERROR")
    end
end

return lib
