bold=$(tput bold)
normal=$(tput sgr0)

echo "This script allow you to recover correct ${bold}chmod / chown${normal} for current directory recursively."
echo "It can be used if you transfered data to another disk and chmod has been lost."
echo ""
echo "${bold}This will :${normal}"
echo "1. Reset all files to 644 (read/write for user, read for others)"
echo "2. Allow execution of directories for everybody (755)"
echo "3. Allow exection for all .sh and all files with starting with a shebang (#!)"
echo "4. It will ask you if you also need to patch current user with chown"
echo ""

# We need super user access because 644 can lock us out
if [ "$EUID" -ne 0 ]
  then echo "> Please ${bold}run as root${normal} or sudo.\n"
  exit
fi

# Ask if sure
read -p "> Warning, this script can cause ${bold}some serious issues${normal} in this folder. Continue ? (y/n) " answer
if [ "$answer" == "${answer#[Yy]}" ] ;then exit; fi

# First, reset to normal chmod. Read+write for user, read for others
printf '#';
chmod -R 644 .
printf '#####';

# Select folders and allow exec for user and others
find . -type d -print0 | xargs -0 chmod 755
printf '#####';

# Select .sh files and allow exec
find . -type f -name "*.sh" -print0 | xargs -0 chmod +x
printf '#####';

for i in `find . -type f`;
do
  t=$(head -n 1 $i | grep "#!");
  if [ $? -eq 0 ]; then
    printf '#';
    chmod +x $i
  fi
done

echo "> Done"

# Ask if chown also for current user
currentUser=$(logname)
read -p "> Do you want to patch ${bold}chown${normal} for current user ? ${bold}$currentUser${normal} (y/n) " answer
if [ "$answer" == "${answer#[Yy]}" ] ;then exit; fi

# Alter current user for directory
chown -R $currentUser .

echo "> Done"
