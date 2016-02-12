#!/bin/bash

xbuild pusher-dotnet-server.sln /t:clean
nuget restore pusher-dotnet-server.sln
xbuild pusher-dotnet-server.sln /t:rebuild /p:Configuration=Release
nuget update -self
nuget pack PusherServer\PusherServer.csproj -Prop Configuration=Release