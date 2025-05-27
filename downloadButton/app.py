import subprocess

def run_shiny_app(scriptR="app.R"):
    try:
        comando = ["Rscript", scriptR]
        processso = subprocess.Popen(comando)
        processso.wait()
    except Exception as e:
        print(f"Erro ao executar o script R: {e}")
caminho = "app.R"
if __name__ == "__main__":
    # Execute the R script to run the Shiny app     

    run_shiny_app("app.R")