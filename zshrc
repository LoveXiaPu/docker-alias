# ------------------------------------
# Docker alias and function
# ------------------------------------

# Get latest container ID
alias dkl="docker ps -l -q"

# Get container process
alias dkps="docker ps"

# Get process included stop container
alias dkpa="docker ps -a"

# Get images
alias dki="docker images"

# Get container IP
alias dkip="docker inspect --format '{{ .NetworkSettings.IPAddress }}'"

# Run deamonized container, e.g., $dkd base /bin/echo hello
alias dkrd="docker run -d -P"

# Run interactive container, e.g., $dki base /bin/bash
alias dkri="docker run -i -t -P"

# Execute interactive container, e.g., $dex base /bin/bash
alias dkex="docker exec -i -t"
alias dkstart="docker start"
alias dkstop="docker stop"
alias dkc="docker commit"
alias dka="docker attach"

# Stop all containers
dstop() { docker stop $(docker ps -a -q); }

# Remove all containers
drm() { docker rm $(docker ps -a -q); }

# Stop and Remove all containers
#alias drmf='docker stop $(docker ps -a -q) && docker rm $(docker ps -a -q)'

# Remove all images
#dri() { docker rmi $(docker images -q); }

# Dockerfile build, e.g., $dbu tcnksm/test
dbu() { docker build -t=$1 .; }

# Show all alias related docker
dkalias() { alias | grep 'docker' | sed "s/^\([^=]*\)=\(.*\)/\1 => \2/"| sed "s/['|\']//g" | sort; }
