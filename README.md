# readmoney

readmoney는 한국 단위로 돈을 세어 주는 셸 스크립트입니다.

## 사용법

사용법이 매우 간단하여 예시로 대체합니다.

```sh
$ readmoney 1234567890
12억 3456만 7890원
```

## 설치방법

* `readmoney`는 [rev](https://www.freebsd.org/cgi/man.cgi?query=rev&sektion=1&apropos=0&manpath=freebsd)에 의존성이 있습니다만 macOS나 Linux 계열 운영체제에 기본으로 설치되어 있습니다.

1. `git clone https://github.com/datalater/readmoney.git`
2. `cd readmoney`
3. `./install.sh`
4. `.bashrc`나 `.bash_profile`에 `[ -f ~/.local/bin/readmoney.sh ] && source ~/.local/bin/readmoney.sh`를 추가하세요.

> `zsh`을 사용한다면 `.zshrc`에 추가하세요.
