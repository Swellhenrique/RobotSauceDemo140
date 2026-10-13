# 🤖 RobotSauceDemo140 — Automação de Testes Web

## 📌 Sobre o projeto

Este projeto foi desenvolvido com o objetivo de praticar e demonstrar conhecimentos em automação de testes funcionais Web utilizando Robot Framework.

A aplicação SauceDemo é utilizada como ambiente para validar funcionalidades de um e-commerce, permitindo automatizar interações com a interface, verificar resultados esperados e identificar possíveis falhas durante a execução dos testes.

O projeto faz parte da minha evolução prática na área de Quality Assurance (QA), com foco em automação de testes e qualidade de software.

## 🎯 Objetivos

- Automatizar cenários de testes funcionais em uma aplicação Web.
- Validar o comportamento das funcionalidades da aplicação.
- Verificar resultados esperados por meio de keywords e asserções.
- Praticar a organização e reutilização de casos de teste.
- Desenvolver habilidades em Robot Framework e automação Web.

## 🛠️ Tecnologias utilizadas

- **Robot Framework** — framework para automação e execução dos testes.
- **Python** — linguagem utilizada pelo ambiente do Robot Framework.
- **SeleniumLibrary** — biblioteca para interação automatizada com o navegador, caso utilizada neste projeto.
- **Git e GitHub** — versionamento e compartilhamento do código.

## 🧪 Cenários de teste

Os cenários devem refletir os casos de teste implementados no projeto.

| Cenário | Objetivo |
|---|---|
| Login | Validar o acesso à aplicação. |
| Listagem de produtos | Verificar a exibição dos produtos disponíveis. |
| Seleção de produtos | Validar a interação com os produtos. |
| Carrinho de compras | Verificar a inclusão e os dados dos produtos. |
| Validação de informações | Conferir os resultados esperados durante os testes. |
| Logout | Validar a saída da aplicação, caso automatizada. |

## ⚙️ Pré-requisitos

- Python instalado.
- Google Chrome instalado, caso utilizado nos testes.
- Robot Framework.
- SeleniumLibrary, caso utilizada na automação Web.

## 🚀 Como executar o projeto

### 1. Clone o repositório

```bash
git clone https://github.com/Swellhenrique/RobotSauceDemo140.git
```

### 2. Acesse a pasta do projeto

```bash
cd RobotSauceDemo140
```

### 3. Crie um ambiente virtual

```bash
python -m venv venv
```

### 4. Ative o ambiente virtual

No Windows PowerShell:

```powershell
.\venv\Scripts\Activate.ps1
```

### 5. Instale as dependências

Caso o projeto utilize SeleniumLibrary:

```bash
pip install robotframework robotframework-seleniumlibrary
```

### 6. Execute os testes

```bash
robot -d results .
```

O Robot Framework executará os arquivos de teste encontrados no diretório e poderá gerar relatórios e logs na pasta `results`.

**Observação:** os comandos de instalação e execução devem ser ajustados caso o projeto tenha um arquivo `requirements.txt`, uma pasta específica para testes ou outras bibliotecas.

## 📊 Relatórios de execução

O Robot Framework gera arquivos que auxiliam na análise dos resultados:

- `report.html` — visão geral da execução dos testes.
- `log.html` — detalhes das etapas executadas.
- `output.xml` — resultados estruturados da execução.

Esses relatórios facilitam a identificação de falhas e a análise do comportamento dos testes automatizados.

## 📚 Aprendizados

O desenvolvimento deste projeto contribui para o aprendizado de:

- Automação de testes funcionais com Robot Framework.
- Escrita e organização de casos de teste.
- Utilização de keywords para interação com aplicações Web.
- Validação de resultados esperados.
- Análise de logs e relatórios de execução.
- Aplicação de conceitos de QA na prática.

## 👨‍💻 Autor

**Swell Henrique**

Estudante de Análise e Desenvolvimento de Sistemas, com foco em Quality Assurance (QA), testes de software e automação.

- GitHub: https://github.com/Swellhenrique

---

⭐ Este projeto demonstra minha evolução prática em automação de testes e meu compromisso com o aprendizado contínuo na área de qualidade de software.
