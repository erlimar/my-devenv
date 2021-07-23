# my-devenv

Este é meu ambiente de desenvolvedor. Tenho aqui alguns scripts/instruções
para instalar alguns programas base, além de alguns arquivos de customização
(como `dotfiles`). Tento separar tudo por tipo de sistema, porque às vezes
estou usando Windows, macOS ou Linux, e quero manter pelo menos a base sempre
disponível em qualquer um deles.

## Setup zero

Antes de mais nanda, vamos precisar pelo menos do [Git](https://git-scm.com),
e o resto está aqui no repositório. Então instale o git caso não o tenha, ou se
o mesmo estiver em uma versão anterior a `v2.32.0`.

Veja as instruções em https://git-scm.com/download!

Com o git já no sistema, clone este repositório para sua pasta pessoal
* `$HOME/.my-devenv` nos Unix's
* `$env:UserProfile` no Windows

Nos Unix's (macOS e Linux):
```sh
$ git clone https://github.com/erlimar/my-devenv.git ~/.my-devenv
$ cd ~/.my-devenv
```

No Windows (com [Powershell](https://github.com/powershell/powershell):
```powershell
# TODO ...
```

## Pré-requisitos

Existem alguns programas que eu sempre vou precisar usar, então há um script
chamado `requirements` em um subdiretório correspondente a cada sistema que
uso no diretório **`scripts/`**. Basta executá-lo para listar os pacotes
que não estão instalados ainda ou use o argumento `--help` para saber mais:

* **Pop! OS** - `pop-os/requirements.bash`

Basta executá-lo para deixar seu (meu) ambiente pronto!
