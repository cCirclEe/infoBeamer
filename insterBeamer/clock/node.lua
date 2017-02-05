gl.setup(515, 145)

util.auto_loader(_G)

local font = resource.load_font("OpenSans-Regular.ttf")
local background = resource.load_image("wallpaper.jpg")

function node.render()
    background:draw(0, 0, WIDTH, HEIGHT, 0.7)
    timeStamp = os.date("%H:%M Uhr")
    dateStamp = os.date("(%d.%m.%Y)")
    font:write(10, 20, timeStamp, 80, 1,1,1,1)
    font:write(10, 100, dateStamp, 40, 1,1,1,1)
end
