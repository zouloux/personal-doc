echo "This script allow you to recover correct chmod/chown for current directory recursively."
echo "It can be used if you transfered data to another disk and chmod has been lost."
echo ""

# We need super user access because 644 can lock us out
if [ "$EUID" -ne 0 ]
  then echo "Please run as root with sudo.\n"
  exit
fi

# Ask if sure
read -p "Warning, this script can cause some serious issues in this folder. Continue ? (y/n) " answer
if [ "$answer" == "${answer#[Yy]}" ] ;then exit; fi

# First, reset to normal chmod. Read+write for user, read for others
chmod -R 644 .

# Select folders and allow exec for user and others
find . -type d -print0 | xargs -0 chmod 755

# Select .sh files and allow exec
find . -type f -name "*.sh" -print0 | xargs -0 chmod 755

echo "Done\n"

# Ask if chown also for current user
currentUser=$(logname)
read -p "Do you want to patch chown for current user ? $currentUser (y/n) " answer
if [ "$answer" == "${answer#[Yy]}" ] ;then exit; fi

# Alter current user for directory
chown -R $currentUser .

echo "Done"
