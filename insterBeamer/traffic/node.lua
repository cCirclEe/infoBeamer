gl.setup(640, 480)

local font = resource.load_font("OpenSans-Regular.ttf")

function node.render()
    gl.clear(1, 1, 1, 1) -- red

    local bus = resource.render_child("bus")
    bus:draw(0, 0, 300, 480)

    local tram = resource.render_child("tram")
    tram:draw(305, 0, 640, 480)
end
