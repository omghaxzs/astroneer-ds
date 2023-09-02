# install ds
/usr/games/steamcmd +@sSteamCmdForcePlatformType windows +@sSteamCmdForcePlatformBitness 64 +force_install_dir /data +login anonymous +app_update 728470 +quit

# make the thing if its not already
mkdir -p /data/Astro/Saved/Config/WindowsServer

echo "[URL]\nPort=$SERVERPORT" > /data/Astro/Saved/Config/WindowsServer/Engine.ini

cp /static/AstroServerSettings.ini /data/Astro/Saved/Config/WindowsServer/AstroServerSettings.ini
sed -i "s/%%MAXFRAMERATE%%/$MAXFRAMERATE/g" /data/Astro/Saved/Config/WindowsServer/AstroServerSettings.ini
sed -i "s/%%PUBLICIP%%/$PUBLICIP/g" /data/Astro/Saved/Config/WindowsServer/AstroServerSettings.ini
sed -i "s/%%OWNERNAME%%/$OWNERNAME/g" /data/Astro/Saved/Config/WindowsServer/AstroServerSettings.ini
sed -i "s/%%OWNERGUID%%/$OWNERGUID/g" /data/Astro/Saved/Config/WindowsServer/AstroServerSettings.ini
sed -i "s/%%SERVERPASSWORD%%/$SERVERPASSWORD/g" /data/Astro/Saved/Config/WindowsServer/AstroServerSettings.ini
sed -i "s/%%SERVERNAME%%/$SERVERNAME/g" /data/Astro/Saved/Config/WindowsServer/AstroServerSettings.ini

wine /data/AstroServer.exe
