# MARKETPREÇO

Aplicação de gestão de catálogo, pesquisas, precificação, vídeos e estoque, executada em Cloudflare Workers com persistência em Cloudflare D1.

## Funcionalidades
- Catálogo com cadastro, edição, exclusão, busca e filtros.
- Importação Excel/CSV e exportação CSV.
- Histórico de pesquisas por produto e marketplace.
- Simulador de preços com margem mínima e taxas por canal.
- Biblioteca de vídeos com links associados aos produtos.
- Controle de estoque interno.
- Relatórios e backup/restauração JSON.
- API REST persistida no D1.

## Infraestrutura
- Worker: `marketpreco-app`
- D1: `marketpreco-db`
- R2: endpoints preparados; a ativação do serviço e o binding do bucket ainda dependem de habilitação na conta Cloudflare.

A aplicação não usa Supabase como banco de dados ou backend.