FROM python:3.12.3-alpine3.20
WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
EXPOSE 8090
CMD ["uvicorn","app:app","--reload","--port","8090","--host","0.0.0.0"]