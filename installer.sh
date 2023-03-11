echo "This Wizard Will Install A Minecraft Server For You!"
echo "By doing this, you agree to Mojang's TOS."
echo "This should work on any linux computer including a raspberry pi!"
read -p "Do you agree and want to proceed? (y/n) " yn

case $yn in 
	y ) echo ok, we will proceed;;
	n ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac
rm mc
echo "Alright! Lets start! Please note that this will install a minecraft server on what you ran this file on. It is recomended that you do this in your desktop for simplicity."
echo "Ok, the base version will be 1.8 and viaversion will be installed. This is so all clients can connect and it won't take a toll on your computer. You can always change this!"

read -p "Do you agree and want to proceed? (y/n) " yn

case $yn in 
	y ) echo ok, we will proceed;;
	n ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac
echo "Now We'll Install It For You! The File Name Will Be Called [mc]."
mkdir mc
cd mc
wget https://api.papermc.io/v2/projects/paper/versions/1.8.8/builds/445/downloads/paper-1.8.8-445.jar
sudo apt update
sudo apt-get install openjdk-8-jdk
mv paper-1.8.8-445.jar server.jar
wget https://ci.viaversion.com/job/ViaVersion/664/artifact/build/libs/ViaVersion-4.5.1.jar
mv ViaVersion-4.5.1.jar drag-this-to-plugins.jar
wget https://download1076.mediafire.com/49bilzts85kgrLr0SLOOwrtHFn8B0ydQfXd-kwiL5CSvdn8VgtHbnhBshjeRauv58BW3IePKOXl3JZZakJNytiJMLeww5Q/cz7zxp4q9di6fmg/start.sh
echo "Updating Just To Be Safe :D"
sudo apt update
sudo apt upgrade
echo "IMPORTANT Files Are Downloaded! The Next Step Is To Install! We'll start your server once but from now on, run (bash start.sh)."
echo "Running This File Again My Break Your System! Next, run start.sh! read above!"
echo "You will need to agree to eula.txt. Change to YES. Then run bash start.sh!"
read -p "Do you want to start your server once? (y/n) " yn

case $yn in 
	y ) echo ok, we will proceed;;
	n ) echo exiting...;
		exit;;
	* ) echo invalid response;
		exit 1;;
esac
echo "Starting Server..."
echo "Please Agree To EULA.txt and Run Bash start.sh Next! Thanks for using our installer!"
sudo java -jar server.jar