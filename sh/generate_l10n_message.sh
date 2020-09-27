#!/usr/bin/env bash

PASS="lib/l10n"

# arbファイル(文言リソースのJSONファイル)の作成
flutter packages pub run intl_translation:extract_to_arb \
    --locale=messages \
    --output-dir=${PASS} \
    ${PASS}/messages.dart

# 生成された雛形のintl_messages.arbをコピーしてintl_ja.arbを作成
# 警告抑制のため、@@localeだけ指定
# 言語リソースが見つからなかったらIntl.messageに指定されている文言が使われるので
# デフォルト文言のarbは不要かも
cat ${PASS}/intl_messages.arb | \
    sed -e 's/"@@locale": "messages"/"@@locale": "ja"/g' > \
    ${PASS}/intl_ja.arb

# このタイミングで、必要に応じて、メインの言語以外のarbファイルを用意
cat ${PASS}/intl_messages.arb | \
    sed -e 's/"@@locale": "messages"/"@@locale": "en"/g' > \
    ${PASS}/intl_en.arb

# arbファイル群から多言語対応に必要なクラスを生成
flutter packages pub run intl_translation:generate_from_arb \
    --output-dir=${PASS} \
    --no-use-deferred-loading \
    ${PASS}/messages.dart \
    ${PASS}/intl_*.arb
