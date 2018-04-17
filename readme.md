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
alias tig="docker run --rm -v $(pwd):/wd -it ivoputzer/tig $@"
```

### add alias to your fish config
```fish
alias tig "docker run --rm -v (pwd):/wd -it ivoputzer/tig $argv"
```

### add alias to your dos prompt
```dos
doskey tig=docker run --rm -v %cd%:/wd -it ivoputzer/tig $*
```
