local main = function()
    local t = 0
    local u = 'https://raw.githubusercontent.com/hermanos-dev/hermanos-script/main/main.lua'

    while true do task.wait()
        if t >= 10 or getgenv().script_h then return end

        t = t + 1
        task.spawn(function()
            pcall(function() loadstring(game:HttpGet(u))() end)
        end)
        task.wait(60)
    end
end

task.spawn(main)
