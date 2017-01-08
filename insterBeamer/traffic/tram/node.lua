gl.setup(350, 350)

local font = resource.load_font("OpenSans-Regular.ttf")
function node.render()
    gl.clear(1, 0, 0, 1) -- red

    font:write(15, 10, "Bus", 45, 1,1,1,1)
end
