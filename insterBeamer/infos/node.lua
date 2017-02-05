gl.setup(695, 520)

local font = resource.load_font("OpenSans-Regular.ttf")
local background = resource.load_image("wallpaper.jpg")

util.file_watch("aktuelleInfos.txt", function(content)
    actual_Infos = content
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
    font:write(20, 20, "Aktuelle Infos", 60, 1,1,1,1)
    for idx, line in ipairs(wrap(actual_Infos), 40) do
            if idx > 100 then
                break
            end
        font:write(15, 70 + 40 * idx, line, 25, 1,1,1,1)
    end
end
