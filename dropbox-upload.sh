export $(egrep -v '^#' .env | xargs)

7z a voice_assets_source.zip voice_assets 
./third_party/dropbox_uploader.sh upload voice_assets_source.zip voice_assets_source.zip
rm voice_assets_source.zip