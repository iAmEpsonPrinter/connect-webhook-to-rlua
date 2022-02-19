local webhook = "put your webhook url in here!"
local http = game:GetService("HttpService")



game:GetService("Players").PlayerAdded:Connect(function(player)
	

	local data = {
		["embeds"] = {{
			["title"] = "A Player has joined the game!",
			["description"] = player.Name.." has entered.",
			["color"] = tonumber(0x0000ff),
			
			["fields"] = {
				
				{
					
				["name"] = "This is a test",
				["value"] = "this is another test",
				["inline"] = true,
					
					
					
				}
				
				
			},
			
			["footer"] = {
				["text"] = "put anything here!"
			}
			
			
			
		}}
	}
	
	local data = http:JSONEncode(data) --converts the lua table into json 
	http:PostAsync(webhook, data) --sends the request to the url
	
end)
