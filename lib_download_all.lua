function cd(path)
    shell.run("cd "..path)
end

function mkdir(dir)
    shell.run("mkdir "..dir)
end

function wget(url, path)
    cd(path)
    shell.run("wget "..url)
end

function main()
    mkdir("libs")
    cd("libs")
    mkdir("lib_libloader")
    mkdir("lib_logfs")
    mkdir("lib_utils")
    wget("https://raw.githubusercontent.com/akki697222/CCLuaUtils/main/libs/lib_logfs/log_critical.lua", "/libs/lib_logfs")
    wget("https://raw.githubusercontent.com/akki697222/CCLuaUtils/main/libs/lib_libloader/libloader.lua", "/libs/lib_libloader")
end