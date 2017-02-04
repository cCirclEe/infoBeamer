gl.setup(695, 520)

local font = resource.load_font("OpenSans-Regular.ttf")
local background = resource.load_image("wallpaper.jpg")

util.file_watch("aktuelleInfos.txt", function(content)
    day = content
end)


function node.render()
    background:draw(0, 0, WIDTH, HEIGHT, 0.7)
    font:write(20, 20, "Aktuelle Infos", 60, 1,1,1,1)
    font:write(20, 110, day, 25, 1,1,1,1)
end
