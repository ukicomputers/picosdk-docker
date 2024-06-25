# picosdk-docker
Dockerfile for running interactive development for RP2040 with Pico SDK. <br>
It helps you by isolating your local machine from installing and waiting for bunch of "crap" dependencies and software, maximizing your productivity, because it works right away, without requiring things for you to set up.

## Setup
To start this Docker container image, you just can do:
```bash
docker run -it ukicomputers/picosdk-docker
```
This will open new terminal with already setup `PICO_SDK_PATH` enviroment variable, ready to go for compilation of your program. <br>
If you want to access your local computer (e.g. home directory), you may want to run this command:
```bash
docker run -it -v $(eval echo ~$USER):/localhome ukicomputers/picosdk-docker
```
