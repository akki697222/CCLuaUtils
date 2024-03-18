function cd(path)
    shell.run("cd "..path)
end

function mkdir(dir)
    shell.run("mkdir "..dir)
end

function main()
    mkdir("libs")
    cd("libs")
    mkdir("lib_libloader")
    mkdir("lib_logfs")
    mkdir("lib_utils")
end