<style>
  #rekognition-diagram {
    display: inline-block;
    margin: auto;
    height: auto;
    width: 200px;
  }
</style>

# Rekognition

Serviço responsável pelo gerenciamento na AWS rekognition

- Busca de pessoa por imagem (search)
- Cadastro de imagem (register)
- Atualização de imagem (update)
- Deletar imagem (delete)

<div id="rekognition-diagram">
  ```mermaid
  classDiagram
  User --> Rekognition
  User: Id string
  Rekognition: id string
  Rekognition: image string
  ```
</div>

##Endpoints Users
|Método | Endereço | Descrição |
|-----|--------|--------------------|
|POST| /users| Registro de imagem |
|PATCH| /users| Atualização de imagem |
|DELETE| /users| Deletar imagem |
|GET| /users| Busca de usuários na imagem |
|GET| /users/count| Número de faces na imagem |
