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

## Endpoints

| Método | Endereço     | Descrição                   |
| ------ | ------------ | --------------------------- |
| POST   | /users       | Registro de imagem          |
| PATCH  | /users       | Atualização de imagem       |
| DELETE | /users       | Deletar imagem              |
| GET    | /users       | Busca de usuários na imagem |
| GET    | /users/count | Número de faces na imagem   |

## Respostas

- Registro de imagem (Post)

```
{
  code
  message
  face  : {

            "BoundingBox": {
                "Width": 0.3634060025215149,
                "Height": 0.38711100816726685,
                "Left": 0.3019370138645172,
                "Top": 0.29513099789619446
            },
            "id": "0KXyYOF7u3MMal2uaABRG4lphHF2_0",
            "Confidence": 100.0
          }
}
```

- Atualização de imagem (Patch)

```
{
  code
  message
  face  : {

            "BoundingBox": {
                "Width": 0.3634060025215149,
                "Height": 0.38711100816726685,
                "Left": 0.3019370138645172,
                "Top": 0.29513099789619446
            },
            "id": "0KXyYOF7u3MMal2uaABRG4lphHF2_0",
            "Confidence": 100.0
          }
}
```

- Deletar imagem (Delete)

```
{
  code
  message
}
```

- Busca de usuários na imagem (Get)

```
{
  code
  message
  face:[  {

            "BoundingBox": {
                "Width": 0.3634060025215149,
                "Height": 0.38711100816726685,
                "Left": 0.3019370138645172,
                "Top": 0.29513099789619446
            },
            "id": "0KXyYOF7u3MMal2uaABRG4lphHF2_0",
            "Confidence": 100.0
          },

		  {

            "BoundingBox": {
                "Width": 0.3634060025215149,
                "Height": 0.38711100816726685,
                "Left": 0.3019370138645172,
                "Top": 0.29513099789619446
            },
            "id": "0KXyYOF7u3MMal2uaABRG4lphHF2_0",
            "Confidence": 100.0
          }

	   ]
}
```

- Número de faces na imagem (Get)

```
response
{
  code
  message
  facesCount: 10
}
```
