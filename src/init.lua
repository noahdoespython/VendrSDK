local SDK = {}

SDK.__index = SDK
local BASE_URL = "https://api.onpointrblx.com/vendr/v1/";
local fetch = game:GetService('HttpService')


--[[

local function request()
	local response = HttpService:RequestAsync(
		{
			Url = "http://httpbin.org/post",  -- This website helps debug HTTP requests
			Method = "POST",
			Headers = {
				["Content-Type"] = "application/json"  -- When sending JSON, set this!
			},
			Body = HttpService:JSONEncode({hello = "world"})
		}
	)

]]

function SDK.GetUserInformation(method : string, id : number)
	local URL = BASE_URL .. "users/getinfo/"..method.."/"..id; -- /users/getinfo/{ClientType}/{Identification}
	local response = fetch:RequestAsync(
		{
			Url = URL,
			Method = "GET"
		}
	);
	return print(response)
end

function SDK.GetLinkCode(robloxID: number)
	local URL = BASE_URL .. "users/link/"..robloxID; -- /users/link/{RobloxId}
	local response = fetch:RequestAsync(
		{
			Url = URL,
			Method = "GET"
		}
	);
	return print(response)
end



function SDK.LinkDiscordAccount(LinkCode : string, discordID :  string)
	local URL = BASE_URL .. "/users/linkaccount/"..LinkCode.."/"..discordID -- /users/linkaccount/{LinkCode}/{DiscordId}
	local response = fetch:RequestAsync(
		{
			Url = URL,
			Method = "POST"
		}
	);

	return print(response)
end

function SDK.GetHubInfo(apiKey : number)
	local URL = BASE_URL .. "hubs/getinfo/?key="..apiKey -- /hubs/getinfo/?key=(apikey)
	local response = fetch:RequestAsync(
		{
			Url = URL,
			Method = "GET"
		}
	);
	return print(response)

end

function SDK.GetHubProducts(apiKey : number)
	local URL = BASE_URL .. "hubs/getproducts/?key="..apiKey -- /hubs/getproducts/?key=(apikey)
	local response = fetch:RequestAsync(
		{
			Url = URL,
			Method = "GET"
		}
	);
	return print(response)

end

--[[

HubId	string	Hub Id assigned to a hub when made, also found in the !products command.
ClientType	string	"roblox" or "discord" should be the only thing placed in this field.
Identification	integer	The identification of the user.


]]

function SDK.GetUserLicense(hubID : string, method :  string, id : number, productname : number)
	
	local URL = BASE_URL .. 'licences/getlicence/'..hubID..'/'..method..'/'..id..'/?productName="'..productname..'"' -- /licences/getlicence/:HubId/:ClientType/:Identification/?productName=("productName")
	local response = fetch:RequestAsync(
		{
			Url = URL,
			Method = "GET"
		}
	);
	return print(response)

end

function SDK.CreateUserLicense(hubID : string, method :  string, id : number, productname : number, apiKey:string)

	local URL = BASE_URL .. 'licences/getlicence/'..hubID..'/'..method..'/'..id..'/?key='..apiKey..'&productName="'..productname..'"' -- /licences/createlicence/:ClientType/:Identification/?key=(apikey)&productName=("productname")
	local response = fetch:RequestAsync(
		{
			Url = URL,
			Method = "POST"
		}
	);
	return print(response)

end






return SDK
