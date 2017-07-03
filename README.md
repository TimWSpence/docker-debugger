 [![Build Status](https://travis-ci.org/TimWSpence/docker-debugger.svg?branch=master)](https://travis-ci.org/TimWSpence/docker-debugger)
# docker-debugger
A [docker image](https://hub.docker.com/r/timwspence/debugger/) with all the standard process/networking debug tools.
Based on arch so the image should be relatively small.

Currently the following packages are installed:
- curl
- tcpdump
- wireshark-cli
- nmap (includes ncat - arguably the best of the netcat implementations)
- ngrep
- lsof
- strace

## Usage
To debug another container:
```
docker run --privileged -ti --pid=container:<other  container name> --network=container:<other container name> timwspence/docker-debugger
```

To debug a process on the host:
```
docker run --privileged -ti --pid=host --network=host timwspence/docker-debugger```
