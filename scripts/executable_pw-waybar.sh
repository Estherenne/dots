if [[ $(~/scripts/pw.sh status) == "unlocked" ]]
then
  echo "󰌿"
elif [[ $(~/scripts/pw.sh status) == "locked" ]]
then
  echo ""
fi
