if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/AM-ROBOTS/AutoAnura /AutoAnura
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /AutoAnura
fi
cd /AutoAnura
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
