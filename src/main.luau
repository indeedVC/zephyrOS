--[[
    MIT License

    Copyright (c) 2024 indeedVC

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
--]]

local os = {}

local Screen = GetPart("TouchScreen")
local Keyboard = GetPart("Keyboard")

local Version = "0.0.0"

local IsDevelopment = true
local DevBuild = 1

os = {
	Screen = Screen,
	Keyboard = Keyboard,

	Version = Version
}

if IsDevelopment then
	Version = Version .. "-dev." .. DevBuild
	os.Version = Version
end

function os:CreateWindow(title: string)

end

function Init()
	os.Screen:ClearElements()

	local PlayerCursors = {}
	coroutine.resume(coroutine.create(function()
		for _, cursor in Screen:GetCursors() do

		end
	end))

	local Desktop = Screen:CreateElement("TextLabel", {
		Size=UDim2.fromScale(1, 0.9),
		Position=UDim2.fromScale(0, 0),
		BackgroundColor3=Color3.fromRGB(0, 0, 0),
		TextColor3=Color3.fromRGB(47, 81, 136),
		Text="zephyr",
		Font="FredokaOne",
		TextStrokeTransparency=0,
		TextScaled=true,
		TextStrokeColor3=Color3.fromRGB(255, 255, 255),
		ZIndex=-99,
	})

	local Taskbar = Screen:CreateElement("Frame", {
		Size=UDim2.fromScale(1, 0.1),
		Position=UDim2.fromScale(0, 0.9),
		BackgroundColor3=Color3.fromRGB(30, 30, 30),
		BorderColor3=Color3.fromRGB(255, 255, 255),
		ZIndex=9999
	})

	local DebugInfo = Screen:CreateElement("TextLabel", {
		Parent=Desktop,
		Size=UDim2.fromScale(1, 0.1),
		Position=UDim2.fromScale(0, 0.9),
		BackgroundTransparency=1,
		TextTransparency=0.5,
		TextColor3=Color3.fromRGB(255, 255, 255),
		Text=("zephyrOS %s"):format(Version),
		Font="Gotham",
		TextXAlignment="Right",
		TextScaled=true,
		ZIndex=-1
	})
	
	local StartButton = Screen:CreateElement("TextButton", {
		Parent=Taskbar,
		Size=UDim2.fromScale(0.07, 1),
		Position=UDim2.fromScale(0, 0),
		BackgroundColor3=Color3.fromRGB(30, 30, 30),
		BorderColor3=Color3.fromRGB(255, 255, 255),
		TextColor3=Color3.fromRGB(47, 81, 136),
		TextStrokeTransparency=0,
		TextStrokeColor3=Color3.fromRGB(255, 255, 255),
		TextScaled=true,
		Text="z",
		Font="FredokaOne",
	})

	StartButton.Activated:Connect(function()
	end)

	Beep(1)
end

Init()