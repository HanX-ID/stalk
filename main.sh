#!/bin/bash

# Jika gak ada argumen
if [ -z "$1" ]; then
  echo " "
  echo "Gunakan list argumen berikut :"
  echo " "
  echo "  -t <username>   # TikTok"
  echo "  -i <username>   # Instagram"
  echo "  -g <username>   # GitHub"
  echo "  -e <email>      # Email"
  echo "  -d <nomor>      # Dana"
  echo "  -o <nomor>      # Ovo"
  echo "  -s <nomor>      # ShopeePay"
  echo "  -go <nomor>     # Gopay"
  exit 1
fi

# TikTok
if [ "$1" == "-t" ]; then
  if [ -z "$2" ]; then
    echo "Gunakan: bash main.sh -t <username>"
    exit 1
  fi
  tiktok=$2
  curl -s "https://vapis.my.id/api/tt-stalk?username=$tiktok" | jq .

# Instagram
elif [ "$1" == "-i" ]; then
  if [ -z "$2" ]; then
    echo "Gunakan: bash main.sh -i <username>"
    exit 1
  fi
  instagram=$2
  curl -s "https://vapis.my.id/api/ig-stalk?username=$instagram" | jq .

# Github
elif [ "$1" == "-g" ]; then
  if [ -z "$2" ]; then
    echo "Gunakan: bash main.sh -g <username>"
    exit 1
  fi
  github=$2
  curl -s "https://vapis.my.id/api/github-userv2?username=$github" | jq .

# Gmail
elif [ "$1" == "-e" ]; then
  if [ -z "$2" ]; then
    echo "Gunakan: bash main.sh -e <email>"
    exit 1
  fi
  email=$2
  curl -s "https://fastrestapis.fasturl.cloud/search/gmail?email=$email" | jq .
  
# Dana
elif [ "$1" == "-d" ]; then
  if [ -z "$2" ]; then
    echo "Gunakan: bash main.sh -d <nomor>"
    exit 1
  fi
  dana=$2
  curl -s "https://api.siputzx.my.id/api/check/dana?account_number=$dana" | jq .
  
# Gopay
elif [ "$1" == "-go" ]; then
  if [ -z "$2" ]; then
    echo "Gunakan: bash main.sh -g <nomor>"
    exit 1
  fi
  gopay=$2
  curl -s "https://api.siputzx.my.id/api/check/gopay?account_number=$gopay" | jq .

# Ovo
elif [ "$1" == "-o" ]; then
  if [ -z "$2" ]; then
    echo "Gunakan: bash main.sh -o <nomor>"
    exit 1
  fi
  ovo=$2
  curl -s "https://api.siputzx.my.id/api/check/ovo?account_number=$ovo" | jq .
  
# ShopeePay
elif [ "$1" == "-s" ]; then
  if [ -z "$2" ]; then
    echo "Gunakan: bash main.sh -s <nomor>"
    exit 1
  fi
  shopeepay=$2
  curl -s "https://api.siputzx.my.id/api/check/shopeepay?account_number=$shopeepay" | jq .
  fi