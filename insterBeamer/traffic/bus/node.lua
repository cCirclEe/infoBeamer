gl.setup(350, 250)

util.auto_loader(_G)

local font = resource.load_font("OpenSans-Regular.ttf")

util.file_watch("bus.txt", function(content)
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
    gl.clear(1, 0, 0, 1) -- white 

    font:write(15, 10, "Bus", 45, 1,1,1,1)

    for idx, line in ipairs(wrap(bus), 40) do
            if idx > 5 then
                break
            end
        font:write(15, 40 + 30 * idx, line, 20, 1,1,1,1)
    end

end
