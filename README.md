# MARKETPREÇO

Aplicação independente de gestão de produtos, construída sobre Cloudflare Workers e D1.

## Estrutura inicial

- `worker.js`: Worker HTTP, API de produtos e interface web inicial.
- Persistência: Cloudflare D1 (banco `marketpreco-db`).

## Rotas

- `/` — interface web
- `/api/health` — verificação de saúde
- `/api/products` — listagem de produtos

## Estado atual

A base inicial do Worker foi versionada. Dashboard e catálogo consultam os produtos armazenados no D1. Pesquisas, precificação interativa, vídeos e configurações ainda precisam ser implementados e testados antes de serem considerados concluídos.

## Publicação

O Worker ativo é gerenciado no Cloudflare. Este repositório ainda precisa receber a configuração de deploy/integração contínua para automatizar futuras publicações.
