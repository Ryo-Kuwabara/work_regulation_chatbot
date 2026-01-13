#!/bin/bash
# Streamlit ReAct ChatBot 起動スクリプト

echo "🚀 Streamlit ReAct PDF ChatBot を起動します..."
echo "📂 作業ディレクトリ: $(pwd)"

# 仮想環境のアクティベート確認
if [ -f "env/bin/activate" ]; then
    echo "✅ 仮想環境が見つかりました"
else
    echo "❌ 仮想環境が見つかりません。env/bin/activateを確認してください"
    exit 1
fi

# Streamlitのインストール確認とインストール
echo "📦 Streamlitの確認・インストール..."
env/bin/pip install streamlit

# Streamlitアプリの起動
echo "🌐 Streamlitアプリを起動中..."
echo "📱 ブラウザで http://localhost:8501 にアクセスしてください"
env/bin/streamlit run streamlit_app.py --server.port 8501