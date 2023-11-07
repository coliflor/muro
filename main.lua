local d = require "lib.helper"
local m = require "lib.muro"
local argparse = require "lib.argparse"
local parser   = argparse()
   :name "muro"
   :description [[

]]
   :epilog "  Author: beemo.ceniza@gmail.com"

local version = "version v 0.1.0"
parser:flag("-v --version", version)
parser:flag("--mirrorh",  "mirror image horizontally")
parser:flag("--mirrorv", "mirror image vertically")
parser:flag("--duplicatelines", "duplicates lines of the image")
parser:flag("-c --compress", "compress the image with libdeflate")
parser:option("-w --width", "width of the image ", 3840)
parser:option("-e --height", "height of the image ", 2160)
parser:option("-s --scale", "scale of the charactertable", 1)
parser:option("-a --ascii", "ascii art to select", "muro")
parser:option("-f --filename", " filename (can be a path)", "image.bmp")
local args     = parser:parse()

if  args.version == true then
	 io.write(version .. "\n")
	 os.exit()
end

-- Specify user-defined width, height
local userWidth
if tonumber(args.width) >= 1 then
	 userWidth = tonumber(args.width)
else
	 userWidth = 3840
end

local userHeight
if tonumber(args.height) >= 1 then
	 userHeight = tonumber(args.height)
else
	 userHeight= 2160
end

-- check if scale is smaller than 1
local scaling
if tonumber(args.scale) >= 1 then
	 scaling = args.scale
else
	 scaling = 1
end

-- Replace with the path to your ASCII text file
local filename = "images/" .. args.ascii .. "/" .. args.ascii .. ".txt"

local status, colorLookup = pcall(require, "images.".. args.ascii .. "." .. args.ascii)
if not status then
	colorLookup = m.characterTable
end

local characterTable = m.readAsciiFileIntoTable(filename)

-- Duplicate each line of the Charactertable
if args.duplicatelines then
	 characterTable = d.duplicateLines(characterTable)
end

local outputBMPFilename = args.filename

-- Save the BMP image
m.saveBMP(outputBMPFilename, userWidth, userHeight, scaling, args.mirrorh, args.mirrorv, characterTable, colorLookup, args.compress)
