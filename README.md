# Gerenciador de Senhas

Este é um script simples para gerenciamento de senhas, onde você pode adicionar, buscar, remover e atualizar senhas para diferentes serviços de maneira segura. O sistema usa criptografia AES-256 para proteger as senhas, e é necessário fornecer uma senha mestre para acessar e realizar operações.

## Instalação e Configuração

Para facilitar o uso, é recomendável criar um alias para o script, assim você poderá chamá-lo de qualquer lugar no terminal.

### 1. Criar um alias

Adicione o seguinte alias no seu arquivo `~/.bashrc` ou `~/.zshrc`, dependendo do shell que você usa. Isso permite que você execute o script com um comando simples em qualquer diretório:

```bash
alias gerenciador_senhas='/caminho/para/o/gerenciador_senhas.sh'
```

Substitua `/caminho/para/o/gerenciador_senhas.sh` pelo caminho completo para o script. Por exemplo, se o script estiver na sua pasta `~/scripts`, a linha ficará assim:

```bash
alias gerenciador_senhas='~/scripts/gerenciador_senhas.sh'
```

Depois de adicionar o alias, execute o seguinte comando para recarregar o arquivo de configuração do shell:

```bash
source ~/.bashrc  # ou source ~/.zshrc
```

Agora, você pode chamar o script de qualquer lugar com o comando:

```bash
gerenciador_senhas
```

**print de alias** (aqui coloque um print de como configurar o alias no terminal)

### 2. Tornando o script executável

Certifique-se de que o script tenha permissões de execução. Para isso, execute o seguinte comando:

```bash
chmod +x /caminho/para/o/gerenciador_senhas.sh
```

Agora, o script está pronto para ser executado!

## Funcionalidades

- **Adicionar senha**: Permite adicionar uma nova senha para um serviço.
- **Buscar senha**: Permite buscar a senha de um serviço específico.
- **Mostrar serviços salvos**: Exibe todos os serviços cujas senhas estão armazenadas.
- **Remover senha**: Permite remover a senha de um serviço específico.
- **Atualizar senha**: Atualiza a senha de um serviço.
- **Backup**: Cria um backup do arquivo de senhas criptografadas.
  
## Como usar

1. **Executar o script**: Para começar a usar o gerenciador de senhas, execute o script em um terminal:

    ```bash
    gerenciador_senhas
    ```

2. **Senha mestre**: Quando solicitado, insira sua senha mestre para gerar a chave de criptografia.

3. **Menu principal**: O menu principal aparecerá com as opções para gerenciar suas senhas.

    * "Adicionar senha"
    * "Buscar senha"
    * "Mostrar serviços salvos"
    * "Remover senha"
    * "Atualizar senha"
    * "Backup"
    * "Sair"

    **print de menu** (aqui coloque um print do menu principal do seu script)

4. **Operações**: 
    - Para adicionar uma senha, selecione "Adicionar senha" e insira as informações solicitadas (nome do serviço, nome de usuário e senha).
    
    **print de adicionar senha** (aqui coloque um print do processo de adicionar senha)
    
    - Para buscar uma senha, selecione "Buscar senha", insira o nome do serviço e a senha será exibida.

    **print de buscar senha** (aqui coloque um print do processo de buscar senha)
    
    - Para ver todos os serviços salvos, selecione "Mostrar serviços salvos" e uma lista será exibida.

    **print de mostrar serviços salvos** (aqui coloque um print do processo de mostrar serviços salvos)
    
    - Para remover uma senha, selecione "Remover senha" e informe o nome do serviço que deseja excluir.

    **print de remover senha** (aqui coloque um print do processo de remover senha)
    
    - Para atualizar uma senha, selecione "Atualizar senha", informe o serviço e a nova senha.

    **print de atualizar senha** (aqui coloque um print do processo de atualizar senha)

5. **Backup**: Para criar um backup do arquivo de senhas, selecione "Backup". Isso criará uma cópia do arquivo de senhas criptografadas.

    **print de backup** (aqui coloque um print do processo de backup)

6. **Sair**: Para sair do script, selecione "Sair" no menu.

    **print de saída** (aqui coloque um print da tela de saída do script)

## Requisitos

- `dialog`: Para a interface gráfica no terminal.
- `openssl`: Para a criptografia e descriptografia das senhas.

## Licença

Este projeto é de código aberto e distribuído sob a Licença MIT. Veja o arquivo `LICENSE` para mais detalhes.
```
