# pandora-winagent-cross-compile
Docker image creation files for Pandora FMS Windows agent cross-compilation.  
This is only for creating 64bit binary.

# How to create docker image  
`docker build -t <image name> .`

# How to build Pandora FMS Windows agent binary using created docker image
1. Get pandorafms_agent source from Github by downloading .zip or `git clone`  
<https://github.com/pandorafms/pandorafms>

2. Run docker by specifying the extracted directory like this  
`docker run --rm -v <extracted directory>/pandora_agent/win32:/win32 <created image name>`  
After execution, you can find `PandoraAgent.exe` in win32 directory.
