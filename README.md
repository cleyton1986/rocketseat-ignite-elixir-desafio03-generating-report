<p align="center">
  <img  src="./assets/cover-elixir.png">
</p>

<h1 align="center">
  Ignite (Elixir) - Rocketseat
</h1>

<h3 align="center">
  Desafio 01 - Gerando relatórios
</h3>

<blockquote align="center">“Tudo deveria se tornar o mais simples possível, mas não simplificado - Albert Einstein”!</blockquote>

<p align="center">
  <img alt="GitHub language count" src="https://img.shields.io/github/languages/count/cleyton1986/rocketseat-ignite-elixir-desafio03-generating-report?color=%2304D361">

  <a href="https://www.linkedin.com/in/cleytonalves">
    <img alt="Made by Cleyton" src="https://img.shields.io/badge/Made%20by-Cleyton_Alves-Alves%2304D361">
  </a>

  <img alt="License" src="https://img.shields.io/badge/license-MIT-%2304D361">

  <a href="https://github.com/cleyton1986/rocketseat-ignite-elixir-desafio03-generating-report/stargazers">
    <img alt="Stargazers" src="https://img.shields.io/github/stars/cleyton1986/rocketseat-ignite-elixir-desafio03-generating-report?style=social">
  </a>
</p>

<p align="center">
  <a href="#tecnologias-e-recursos">Tecnologias e Recursos</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#sobre-o-desafio">Sobre o desafio</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#específicação-dos-testes">Especificação de testes</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#instalação-e-execução">Instalação e execução</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#calendar-entrega">Entrega</a>&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;
  <a href="#memo-licença">Licença</a>
</p>


## Tecnologias e recursos

- [Elixir](https://elixir-lang.org/install.html)

## Sobre o desafio

Nesse desafio, você deverá gerar um relatório a partir de um arquivo `.csv`.

Dez pessoas fizeram freelas para uma empresa X durante cinco anos e o histórico com todos os dados de cada uma dessas pessoas (nome, horas trabalhadas, dia, mês e ano) foram passadas para um arquivo CSV na seguinte ordem: nome, horas de trabalho no dia (que vai variar de 1 a 8 hrs), dia (que vai variar de 1 a 30 mesmo para o mês de fevereiro e sem considerar anos bissextos) referente às horas de trabalho, mês e ano (que vai de 2016 a 2020). Resumindo: **nome**, **quantidade de horas**, **dia**, **mês** e **ano**.
O relatório gerado a partir do arquivo (que está disponível para download logo abaixo) deve estar no seguinte formato:

```js 
%{
  all_hours: %{
        danilo: 500,
        rafael: 854,
        ...
    },
  hours_per_month: %{
        danilo: %{
            janeiro: 40,
            fevereiro: 64,
            ...
        },
        rafael: %{
            janeiro: 52,
            fevereiro: 37,
            ...
        }
    },
  hours_per_year: %{
        danilo: %{
            2016: 276,
            2017: 412,
            ...
        },
        rafael: %{
            2016: 376,
            2017: 348,
            ...
        }
    }
}

```

Os caracteres ... é o espaço onde ficaria o resto dos dados. Esse é apenas um exemplo visual do que o retorno da função deve possuir, beleza?

##  Download do arquivo
(
  <a href="https://s3.us-west-2.amazonaws.com/secure.notion-static.com/070dd69a-c358-46cf-bc53-b2c5e79c9346/gen_report.csv?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=AKIAT73L2G45EIPT3X45%2F20221008%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20221008T000010Z&X-Amz-Expires=86400&X-Amz-Signature=06a8acfc189ef3bcb872672ff672bca25498b006b7952284bb866cc1ad6f53bd&X-Amz-SignedHeaders=host&response-content-disposition=filename%20%3D%22gen_report.csv%22&x-id=GetObject">🔗 gen_report.csv </a>
) 🚀

## Específicação dos testes

Em cada teste, você encontrará uma breve descrição do que sua aplicação deve cumprir para que o teste passe.

Para esse desafio, temos os seguintes testes:

🧪 (
  <a href="https://www.notion.so/Testes-test-gen_report_test-exs-81b150786093484a860eb34eccf17060">Testes test/gen_report_test.exs</a>
) 

🧪 (
  <a href="https://www.notion.so/Testes-test-parser_test-exs-ff211e530fcb49b1a9eb7cf637ccdea2">Testes test/parser_test.exs</a>
) 


### Você deve cumprir para que o teste passe.

## :calendar: Entrega

Esse desafio foi entregue na plataforma Skylab - Rocketseat.

<p align="center">
  <img  src="./assets/test-result.png">
</p>

## Instalação e execução

```bash
# OBS.: ANTES DE PROCEDIMENTO, CERTIFIQUE-SE QUE O ELIXIR ESTEJA INSTALADO NO SEU COMPUTADOR CORRETAMENTE.

# Clone esse repositório
$ git clone https://github.com/cleyton1986/rocketseat-ignite-elixir-desafio03-generating-report

# Entre no diretório
$ cd rocketseat-ignite-elixir-desafio03-generating-report

# baixe as dependenecias
$ mix deps.get

# para compilar o projeto, execute o comando
$ mix compile

# para rodar os testes, execute o comando
$ mix test

# para mais detalhes
$ mix test --cover

# acessando o iex
$ iex -S mix
```
## :memo: Licença

Esse projeto está sob a licença MIT. Veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

 implementado por 👨🏽‍💻 Cleyton Alves e desenvolvido 💜 by Rocketseat.
