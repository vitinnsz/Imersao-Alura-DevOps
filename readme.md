# API de Gestão Escolar - Imersão DevOps Alura & Google Cloud

![Status](https://img.shields.io/badge/status-concluído-green)
![Python](https://img.shields.io/badge/Python-3.10+-blue?logo=python&logoColor=white)
![FastAPI](https://img.shields.io/badge/FastAPI-0.103.2-green?logo=fastapi)
![Docker](https://img.shields.io/badge/Docker-blue?logo=docker&logoColor=white)
![CI/CD](https://img.shields.io/badge/CI/CD-Ready-yellow?logo=github-actions&logoColor=white)
![Google Cloud](https://img.shields.io/badge/Google_Cloud-Ready-blue?logo=google-cloud)

## 🚀 Sobre o Projeto

Este projeto é uma API RESTful completa para gestão escolar, desenvolvida como parte da **Imersão DevOps da Alura em parceria com o Google Cloud**. A aplicação, construída com **FastAPI**, permite o gerenciamento de alunos, cursos e matrículas, servindo como um case prático para explorar conceitos fundamentais de DevOps, como containerização com **Docker**, automação de esteiras **CI/CD** e deploy na nuvem.

## ✨ Funcionalidades Principais

- **Gestão de Alunos:** CRUD completo (Criar, Ler, Atualizar, Deletar) para alunos.
- **Gestão de Cursos:** CRUD completo para cursos.
- **Gestão de Matrículas:** Sistema para matricular alunos em cursos.
- **Consultas Avançadas:** Endpoints para buscar alunos por nome, e-mail e cursos por aluno.
- **Documentação Interativa:** Geração automática de documentação com Swagger UI e ReDoc.

## 🛠️ Tecnologias Utilizadas (já prontas para uso)

- **Backend:** Python, FastAPI
- **Banco de Dados:** SQLAlchemy, SQLite
- **Validação de Dados:** Pydantic
- **Servidor ASGI:** Uvicorn
- **Containerização:** Docker
- **Ambiente Virtual:** venv

## Pré-requisitos

- [Python 3.10+](https://www.python.org/downloads/)
- [Git](https://git-scm.com/downloads)
- [Docker](https://www.docker.com/get-started/)

## 📂 Estrutura do Projeto

O projeto está organizado de forma modular para facilitar a manutenção e escalabilidade:

```
.
├── app.py              # Ponto de entrada da aplicação FastAPI e configuração dos routers
├── database.py         # Configuração da conexão com o banco de dados (SQLAlchemy)
├── models.py           # Modelos de dados do SQLAlchemy (tabelas do banco)
├── schemas.py          # Schemas Pydantic para validação de dados de entrada/saída
├── routers/            # Módulo com as rotas da API
│   ├── alunos.py
│   ├── cursos.py
│   └── matriculas.py
├── requirements.txt    # Dependências do projeto Python
├── Dockerfile          # Instruções para construir a imagem Docker da aplicação
├── readme.md           # Este arquivo
└── escola.db           # Arquivo do banco de dados SQLite (criado na primeira execução)
```

## 🏁 Começando

Você pode executar o projeto de duas maneiras: localmente com um ambiente virtual Python ou utilizando Docker (recomendado).

### 1. Executando com Docker (Recomendado)

Esta é a forma mais simples e recomendada, pois isola o ambiente e garante a consistência.

**Pré-requisitos:**
- [Docker](https://www.docker.com/get-started/) instalado e em execução.

**Passos:**

1.  **Clone o repositório:**
    ```sh
    git clone https://github.com/guilhermeonrails/imersao-devops.git
    cd imersao-devops
    ```

2.  **Construa a imagem Docker:**
    ```sh
    docker build -t imersao-devops-api .
    ```

3.  **Execute o container:**
    ```sh
    docker run -d -p 8000:8000 --name api-escola imersao-devops-api
    ```
    - `-d`: Executa o container em modo detached (em segundo plano).
    - `-p 8000:8000`: Mapeia a porta 8000 do host para a porta 8000 do container.
    - `--name api-escola`: Dá um nome amigável ao container.

### 2. Executando Localmente

**Passos:**

1.  **Clone o repositório:**
    ```sh
    git clone https://github.com/guilhermeonrails/imersao-devops.git
    cd imersao-devops
    ```

2.  **Crie e ative um ambiente virtual:**
    ```sh
    # Linux/macOS
    python3 -m venv venv
    source venv/bin/activate

    # Windows
    python -m venv venv
    .\venv\Scripts\activate
    ```

3.  **Instale as dependências:**
    ```sh
    pip install -r requirements.txt
    ```

4.  **Execute a aplicação:**
    ```sh
    uvicorn app:app --reload
    ```

## 📚 Acessando a API

Após iniciar a aplicação (seja com Docker ou localmente), a API estará disponível em `http://127.0.0.1:8000`.

A documentação interativa (Swagger UI) é a melhor forma de explorar e testar todos os endpoints:

- **Acesse:** http://127.0.0.1:8000/docs

## ☁️ DevOps: CI/CD e Deploy na Nuvem

Este projeto foi estruturado pensando em um fluxo de trabalho DevOps moderno.

-   **Containerização:** O `Dockerfile` presente no repositório é o primeiro passo. Ele define um ambiente padronizado e portátil para a nossa aplicação, eliminando o clássico problema "funciona na minha máquina".

-   **Integração Contínua (CI):** Uma esteira de CI (usando ferramentas como GitHub Actions, Jenkins, GitLab CI) pode ser configurada para automaticamente:
    1.  Executar testes (unitários, integração).
    2.  Analisar a qualidade do código (linting).
    3.  Construir a imagem Docker e enviá-la para um registro de contêineres (como Docker Hub ou Google Artifact Registry).

-   **Entrega Contínua (CD):** Após a etapa de CI, a esteira de CD pode ser acionada para implantar a nova versão da imagem Docker em ambientes de homologação ou produção. Para o ecossistema Google Cloud, um excelente candidato para o deploy é o **Google Cloud Run**, um serviço serverless que executa contêineres de forma escalável e gerenciada.

---
_Projeto desenvolvido durante a Imersão DevOps Alura & Google Cloud - https://www.victordeveloper.com_