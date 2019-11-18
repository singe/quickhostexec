# quickhostexec

Image for executing a quick script on the Docker host, most commonly for executing a simple `sh`.

It won't let you reference files, for that check singelet/hostexec.

## Usage

Run as a privileged container passing in the host's PID namespace, like this:

`docker run -it --rm --privileged --pid=host singelet/quickhostexec <command>`


## Alternatives

You could do the same with justincormack/nsenter1 which is much smaller using a simple static nsenter binary and a scratch base image.

If you want to execute a script, check singelet/hostexec as a pattern. 

## How it works

It uses nsenter to switch to the namespaces of PID 1. 

It can't execute files copied to the container, as the host's view of the subcontainer's files is limited.
