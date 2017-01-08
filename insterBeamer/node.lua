gl.setup(800, 600)

function node.render()
    gl.clear(1, 1, 1, 1) -- green

    local clock = resource.render_child("clock")
    clock:draw(500, 5, 795, 100)

    local weather = resource.render_child("weather")
    weather:draw(500, 105, 795, 595)

    local traffic = resource.render_child("traffic")
    traffic:draw(5, 5, 495, 295)

    local infos = resource.render_child("infos")
    infos:draw(5, 300, 495, 595) 
    
end
