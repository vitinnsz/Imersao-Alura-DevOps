# 1. Usar uma imagem base oficial do Python.
# A versão 'slim' é uma boa escolha por ser menor que a padrão.
# O README menciona Python 3.10+, então usaremos essa versão para consistência.
FROM python:3.13.4-alpine3.22

# 2. Definir o diretório de trabalho dentro do contêiner.
WORKDIR /app

# 3. Copiar o arquivo de dependências para o diretório de trabalho.
COPY requirements.txt .

# 4. Instalar as dependências do projeto.
# A flag --no-cache-dir reduz o tamanho da imagem.
RUN pip install --no-cache-dir -r requirements.txt

# 5. Copiar o restante do código da aplicação.
COPY . .

# 6. Expor a porta 8000 para que a API possa ser acessada de fora do contêiner.
EXPOSE 8000

# 7. Comando para executar a aplicação com Uvicorn.
# Usar --host 0.0.0.0 é essencial para que a aplicação fique acessível.
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000", "--reload"]