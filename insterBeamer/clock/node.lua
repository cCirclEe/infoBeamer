gl.setup(515, 145)

util.auto_loader(_G)

local font = resource.load_font("OpenSans-Regular.ttf")
local background = resource.load_image("wallpaper.jpg")

util.file_watch("time.txt", function(content)
 	time = content
end)


function node.render()
    background:draw(0, 0, WIDTH, HEIGHT, 0.7)
    font:write(10, 20, time, 110, 1,1,1,1)
end
