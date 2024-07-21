if not game:IsLoaded() then game.Loaded:Wait() end

if not isfolder('h') then makefolder('h') end

local p = 'h/'
while true do task.wait()
    local s = pcall(function()
        writefile(p .. 't', string.format('hermanos_%d', os.time()))
    end)
    if not s then
        task.wait(1);continue
    end
    task.wait(20)
end
