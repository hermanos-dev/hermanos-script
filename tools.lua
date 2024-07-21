if not game:IsLoaded() then game.Loaded:Wait() end

if not isfolder('h') then makefolder('h') end

local p = 'h/'
while true do task.wait()
    writefile(p .. 't', string.format('hermanos_%d', os.time()))
    task.wait(20)
end
