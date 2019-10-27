#language:pt

Funcionalidade: Consultar os dados de um endereço a partir do CEP

    Cenario: Realizar uma consulta na API de endereçp
        Dado que o usuário possua um CEP "05780310"
        Então deve ser possível receber todos dados de endereço do utilizando o CEP
    
    Cenario: Realizar uma consulta na API e trazer somente o código do IBGE
        Dado que o usuário possua um CEP "05780310"
        Então deve ser possível trazer o número do IBGE do endereço

    Cenario: Realizar uma consulta na API com um CEP incorreto
        Dado que o usuário possua um CEP "5644556"
        Então o usuário deve receber a resposta 400, que siginifca bad request
    