import subprocess

caminho = "app.R"

def run_shiny_app(scriptR = caminho):
    try:
        comando = ["Rscript", scriptR]
        processso = subprocess.Popen(comando)
        processso.wait()
    except Exception as e:
        print(f"Erro ao executar o script R: {e}")

run_shiny_app("app.R")