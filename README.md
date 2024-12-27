# uTest


## The local environment


### Local: Homebrew


#### Install

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```


#### Common commands

```zsh
# Display the version of Homebrew.

brew --version

# Print Help Information

brew help

# Print Help Info for a brew command

brew help <sub-command>

# Check system for potential problems.

brew doctor

# Fetch latest version of homebrew and formula

brew update

# Show formulae with an updated version available

brew outdated

# Upgrade all outdated and unpinned brews

brew upgrade

# Upgrade only the specified brew

brew upgrade <formula>

# Prevent the specified formulae from being upgraded

brew pin <formula>

# Allow the specified formulae to be upgraded.

brew unpin <formula>

# List all the installed formulae.

brew list

# Display all locally available formulae for brewing.

brew search

# Perform a substring search of formulae names for brewing.

brew search <text>

# Display information about the formula.

brew info <formula>

# Install the formula.

brew install <formula>

# Uninstall the formula.

brew uninstall <formula>

# Remove older versions of installed formulae.

brew cleanup

# Remove older versions of specified formula.

brew cleanup <formula>

# Display all formula that will be removed (dry run)

brew cleanup -n
```


### Local: CppUTest


#### Install

This will put CppUTest in ```/opt/homebrew/Cellar/cpputest/```

```zsh
brew install cpputest
```


### Local: Python

__1. Install XCode Command Line Tools__


```zsh
xcode-select --install
```

__2. Install HomeBrew__

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade
```

__3. Install Pyenv__

```zsh
# Install

brew install openssl readline sqlite3 xz zlib tcl-tk@8
brew install pyenv pyenv-virtualenv

# Initalise pyenv and pyenv-virtualenv - place the following lines in .zshrc in your home directory.

eval "$(pyenv init -)"
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi
```

__4. Install your desired version of python__

```zsh
# To list all available python versions by running.

pyenv install -l

# To install

pyenv install 3.13.3

# To see the versions available...

pyenv versions
```

__5. Create a virtualenv__

```zsh
# Create a virtualenv
pyenv virtualenv 3.13.3 myproject

# Activate the environment

pyenv local myproject

# Delete the environment

pyenv virtualenv-delete myproject
```

__6. Install packages__

__TODO__

```zsh
pyenv local mypython
pip3 install STUFF
```


### Local: Rancher Desktop (SUSE Docker alternative)

Install [Rancher](https://rancherdesktop.io) to allow use of Docker commands. Use the [Manual](https://docs.rancherdesktop.io).


## The Container / GitHub Actions

__TODO__


### The Docker file will install

- Linux - latest Ubuntu
- wget, make, git, build-essential, cpputest
- ARM Toolchain - at this time, 14.2.rel1
- Python3


### Helpful Docker Commands


```zsh
# To make an image
docker build -t my-image .

# To list existing images
docker images

# Create a container for the image
docker create -i -t  --entrypoint="/bin/bash" --name my-container my-image

# List all containers
docker container ls -a

# Start a container
docker start -i my-container

# Leave the container
exit

# Remove a container
docker rm my-container

# Delete an image
docker rmi my-image
```


### Compiling tests in the container

__TODO__


## Hold for later - random notes

These are probably the include and library files to link to..

-I/usr/local/include
-L/usr/local/lib -lstdc++ -lCppUTest -lCppUTestExt

/opt/homebrew/Cellar/cpputest/4.0/include
/opt/homebrew/Cellar/cpputest/4.0/lib

CPPUTEST_HOME - define in Makefile for each platform in each test/folder

/opt/cpputest/build/MakefileWorker.mk


## Resources

[Getting Started with Docker](https://www.digikey.com/en/maker/projects/getting-started-with-docker/aa0d4c708c274ffd975f3b427e5c0ce6)

[video 1](https://youtu.be/1nxGcfIm-TU?si=HM5iCnvCwbnJ7ML0)

[Getting Started with GitHub Actions](https://www.digikey.com/en/maker/projects/getting-started-with-github-actions/078a1db505844a3ea9354bb0499973f4)

[video 2](https://youtu.be/8pyqbYDYkRs?si=H2iZdcAHYVBOgaNU)

[Writing C/C++ Unit Tests with CppUTest](https://www.digikey.com/en/maker/projects/writing-cc-unit-tests-with-cpputest/7776121323b74ae7b20725cf06163537)

[video 3](https://youtu.be/lZWFmEhIhpY?si=BvM5IAiuqC6HMMUD)

[Continuous Deployment Using Docker and GitHub Actions](https://www.digikey.com/en/maker/projects/continuous-deployment-using-docker-and-github-actions/d9d18e19361647dbb49070ce6f96c2ea)

[video 4](https://youtu.be/3ccQ_0YeZX4?si=j-dleB22AsZ9H_w3)

