-- helper functions
local helper = {}

function helper.dump(o)
   if type(o) == 'table' then
      local s = '{ '
      for k,v in pairs(o) do
         if type(k) ~= 'number' then k = '"'..k..'"' end
         s = s .. '['..k..'] = ' .. helper.dump(v) .. ','
      end
      return s .. '} '
   else
      return tostring(o)
   end
end

function helper.print(o)
	 print(helper.dump(o))
end

-- Function to duplicate each line in the content table
function helper.duplicateLines(contentTable)
	 local duplicatedContent = {} -- Table to store duplicated lines

	 for _, line in ipairs(contentTable) do
			table.insert(duplicatedContent, line)
			table.insert(duplicatedContent, line) -- Duplicate the line
	 end

	 return duplicatedContent
end

-- Function to reverse a string
function helper.re(inputString)
    local reversedString = ""

    for i = #inputString, 1, -1 do
        reversedString = reversedString .. inputString:sub(i, i)
    end

    return reversedString
end

-- helper function to put represent rbg in the correct order
function helper.a(r, g, b)
	 return string.char(b, g, r)
end

-- Function to check if a string is a path
function helper.isPath(str)
    return string.match(str, "[/\\]") ~= nil
end

-- Function to get the last folder name from a path
function helper.getLastFolderName(path)
    local pattern = "[^/]+$"
    return string.match(path, pattern)
end

-- Function to extract the path excluding the last element
function helper.getPathWithoutLastElement(path)
    local pattern = "(.*/)[^/]+$"
    return string.match(path, pattern) or ""
end

-- Return true if file exists and is readable.
function helper.file_exists(path)
	 local f = io.open(path, "rb")
	 if f then f:close() end
	 return f ~= nil
end

return helper
