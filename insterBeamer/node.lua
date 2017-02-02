gl.setup(1920, 1080)

local background = resource.load_image("wallpaper4.jpg")

function node.render()
    background:draw(0, 0, WIDTH, HEIGHT, 0.9)	

    local clock = resource.render_child("clock")
    clock:draw(1400, 5, WIDTH - 5, 150)

    local weather = resource.render_child("weather")
    weather:draw(1400, 155, WIDTH - 5, HEIGHT - 5)

    local traffic = resource.render_child("traffic")
    traffic:draw(5, 5, 1395, 550)

    local barEvening = resource.render_child("barEvening")
    barEvening:draw(5, 555, 695, HEIGHT - 5)

    local infos = resource.render_child("infos")
    infos:draw(700, 555, 1395, HEIGHT - 5) 
    
end
