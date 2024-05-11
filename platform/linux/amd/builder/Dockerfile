# NOTE: This Dockerfile is based on ROCm 5.7
FROM rocm/dev-ubuntu-22.04:5.7-complete

ENV MLC_PATH /mlcllm

# setup python 3 and pip, load the mlc-ai nightlies

RUN apt update                      && \
    apt install --yes  python3.11 pip git git-lfs  && \
    pip install --pre -U -f https://mlc.ai/wheels \
    mlc-llm-nightly-rocm57 mlc-ai-nightly-rocm57   &&\
    mkdir -p $MLC_PATH 

VOLUME ${MLC_PATH} 

WORKDIR ${MLC_PATH}

ENTRYPOINT ["mlc_llm"]

EXPOSE 8000

CMD ["serve", "HF://mlc-ai/gemma-2b-it-q4f16_1-MLC","--port","8000","--host","0.0.0.0"]
