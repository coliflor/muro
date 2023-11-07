local d = require "lib.helper"
local muro = {}

muro.characterTable = {
	 --0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!"#$%&'()*+,-./:;<=>?@[\]^_`{|}~

	 ["0"] = d.a(0, 0, 0),
	 ["1"] = d.a(1, 1, 1),
	 ["2"] = d.a(2, 2, 2),
	 ["3"] = d.a(3, 3, 3),
	 ["4"] = d.a(4, 4, 4),
	 ["5"] = d.a(5, 5, 5),
	 ["6"] = d.a(6, 6, 6),
	 ["7"] = d.a(7, 7, 7),
	 ["8"] = d.a(8, 8, 8),
	 ["9"] = d.a(9, 9, 9),
	 ["a"] = d.a(10, 10, 10),
	 ["b"] = d.a(11, 11, 11),
	 ["c"] = d.a(12, 12, 12),
	 ["d"] = d.a(13, 13, 13),
	 ["e"] = d.a(14, 14, 14),
	 ["f"] = d.a(15, 15, 15),
	 ["g"] = d.a(16, 16, 16),
	 ["h"] = d.a(17, 17, 17),
	 ["i"] = d.a(18, 18, 18),
	 ["j"] = d.a(19, 19, 19),
	 ["k"] = d.a(20, 20, 20),
	 ["l"] = d.a(21, 21, 21),
	 ["m"] = d.a(22, 22, 22),
	 ["o"] = d.a(23, 23, 23),
	 ["p"] = d.a(24, 24, 24),
	 ["q"] = d.a(25, 25, 25),
	 ["r"] = d.a(26, 26, 26),
	 ["s"] = d.a(27, 27, 27),
	 ["t"] = d.a(28, 28, 28),
	 ["u"] = d.a(29, 29, 29),
	 ["v"] = d.a(30, 30, 30),
	 ["w"] = d.a(31, 31, 31),
	 ["x"] = d.a(32, 32, 32),
	 ["y"] = d.a(33, 33, 33),
	 ["z"] = d.a(34, 34, 34),
	 ["A"] = d.a(35, 35, 35),
	 ["B"] = d.a(36, 36, 36),
	 ["C"] = d.a(37, 37, 37),
	 ["D"] = d.a(38, 38, 38),
	 ["E"] = d.a(39, 39, 39),
	 ["F"] = d.a(40, 40, 40),
	 ["G"] = d.a(41, 41, 41),
	 ["H"] = d.a(42, 42, 42),
	 ["I"] = d.a(43, 43, 43),
	 ["J"] = d.a(44, 44, 44),
	 ["K"] = d.a(45, 45, 45),
	 ["M"] = d.a(46, 46, 46),
	 ["N"] = d.a(47, 47, 47),
	 ["O"] = d.a(48, 48, 48),
	 ["P"] = d.a(49, 49, 49),
	 ["R"] = d.a(50, 50, 50),
	 ["S"] = d.a(51, 51, 51),
	 ["T"] = d.a(52, 52, 52),
	 ["U"] = d.a(53, 53, 53),
	 ["V"] = d.a(54, 54, 54),
	 ["W"] = d.a(55, 55, 55),
	 ["X"] = d.a(56, 56, 56),
	 ["Y"] = d.a(57, 57, 57),
	 ["Z"] = d.a(58, 58, 58),
	 ["!"] = d.a(59, 59, 59),
	 ["\""] = d.a(60, 60, 60),
	 ["#"] = d.a(61, 61, 61),
	 ["$"] = d.a(62, 62, 62),
	 ["%"] = d.a(63, 63, 63),
	 ["'"] = d.a(64, 64, 64),
	 ["("] = d.a(65, 65, 65),
	 [")"] = d.a(66, 66, 66),
	 ["*"] = d.a(67, 67, 67),
	 ["+"] = d.a(68, 68, 68),
	 [","] = d.a(69, 69, 69),
	 ["-"] = d.a(70, 70, 70),
	 ["."] = d.a(71, 71, 71),
	 ["/"] = d.a(72, 72, 72),
	 [":"] = d.a(73, 73, 73),
	 [";"] = d.a(74, 74, 74),
	 ["<"] = d.a(75, 75, 75),
	 ["="] = d.a(76, 76, 76),
	 [">"] = d.a(77, 77, 77),
	 ["?"] = d.a(78, 78, 78),
	 ["@"] = d.a(79, 79, 79),
	 ["["] = d.a(80, 80, 80),
	 ["\\"] = d.a(81, 81, 81),
	 ["]"] = d.a(82, 82, 82),
	 ["^"] = d.a(83, 83, 83),
	 ["_"] = d.a(84, 84, 84),
	 ["`"] = d.a(85, 85, 85),
	 ["{"] = d.a(86, 86, 86),
	 ["|"] = d.a(87, 87, 87),
	 ["}"] = d.a(88, 88, 88),
	 ["~"] = d.a(89, 89, 89),
	 [" "] = d.a(90, 90, 90),
	 ["ñ"] = d.a(91, 91, 91),
	 ["á"] = d.a(92, 92, 92),
	 ["ó"] = d.a(93, 93, 93),
	 ["å"] = d.a(94, 94, 94),
	 ["ë"] = d.a(95, 95, 95),
	 ["ö"] = d.a(96, 96, 96),
	 ["œ"] = d.a(97, 97, 97),
	 ["ø"] = d.a(98, 98, 98),
	 ["ð"] = d.a(99, 99, 99),
}

