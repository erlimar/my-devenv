# my-devenv

Este é meu ambiente de desenvolvedor. Tenho aqui alguns scripts/instruções
para instalar alguns programas base, além de alguns arquivos de customização
(como `dotfiles`). Tento separar tudo por tipo de sistema, porque às vezes
estou usando Windows, macOS ou Linux, e quero manter pelo menos a base sempre
disponível em qualquer um deles.

## Setup zero

Antes de mais anda, vou precisar pelo menos do Git, e o resto está aqui no
repositório. Então instale o git caso não o tenha, ou se o mesmo estiver em
uma versão anterior a `v2.32.0`.

Veja as instruções em https://git-scm.com/download

Com o git já no sistema clone este repositório para sua pasta pessoal `~/.my-devenv`

Nos Unix's (macOS e Linux):
```sh
$ git clone https://github.com/erlimar/my-devenv.git ~/.my-devenv
$ cd ~/.my-devenv
```

No Windows:
```powershell
# TODO ...
```

## Pré-requisitos

Existem alguns programas que eu sempre vou precisar usar, então há um script
em `scripts/${os}/install-requirements${ext}` de acordo com o sistema que faz
isso pra mim. Basta executar:

* **Pop! OS** - `pop-os/install-requirements.bash`

Então você só precisa executar o script com o argumento "--help" para saber como
usá-lo.
