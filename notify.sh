#!/bin/bash

TELEGRAM_API_TOKEN="7453817556:AAGRCKpuSaGVJb_v6f1NlSE4Fyl8ehJUqvc"
CHAT_ID="-1002153782935"

echo "Starting notify.sh script"
echo "TELEGRAM_API_TOKEN: $TELEGRAM_API_TOKEN"
echo "CHAT_ID: $CHAT_ID"

URL="https://api.telegram.org/bot$TELEGRAM_API_TOKEN/sendMessage"
TEXT="Ликуйте, мои сладкие пирожки, я пушу: $CI_PROJECT_NAME%0ABranch: $CI_COMMIT_REF_NAME%0AНе забудь кланг формат и ликсы проверить: $CI_COMMIT_MESSAGE%0ACommit URL: $CI_PROJECT_URL/commit/$CI_COMMIT_SHA"

echo "Sending message to Telegram"
curl -s -d "chat_id=$CHAT_ID&disable_web_page_preview=1&text=$TEXT" $URL > /dev/null

echo "notify.sh script finished"