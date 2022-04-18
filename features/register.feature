#language:pt

@register
Funcionalidade: Register
    Para que eu possa cadastrar e gerenciar minhas tarefas
    Sendo um usuário
    Posso me cadastrar para ter acesso ao sistema

    Cenário: Acessar cadastro

        Dado que eu acesso à página de acesso
        Quando eu registro meu email "barpo@stefanini.io" 
        Então serei redirecionado para página de cadastro com meu email "barpo@stefanini.io"

    Cenário: Realizar cadastro
        Dado
        Quando
        Então