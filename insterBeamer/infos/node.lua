gl.setup(640, 480)

local font = resource.load_font("OpenSans-Regular.ttf")
function node.render()
    gl.clear(1, 0, 0, 1)
    font:write(20, 20, "aktuelle Infos", 60, 1,1,1,1)
end
