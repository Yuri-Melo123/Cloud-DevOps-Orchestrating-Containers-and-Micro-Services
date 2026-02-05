## Pedidos Veloz — Cloud DevOps Project

# Visão Geral

Este projeto apresenta uma proposta completa de Cloud DevOps para a aplicação fictícia da Pedidos Veloz, um e-commerce baseado em microsserviços com foco em automação, escalabilidade, confiabilidade e observabilidade.

A solução cobre todo o ciclo do desenvolvimento local à produção, utilizando Docker, Kubernetes, CI/CD, observabilidade e Infraestrutura como Código.

# Arquitetura da Aplicação

A aplicação é composta pelos seguintes serviços:

API Gateway — ponto único de entrada

Pedidos Service — criação e consulta de pedidos

Pagamentos Service — simulação de integração externa

Estoque Service — reserva e baixa de itens

PostgreSQL — banco de dados relacional

Todos os serviços são conteinerizados e se comunicam via HTTP.

# Ambiente Local — Docker Compose
Pré-requisitos

Docker

Docker Compose

Subir o ambiente
docker compose up --build

Endpoints

API Gateway: http://localhost:3000

Pedidos: http://localhost:3001

Pagamentos: http://localhost:3002

Estoque: http://localhost:3003

# Kubernetes — Produção Mínima

A aplicação é implantada em Kubernetes utilizando:

Namespace dedicado

Deployments e Services

ConfigMaps e Secrets

Readiness e Liveness Probes

Horizontal Pod Autoscaler (HPA)

A estratégia de deploy adotada é Rolling Update, reduzindo riscos de indisponibilidade.

# CI/CD

O pipeline CI/CD foi implementado com GitHub Actions, realizando:

Build das imagens Docker

Execução de testes

Publicação das imagens em registry

Credenciais sensíveis são gerenciadas por meio de GitHub Secrets.

# Observabilidade

A observabilidade é estruturada com base nos três pilares:

Logs: enviados para stdout (12-Factor App)

Métricas: uso de CPU/memória e latência

Tracing: proposto com OpenTelemetry

Essa abordagem permite diagnóstico rápido e maior confiabilidade operacional.

# Infraestrutura como Código


A infraestrutura Kubernetes é definida de forma declarativa com Terraform, permitindo reprodutibilidade, versionamento e integração com pipelines CI/CD.
