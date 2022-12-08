if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/Mujahidul09/AdvF9VideosBot /AdvF9VideosBot
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AdvF9VideosBot
fi
cd /AdvF9VideosBot
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
