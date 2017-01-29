gl.setup(300, 500)

util.auto_loader(_G)

local font = resource.load_font("OpenSans-Regular.ttf")

util.file_watch("day.txt", function(content)
    day = content
end)

util.file_watch("weatherInfo.txt", function(content)
    weatherInfo = content
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
	gl.clear(1,0,0,1)
	font:write(10, 30, "Weather", 30, 1,1,1,1)

    for idx, line in ipairs(wrap(day), 40) do
            if idx > 15 then
                break
            end
        font:write(10, 40 + 50 * idx, line, 15, 1,1,1,1)
    end

    for idx, line in ipairs(wrap(weatherInfo), 40) do
            if idx > 15 then
                break
            end
        font:write(130, 40 + 50 * idx, line, 15, 1,1,1,1)
    end
end
