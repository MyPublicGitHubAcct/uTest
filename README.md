# uTest


## The local environment


### Homebrew

Install

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Common commands

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

### Python

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

### Rancher Desktop (SUSE Docker alternative)

Install [Rancher](https://rancherdesktop.io) to allow use of Docker commands. Use the [Manual](https://docs.rancherdesktop.io).


#### The Docker file will install

- Linux - latest Ubuntu
- wget, make, git, build-essential, cpputest
- ARM Toolchain - at this time, 14.2.rel1
- Python3


## Docker information


### Helpful Commands


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


## Hold for later

These are probably the include and library files to link to..

-I/usr/local/include
-L/usr/local/lib -lstdc++ -lCppUTest -lCppUTestExt


