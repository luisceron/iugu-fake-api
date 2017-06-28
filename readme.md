# iugu-fake-api

iugu-fake-api é um servidor REST fake para desenvolvimento de aplicações de consumo da API da iugu.

### Executar Servidor

```bash
docker kill iugu-fake-api
docker rm iugu-fake-api
docker run -d -p 8000:3000 --name iugu-fake-api leonardofalk/iugu-fake-api:latest
```

Abrir [localhost:8000](http://localhost:8000)

### Rotas

```bash
# ./routes.json
{
  "/v1/": "/",
  "/v1/charge/": "/charge/"
}
```

GET `localhost:8000/v1/charge` -> `charge`
```bash
# resultado
{
  "success": true,
  "message": "Autorizado",
  "invoice_id": "53B53D39F7AD44C4B8B873E15F067193"
}
```

### Adicionando Banco de dados

```bash
# ./db.json
{
  "charge": {
    "success": true,
    "message": "Autorizado",
    "invoice_id": "53B53D39F7AD44C4B8B873E15F067193"
  }
}
```
