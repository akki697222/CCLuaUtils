local le = {}

function le.error(errortext)
    error("Encountered an except: exception.".. errortext .." Computer has restarting 5 seconds...", 0)
    sleep(5)
    shell.run("reboot")
end

return le