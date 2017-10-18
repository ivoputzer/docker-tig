docker-tig
===
utility container for [tig](https://github.com/jonas/tig).

### build image
```sh
docker build -t tig .
```

### pull image
```sh
docker pull ivoputzer/tig:latest
```

### add alias to your shell profile
```sh
alias tig="docker run --rm -v $(pwd):/wd -i ivoputzer/tig $@"
```

### add alias to your fish config
```fish
alias tig "docker run --rm -v (pwd):/wd -i ivoputzer/tig $argv"
```
