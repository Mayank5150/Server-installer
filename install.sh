# Update packages
apt update && apt upgrade -y

# Install Java 17 (Forge 1.20.1 requires Java 17+)
apt install openjdk-17 -y

# Make server folder
mkdir forge-1.20.1 && cd forge-1.20.1

# Download Forge 1.20.1 (build 47.4.6) installer
wget https://maven.minecraftforge.net/net/minecraftforge/forge/1.20.1-47.4.6/forge-1.20.1-47.4.6-installer.jar

# Run installer
java -jar forge-1.20.1-47.4.6-installer.jar --installServer

# (⚠️ Before running, edit eula.txt to accept the license: change eula=false to eula=true)

# Start server with 2GB min, 16GB max RAM
java -Xms2G -Xmx16G -jar forge-1.20.1-47.4.6-server.jar nogui