--[[

	 RGB: (99, 99, 99)
	 RGB: (98, 98, 98)
	 RGB: (97, 97, 97)
	 RGB: (96, 96, 96)
	 RGB: (95, 95, 95)
	 RGB: (94, 94, 94)
	 RGB: (93, 93, 93)
	 RGB: (92, 92, 92)
	 RGB: (91, 91, 91)
	 RGB: (90, 90, 90)
	 RGB: (89, 89, 89)
	 RGB: (88, 88, 88)
	 RGB: (87, 87, 87)
	 RGB: (86, 86, 86)
	 RGB: (85, 85, 85)
	 RGB: (84, 84, 84)
	 RGB: (83, 83, 83)
	 RGB: (82, 82, 82)
	 RGB: (81, 81, 81)
	 RGB: (80, 80, 80)
	 RGB: (79, 79, 79)
	 RGB: (78, 78, 78)
	 RGB: (77, 77, 77)
	 RGB: (76, 76, 76)
	 RGB: (75, 75, 75)
	 RGB: (74, 74, 74)
	 RGB: (73, 73, 73)
	 RGB: (72, 72, 72)
	 RGB: (71, 71, 71)
	 RGB: (70, 70, 70)
	 RGB: (69, 69, 69)
	 RGB: (68, 68, 68)
	 RGB: (67, 67, 67)
	 RGB: (66, 66, 66)
	 RGB: (65, 65, 65)
	 RGB: (64, 64, 64)
	 RGB: (63, 63, 63)
	 RGB: (62, 62, 62)
	 RGB: (61, 61, 61)
	 RGB: (60, 60, 60)
	 RGB: (59, 59, 59)
	 RGB: (58, 58, 58)
	 RGB: (57, 57, 57)
	 RGB: (56, 56, 56)
	 RGB: (55, 55, 55)
	 RGB: (54, 54, 54)
	 RGB: (53, 53, 53)
	 RGB: (52, 52, 52)
	 RGB: (51, 51, 51)
	 RGB: (50, 50, 50)
	 RGB: (49, 49, 49)
	 RGB: (48, 48, 48)
	 RGB: (47, 47, 47)
	 RGB: (46, 46, 46)
	 RGB: (45, 45, 45)
	 RGB: (44, 44, 44)
	 RGB: (43, 43, 43)
	 RGB: (42, 42, 42)
	 RGB: (41, 41, 41)
	 RGB: (40, 40, 40)
	 RGB: (39, 39, 39)
	 RGB: (38, 38, 38)
	 RGB: (37, 37, 37)
	 RGB: (36, 36, 36)
	 RGB: (35, 35, 35)
	 RGB: (34, 34, 34)
	 RGB: (33, 33, 33)
	 RGB: (32, 32, 32)
	 RGB: (31, 31, 31)
	 RGB: (30, 30, 30)
	 RGB: (29, 29, 29)
	 RGB: (28, 28, 28)
	 RGB: (27, 27, 27)
	 RGB: (26, 26, 26)
	 RGB: (25, 25, 25)
	 RGB: (24, 24, 24)
	 RGB: (23, 23, 23)
	 RGB: (22, 22, 22)
	 RGB: (21, 21, 21)
	 RGB: (20, 20, 20)
	 RGB: (19, 19, 19)
	 RGB: (18, 18, 18)
	 RGB: (17, 17, 17)
	 RGB: (16, 16, 16)
	 RGB: (15, 15, 15)
	 RGB: (14, 14, 14)
	 RGB: (13, 13, 13)
	 RGB: (12, 12, 12)
	 RGB: (11, 11, 11)
	 RGB: (10, 10, 10)
	 RGB: (9, 9, 9)
	 RGB: (8, 8, 8)
	 RGB: (7, 7, 7)
	 RGB: (6, 6, 6)
	 RGB: (5, 5, 5)
	 RGB: (4, 4, 4)
	 RGB: (3, 3, 3)
	 RGB: (2, 2, 2)
	 RGB: (1, 1, 1)
	 RGB: (0, 0, 0)
--]]

