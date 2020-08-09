export $(egrep -v '^#' .env | xargs)

./third_party/dropbox_uploader.sh download voice_assets_source.zip

$TIMESTAMP=$(date +%s)
7z x voice_assets_source.zip -ovoice_assets_${TIMESTAMP}
rm voice_assets_source.zip