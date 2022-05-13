![banner](assets/banner.png)

# About
Vendr SDK on ROBLOX

The Vendr OpenAPI Wrapper makes it easy for developers to interact with our ROBLOX Hub

- Simple and easy to use
- 100% of the Vendr API

With that its now been brought to Luau.

# Install

*with Roblox Marketplace*

`None`


# Usage

First you will need to create a Parcel object


```lua
local Vendr = require(path/to/vendr)
```

Then, you may now use these features!

**GetUserInformation**

`self.GetUserInformation(method : string, id : number)`

```lua
local Vendr = require(path/to/vendr)

Vendr.GetUserInformation('roblox',"000000")

```

**GetLinkCode**

`self.GetLinkCode(robloxID: number)`

```lua
local Vendr = require(path/to/vendr)

Vendr.GetLinkCode(robloxID: number)
```

**LinkDiscordAccount**

`self.LinkDiscordAccount(LinkCode : string, discordID :  string)`

```lua
local Vendr = require(path/to/vendr)

Vendr.LinkDiscordAccount('8464',"80247589956346753")

```
#

<img src='./assets/API.png' width="400" height="50">


#
**GetHubInfo**

`self.GetHubInfo(apiKey : number)`

```lua
local Vendr = require(path/to/vendr)

Vendr.GetHubInfo('API_KEY')
```

**GetHubProducts**

`self.GetHubProducts(apiKey : number)`

```lua 
local Vendr = require(path/to/vendr)

Vendr.GetHubProducts('API_KEY')

```

**GetUserLicense**

`self.GetUserLicense(hubID : string, method :  string, id : number, productname : number)`

```lua
local Vendr = require(path/to/vendr)

Vendr.GetUserLicense('HUBID','ROBLOX','845674567365734','Airport Set')
```

**CreateUserLicense**

`self.CreateUserLicense(method :  string, id : number, DeliveryOption : boolean, apiKey:string)`

```lua
local Vendr = require(path/to/vendr)

Vendr.CreateUserLicense('ROBLOX',845674567365734,false,'API_KEY')
```

That is the end of the documentation.

v0.0.2 will release soon with bug fixes (if there are any).



