case ${PLAYER_EVENT} in
change|changed)
  STATE="playing"
  ;;
start|started)
  STATE="playing"
  ;;
stop|stopped)
  STATE="idle"
  ;;
playing)
  STATE="playing"
  ;;
paused)
  STATE="paused"
  ;;
preloading)
  STATE="playing"
  ;;
volume_set)
  ;;
*)
  ;;
esac

if [ -n "${STATE}" ]; then
curl -s \
  -H "Authorization: Bearer ${SUPERVISOR_TOKEN}" \
  -H "Content-Type: application/json" \
  -XPOST \
  http://supervisor/core/api/states/media_player.spotify_addon \
  -d "{\"state\":\"${STATE}\"}"
fi
