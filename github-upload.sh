export $(egrep -v '^#' .env | xargs)

ENDPOINT="https://api.github.com/repos/khejo/voice-assets-source/releases"
: '
curl \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Authorization: token ${GITHUB_AUTH_TOKEN}" \
  $ENDPOINT \
  -d '{"tag_name":"voice-assets-release"}'
'