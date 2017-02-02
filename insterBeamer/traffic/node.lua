gl.setup(1390, 545)

local font = resource.load_font("OpenSans-Regular.ttf")

function node.render()
    local bus = resource.render_child("bus")
    bus:draw(0, 0, 690, 545)

    local tram = resource.render_child("tram")
    tram:draw(695, 0, 1390, 545)
end