-- BMP header for a user-defined pixel image (24-bit RGB)
local function createBMPHeader(width, height)
	 local bmpHeader = string.char(66, 77)  -- BM (Bitmap signature)
	 local imageSize = width * height * 3
	 local fs = imageSize + 54
	 bmpHeader = bmpHeader .. string.char(fs % 256, (fs // 256) % 256, (fs // 65536) % 256, (fs // 16777216) % 256)
	 bmpHeader = bmpHeader .. string.rep(string.char(0), 4)  -- Reserved
	 bmpHeader = bmpHeader .. string.char(54, 0, 0, 0)  -- Offset to image data
	 bmpHeader = bmpHeader .. string.char(40, 0, 0, 0)  -- Header size
	 bmpHeader = bmpHeader .. string.char(width % 256, width // 256, 0, 0)  -- Width
	 bmpHeader = bmpHeader .. string.char(height % 256, height // 256, 0, 0)  -- Height
	 bmpHeader = bmpHeader .. string.char(1, 0)  -- Planes (must be 1)
	 bmpHeader = bmpHeader .. string.char(24, 0)  -- Bits per pixel (24-bit RGB)
	 bmpHeader = bmpHeader .. string.rep(string.char(0), 24)  -- Remaining header
	 return bmpHeader
end

-- Create a user-defined array of random pixel colors
-- local function createRandomPixelArray(width, height)
-- 	 local pixelArray = {}

-- 	 -- Generate and populate the pixelArray with random colors using nested loops
-- 	 local r, g, b, color
-- 	 for row = 1, height do
-- 			for col = 1, width do
-- 				 r = math.random(0, 255)  -- Random red value
-- 				 g = math.random(0, 255)  -- Random green value
-- 				 b = math.random(0, 255)  -- Random blue value

-- 				 -- Construct the pixel color in BMP format (BGR order)
-- 				 color = string.char(b, g, r)

-- 				 pixelArray[(row - 1) * width + col] = color
-- 			end
-- 	 end

-- 	 return pixelArray
-- end

-- Function to read an ASCII text file and introduce it into a Lua table
function muro.readAsciiFileIntoTable(filename)
	 local file = io.open(filename, "r") -- Open the file in read mode

	 if not file then
			return nil -- File couldn't be opened
	 end

	 local contentTable = {} -- Table to store file content

	 -- Read each line and introduce it into the table
	 for line in file:lines() do
			table.insert(contentTable, line)
	 end

	 file:close() -- Close the file
	 return contentTable
end

-- Function to horizontally mirror the patternTable
local function mirrorPatternHorizontally(patternTable)
	 local mirroredTable = {}

	 for i = 1, #patternTable do
			local row = patternTable[i]
			local newRow = {}


			for j = #row, 1, -1 do
				 table.insert(newRow, row[j])
			end

			table.insert(mirroredTable, newRow)
	 end

	 return mirroredTable
end

-- Function to vertically mirror the patternTable
local function mirrorPatternVertically(patternTable)
	 local mirroredTable = {}

	 for i = #patternTable, 1, -1 do
			table.insert(mirroredTable, patternTable[i])
	 end

	 return mirroredTable
end

-- Function to scale the character table by a factor
local function scaleCharacterTable(characterTable, factor)
	 local scaledTable = {}

	 for i = 1, #characterTable do
			local newRow = ""
			local row = characterTable[i]
			for j = 1, #row do
				 local character = row:sub(j, j)
				 newRow = newRow .. string.rep(character, factor)
			end
			for _ = 1, factor do
				 table.insert(scaledTable, newRow)
			end
	 end

	 return scaledTable
end

-- Create a user-defined array of pixel colors based on a repeating pattern table
local function createTablePatternedPixelArray(width, height, pattern)
	 local pixelArray = {}
	 local patternWidth = #pattern[1] -- Width of the pattern

	 -- Generate and populate the pixelArray with the repeating pattern defined in the table
	 for row = 1, height do
			local rowIndex = ((row - 1) % #pattern) + 1
			for col = 1, width do
				 local colIndex = ((col - 1) % patternWidth) + 1
				 local color = pattern[rowIndex][colIndex]
				 pixelArray[(row - 1) * width + col] = color
			end
	 end

	 return pixelArray
end

-- Function to transform a table of characters into a valid patternTable using the color lookup table
local function createPatternTableFromCharacters(characterTable, colorLookup)
	 local patternTable = {}
	 local height = #characterTable
	 local width = #characterTable[1]

	 for i = 1, height do
			patternTable[i] = {}
			for j = 1, width do
				 local character = characterTable[i]:sub(j, j) -- Extract individual character
				 -- Retrieve color from the color lookup table
				 local color = colorLookup[character] or string.char(255, 255, 255) -- Default color (e.g., Red)
				 patternTable[i][j] = color
			end
	 end

	 return patternTable
end

-- Save a user-defined BMP image
function muro.saveBMP(filename, width, height, scaling, horizontal, vertical, characterTable, colorLookup)

	 -- Scale the character table
	 local scalingFactor = scaling
	 local scaledCharacterTable = scaleCharacterTable(characterTable, scalingFactor)

	 -- Convert the character table into a patternTable
	 local generatedPattern = createPatternTableFromCharacters(scaledCharacterTable, colorLookup)

	 -- Create BMP header
	 local bmpHeader = createBMPHeader(width, height)

	 -- Mirror the pattern horizontally
	 if horizontal then
			generatedPattern = mirrorPatternHorizontally(generatedPattern)
	 end

	 -- Mirror the pattern vertically
	 if vertical then
			generatedPattern = mirrorPatternVertically(generatedPattern)
	 end

	 -- Create the BMP image data
	 local pixelArray = createTablePatternedPixelArray(width, height, generatedPattern)
	 -- d.print(pixelArray)

	 -- Create the BMP image by joining pixel colors
	 local bmpImage = table.concat(pixelArray)

	 -- Write the BMP header and image data to the output file
	 local outputFile = assert(io.open(filename, "wb"))
	 outputFile:write(bmpHeader)
	 outputFile:write(bmpImage)
	 outputFile:close()

	 print("BMP file saved as", filename)
end

return muro
