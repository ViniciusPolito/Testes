#language:pt


@login
Funcionalidade: Login
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso acessar o sistema com meu e-mail e senha previamente cadastrados

    Contexto: Página de login
        Dado que eu acesso à página de login

    @logout
    Cenário: Usuário deve ser autenticado
        Quando eu faço login com "barpo@stefanini.io" e "senha_certa" 
        Então devo ser autenticado com sucesso 
    
    @login_errado_fixtures
    Esquema do Cenário: Tentativas inválidas de login
        Quando eu insiro as minhas "<credenciais>"
        Então devo ver a mensagem "<alerta>"

        Exemplos:
        | credenciais                | alerta                       |
        | "login_e_senha_incorretos" | "Authentication failed."     |
        | "login_incorreto"          | "Authentication failed."     |
        | "senha_incorreta"          | "Authentication failed."     |
        | "login_vazio"              | "An email address required." |
        | "senha_vazia"              | "Password is required."      |
        | "login_senha_vazios"       | "An email address required." |

    # @login_errado
    # Esquema do Cenário: Tentativas inválidas de login
    #     Quando eu faço login com "<email>" e "<senha>" 
    #     Então devo ver a mensagem "<alerta>"

    #     Exemplos:
    #     | email               | senha        | alerta                     |
    #     | vinny4@stefanini.io | senha_errada | Authentication failed.     |
    #     | vinny4@stefanini.io | senha_certa  | Authentication failed.     |
    #     | barpo@stefanini.io  | senha_errada | Authentication failed.     |
    #     |                     | senha_certa  | An email address required. |
    #     | vinny4@stefanini.io |              | Password is required.      |
    #     |                     |              | An email address required. |
