gl.setup(690, 545)

util.auto_loader(_G)

local font = resource.load_font("OpenSans-Regular.ttf")
local background = resource.load_image("wallpaper.jpg")

util.file_watch("tram.txt", function(content)
    bus = content
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
        splitted[#splitted + 1] = token
    end
    return splitted
end

function node.render()
    background:draw(0, 0, WIDTH, HEIGHT, 0.7)
    font:write(15, 10, "Bahn", 60, 1,1,1,1)
    font:write(15, 70, "(Waldstadt Zentrum)", 25, 1,1,1,1)

    for idx, line in ipairs(wrap(bus), 200) do
            if idx > 10 then
                break
            end
        font:write(15, 70 + 60 * idx, line, 30, 1,1,1,1)
    end
end
