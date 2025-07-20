--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88  
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 12 | Scripts: 0 | Modules: 0 | Tags: 0
local G2L = {}

-- StarterGui.goon hub
G2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("CoreGui"))
G2L["ScreenGui_1"].Name = "goon hub"
G2L["ScreenGui_1"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
G2L["ScreenGui_1"].ResetOnSpawn = false

-- StarterGui.goon hub.Main
G2L["Main_2"] = Instance.new("Frame", G2L["ScreenGui_1"])
G2L["Main_2"].Name = "Main"
G2L["Main_2"].BackgroundColor3 = Color3.fromRGB(69, 70, 76)
G2L["Main_2"].BorderSizePixel = 0
G2L["Main_2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
G2L["Main_2"].Position = UDim2.new(0.21094, 0, 0.05, 0)
G2L["Main_2"].Size = UDim2.new(0, 240, 0, 280)
G2L["Main_2"].Draggable = true
G2L["Main_2"].Active = true

-- StarterGui.goon hub.Main.Title
G2L["Title_3"] = Instance.new("TextLabel", G2L["Main_2"])
G2L["Title_3"].Name = "Title"
G2L["Title_3"].Text = "Goon Hub"
G2L["Title_3"].TextWrapped = true
G2L["Title_3"].TextScaled = true
G2L["Title_3"].BackgroundColor3 = Color3.fromRGB(0, 0, 0)
G2L["Title_3"].BorderSizePixel = 0
G2L["Title_3"].Size = UDim2.new(0, 240, 0, 24)
G2L["Title_3"].Draggable = true
G2L["Title_3"].Active = true

-- StarterGui.goon hub.Main.Title.UICorner
G2L["UICorner_4"] = Instance.new("UICorner", G2L["Title_3"])

-- StarterGui.goon hub.Main.Executor
G2L["Executor_5"] = Instance.new("TextBox", G2L["Main_2"])
G2L["Executor_5"].Name = "Executor"
G2L["Executor_5"].Text = ""
G2L["Executor_5"].CursorPosition = -1
G2L["Executor_5"].BorderSizePixel = 2
G2L["Executor_5"].TextWrapped = true
G2L["Executor_5"].TextSize = 18
G2L["Executor_5"].BackgroundColor3 = Color3.fromRGB(255, 195, 0)
G2L["Executor_5"].RichText = true
G2L["Executor_5"].FontFace =
    Font.new("rbxasset://fonts/families/Arial.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
G2L["Executor_5"].MultiLine = true
G2L["Executor_5"].PlaceholderText = "Script Here"
G2L["Executor_5"].Size = UDim2.new(0, 230, 0, 194)
G2L["Executor_5"].Position = UDim2.new(0.01667, 0, 0.09286, 0)
G2L["Executor_5"].BorderColor3 = Color3.fromRGB(0, 0, 0)

-- StarterGui.goon hub.Main.Executor.UICorner
G2L["UICorner_6"] = Instance.new("UICorner", G2L["Executor_5"])

-- StarterGui.goon hub.Main.UIStroke
G2L["UIStroke_7"] = Instance.new("UIStroke", G2L["Main_2"])
G2L["UIStroke_7"].Thickness = 2

-- StarterGui.goon hub.Main.UICorner
G2L["UICorner_8"] = Instance.new("UICorner", G2L["Main_2"])

-- StarterGui.goon hub.Main.Execute
G2L["Execute_9"] = Instance.new("TextButton", G2L["Main_2"])
G2L["Execute_9"].Name = "Execute"
G2L["Execute_9"].Text = "Execute"
G2L["Execute_9"].BorderSizePixel = 0
G2L["Execute_9"].BackgroundColor3 = Color3.fromRGB(0, 255, 0)
G2L["Execute_9"].Size = UDim2.new(0, 166, 0, 40)
G2L["Execute_9"].Position = UDim2.new(0.00833, 0, 0.81429, 0)

-- StarterGui.goon hub.Main.Execute.UICorner
G2L["UICorner_a"] = Instance.new("UICorner", G2L["Execute_9"])

-- StarterGui.goon hub.Main.Clear
G2L["Clear_b"] = Instance.new("TextButton", G2L["Main_2"])
G2L["Clear_b"].Name = "Clear"
G2L["Clear_b"].Text = "Clear"
G2L["Clear_b"].RichText = true
G2L["Clear_b"].BorderSizePixel = 0
G2L["Clear_b"].BackgroundColor3 = Color3.fromRGB(255, 0, 0)
G2L["Clear_b"].Size = UDim2.new(0, 60, 0, 40)
G2L["Clear_b"].Position = UDim2.new(0.725, 0, 0.81429, 0)

-- StarterGui.goon hub.Main.Clear.UICorner
G2L["UICorner_c"] = Instance.new("UICorner", G2L["Clear_b"])

-- Buttons Logic

G2L["Execute_9"].MouseButton1Click:Connect(
    function()
        local code = G2L["Executor_5"].Text
        if code and code ~= "" then
            local success, err =
                pcall(
                function()
                    local f = loadstring(code)
                    if f then
                        f()
                    else
                        warn("Loadstring error: " .. tostring(err))
                    end
                end
            )
            if not success then
                warn("Runtime error: " .. tostring(err))
            end
        end
    end
)

G2L["Clear_b"].MouseButton1Click:Connect(
    function()
        G2L["Executor_5"].Text = ""
    end
)

return G2L["ScreenGui_1"], require
