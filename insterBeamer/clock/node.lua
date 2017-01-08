gl.setup(350, 100)

util.auto_loader(_G)

local font = resource.load_font("OpenSans-Regular.ttf")

util.file_watch("time.txt", function(content)
 	time = content
end)


function node.render()
    gl.clear(1, 0, 0, 1) -- red

    font:write(10, 10, time, 73, 1,1,1,1)
end
