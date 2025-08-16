# 1. Make a folder for your server
mkdir forge-1.20.1
cd forge-1.20.1

# 2. Download Forge installer (1.20.1 - 47.4.6)
curl -O https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.1-47.4.6/forge-1.20.1-47.4.6-installer.jar

# 3. Run the Forge installer in server mode
java -jar forge-1.20.1-47.4.6-installer.jar --installServer

# 4. Accept Minecraft EULA
echo "eula=true" > eula.txt

# 5. Start Forge server (this will create all configs)
java -Xmx16G -Xms2G -jar forge-1.20.1-47.4.6-server.jar nogui
