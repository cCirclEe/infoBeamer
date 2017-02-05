gl.setup(690, 520)

util.auto_loader(_G)

local font = resource.load_font("OpenSans-Regular.ttf")

local background = resource.load_image{
    file = "wallpaper.jpg";
    mipmap = true;
}

util.file_watch("barEvening.txt", function(content)
 	bar = content
end)

function wrap(str, limit, indent, indent1)
    limit = limit or 72
    local here = 1
    local wrapped = str:gsub("(%s+)()(%S+)()", function(sp, st, word, fi)
        if fi-here > limit then
            here = st
            return "\n"..word
        end
    end)
    local splitted = {}
    for token in string.gmatch(wrapped, "[^\n]+") do
        splitted[#splitted + 1] = token end
    return splitted
end

function node.render()
    background:draw(0, 0, WIDTH, HEIGHT, 0.7)
    font:write(10, 20, "Nächster Barabend", 60, 1,1,1,1)

    for idx, line in ipairs(wrap(bar), 40) do
        if idx > 4 then
            break
        end
	if idx == 1 then 
            font:write(15, 70 + 40 * idx, line, 35, 1,1,1,1)
	end
	if idx == 2 then 
	    date = line:sub(1, -10)
	    date = date..":"
	    time = line:sub(-9, -4)
            font:write(15, 80 + 40 * idx, date, 25, 1,1,1,1)
            font:write(170, 80 + 40 * idx, time, 25, 1,1,1,1)
	end
    end
    local img = resource.render_child("img")
    img:draw(15, 200, 675, 505)
end
