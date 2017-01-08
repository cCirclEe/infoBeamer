gl.setup(300, 500)

util.auto_loader(_G)

local font = resource.load_font("OpenSans-Regular.ttf")

function trim(s)
    return s:match "^%s*(.-)%s*$"
end


util.file_watch("day0.txt", function(data)
    day0 = trim(data)
end)


util.file_watch("day1.txt", function(data)
    day1 = trim(data)
end)


util.file_watch("day2.txt", function(data)
    day2 = trim(data)
end)


util.file_watch("day3.txt", function(data)
    day3 = trim(data)
end)


util.file_watch("day4.txt", function(data)
    day4 = trim(data)
end)


util.file_watch("day5.txt", function(data)
    day5 = trim(data)
end)


util.file_watch("day6.txt", function(data)
    day6 = trim(data)
end)





util.file_watch("weatherInfo0.txt", function(data)
    weather0 = trim(data)
end)

util.file_watch("weatherInfo1.txt", function(data)
    weather1 = trim(data)
end)

util.file_watch("weatherInfo2.txt", function(data)
    weather2 = trim(data)
end)

util.file_watch("weatherInfo3.txt", function(data)
    weather3 = trim(data)
end)

util.file_watch("weatherInfo4.txt", function(data)
    weather4 = trim(data)
end)

util.file_watch("weatherInfo5.txt", function(data)
    weather5 = trim(data)
end)

util.file_watch("weatherInfo6.txt", function(data)
    weather6 = trim(data)
end)

function node.render()
	gl.clear(1,0,0,1)
	font:write(10, 30, "Weather", 30, 1,1,1,1)

	font:write(10, 80, day0, 15, 1,1,1,1)
	font:write(130, 80, weather0, 15, 1,1,1,1)

	font:write(10, 130, day1, 15, 1,1,1,1)
	font:write(130, 130, weather1, 15, 1,1,1,1)

	font:write(10, 180, day2, 15, 1,1,1,1)
	font:write(130, 180, weather2, 15, 1,1,1,1)

	font:write(10, 230, day3, 15, 1,1,1,1)
	font:write(130, 230, weather3, 15, 1,1,1,1)

	font:write(10, 280, day4, 15, 1,1,1,1)
	font:write(130, 280, weather4, 15, 1,1,1,1)

	font:write(10, 330, day5, 15, 1,1,1,1)
	font:write(130, 330, weather5, 15, 1,1,1,1)

	font:write(10, 380, day6, 15, 1,1,1,1)
	font:write(130, 380, weather6, 15, 1,1,1,1)
end
