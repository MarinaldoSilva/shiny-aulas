from flask import Flask, send_file

app = Flask(__name__)

# Adicionando a rota para a página principal
@app.route('/')
def home():
    return "<h1>Servidor Flask rodando!</h1><p>Acesse /plots para baixar o arquivo.</p>"

@app.route('/C:/Users/70099007444/Documents/R/Analise/plots')
def download_file():
    caminho_arquivo = "FileZilla_Server_1.10.3_win64-setup.exe"
    return send_file(caminho_arquivo, as_attachment=True)

if __name__ == '__main__':
    app.run(debug=True)
