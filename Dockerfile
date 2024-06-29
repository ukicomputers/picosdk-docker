FROM python

RUN apt update
RUN apt install -y git \
                   cmake \
                   gcc-arm-none-eabi
RUN rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/raspberrypi/pico-sdk.git
ENV PICO_SDK_PATH=/pico-sdk
RUN git -C /pico-sdk submodule update --init

CMD ["bash"]
