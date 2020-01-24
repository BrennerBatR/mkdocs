<style>
  #recognition-diagram {
    display: inline-block;
    margin: auto;
    height: auto;
    width: 200px;
  }
</style>

# Recognition

Serviço responsável pelo gerenciamento de reconhecimento facial.

- Busca de pessoa por imagem
- Busca do número de faces na imagem
- Cadastro de imagem
- Atualização de imagem
- Deletar imagem

## Endpoints

| Método | Endereço         | Descrição                   |
| ------ | ---------------- | --------------------------- |
| POST   | /users           | Registro de imagem          |
| PATCH  | /users/\{faceId} | Atualização de imagem       |
| DELETE | /users/\{faceId} | Deletar imagem              |
| GET    | /users           | Busca de usuários na imagem |
| GET    | /users/count     | Número de faces na imagem   |

## Payloads e Respostas

### Registro de imagem (Post)

- Payload:
  ```
  {
    "image" : "data:image/jpeg;base64,/9j/ORXhpZgAATU0AKgAAAAgABwExAAIAAAAiAAAAYgEyAAIAAAAUAAAAhAESAAMAAAABAAAAAIdpAAQAAAABAAAAqAEoAAMAAAABAAIAAAEaAAUAAAABAAAAmAEbAAUAAAABAAAAoAAAAABBZG9iZSBQaG90b3Nob3AgRXhwcmVzcyAoQW5kcm9pZCkAMjAxOTowNzowOCAwODo0MjoyNQAAAABIAAAAAQAAAEgAAAABAAKgAQADAAAAAQABAACQAAAHAAAABDAyMzAAAAAA/
  }
  ```
- Resposta:

  ```
  {
    "code" : 200,
    "message" : "Sucesso",
    "face"  : {

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

### Atualização de imagem (Patch)

- Payload:
  ```
  {
    "image" : "data:image/jpeg;base64,/9j/ORXhpZgAATU0AKgAAAAgABwExAAIAAAAiAAAAYgEyAAIAAAAUAAAAhAESAAMAAAABAAAAAIdpAAQAAAABAAAAqAEoAAMAAAABAAIAAAEaAAUAAAABAAAAmAEbAAUAAAABAAAAoAAAAABBZG9iZSBQaG90b3Nob3AgRXhwcmVzcyAoQW5kcm9pZCkAMjAxOTowNzowOCAwODo0MjoyNQAAAABIAAAAAQAAAEgAAAABAAKgAQADAAAAAQABAACQAAAHAAAABDAyMzAAAAAA/
  }
  ```
- Resposta:

  ```
  {
    "code" : 200,
    "message" : "Sucesso",
    "face"  : {

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

### Deletar imagem (Delete)

- Resposta

  ```
  {
    "code" : 200,
    "message" : "Deletado com sucesso"
  }
  ```

### Busca de usuários na imagem (Get)

- Payload:
  ```
  {
    "image" : "data:image/jpeg;base64,/9j/ORXhpZgAATU0AKgAAAAgABwExAAIAAAAiAAAAYgEyAAIAAAAUAAAAhAESAAMAAAABAAAAAIdpAAQAAAABAAAAqAEoAAMAAAABAAIAAAEaAAUAAAABAAAAmAEbAAUAAAABAAAAoAAAAABBZG9iZSBQaG90b3Nob3AgRXhwcmVzcyAoQW5kcm9pZCkAMjAxOTowNzowOCAwODo0MjoyNQAAAABIAAAAAQAAAEgAAAABAAKgAQADAAAAAQABAACQAAAHAAAABDAyMzAAAAAA/
  }
  ```
- Resposta:

  ```
  {
    "code" : 200,
    "message" : "Sucesso",
    "face":[  {

              "BoundingBox": {
                  "Width": 0.3634060025215149,
                  "Height": 0.38711100816726685,
                  "Left": 0.3019370138645172,
                  "Top": 0.29513099789619446
              },
              "id": "0KXyYOF7u3MMal2uaABRG4lphHF2",
              "Confidence": 100.0
            },
            {

              "BoundingBox": {
                  "Width": 0.3634060025215149,
                  "Height": 0.38711100816726685,
                  "Left": 0.3019370138645172,
                  "Top": 0.29513099789619446
              },
              "id": "12XyYTTGu3BBalH8AABRG4lphHF6",
              "Confidence": 100.0
            }

        ]
  }
  ```

### Número de faces na imagem (Get)

- Payload:
  ```
  {
    "image" : "data:image/jpeg;base64,/9j/ORXhpZgAATU0AKgAAAAgABwExAAIAAAAiAAAAYgEyAAIAAAAUAAAAhAESAAMAAAABAAAAAIdpAAQAAAABAAAAqAEoAAMAAAABAAIAAAEaAAUAAAABAAAAmAEbAAUAAAABAAAAoAAAAABBZG9iZSBQaG90b3Nob3AgRXhwcmVzcyAoQW5kcm9pZCkAMjAxOTowNzowOCAwODo0MjoyNQAAAABIAAAAAQAAAEgAAAABAAKgAQADAAAAAQABAACQAAAHAAAABDAyMzAAAAAA/
  }
  ```
  - Resposta:
    ```
    response
    {
      "code" : 200,
      "message" : "Sucesso",
      "facesCount": 10
    }
    ```
