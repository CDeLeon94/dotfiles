sketchybar --set $NAME \
  label="Loading..." \
  icon.color=0xff5edaff

# fetch weather data
LOCATION="~Portland"
REGION="US"
LANG="EN"

# Line below replaces spaces with +
LOCATION_ESCAPED="${LOCATION// /+}+${REGION// /+}"
WEATHER_JSON=$(curl -s "https://v2.wttr.in/$LOCATION_ESCAPED?0pq&format=j1&lang=$LANG")

# Fallback if empty
if [ -z $WEATHER_JSON ]; then
  sketchybar --set $NAME label="$LOCATION"
  return
fi

TEMPERATURE=$(echo $WEATHER_JSON | jq '.current_condition[0].FeelsLikeF' | tr -d '"')
WEATHER_DESCRIPTION=$(echo $WEATHER_JSON | jq '.current_condition[0].weatherDesc[0].value' | tr -d '"' | sed 's/\(.\{16\}\).*/\1.../')

sketchybar --set $NAME \
  label="$TEMPERATURE$(echo '°')F • $WEATHER_DESCRIPTION"
