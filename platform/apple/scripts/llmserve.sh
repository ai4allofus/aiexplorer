#!/bin/zsh
source ~/.zshrc
micromamba create -n mlcserve python=3.11 -c conda-forge -y
micromamba run -n mlcserve python3 -m pip install --pre -U -f https://mlc.ai/wheels mlc-llm-nightly mlc-ai-nightly
MODEL=gemma-2b-it-q4f16_1
if [ -z $1 ];  then
 echo "using default gemma model";
 else
  MODEL=$1;
  echo "using model $MODEL";
fi
micromamba run -n mlcserve mlc_llm serve "HF://mlc-ai/$MODEL-MLC" --port 8000 --host 0.0.0.0 
