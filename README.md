# MARKETPREÇO

Aplicação independente de gestão de catálogo, pesquisas, precificação, vídeos e estoque, com backend Cloudflare Workers e Cloudflare D1. A interface estática é publicada em Cloudflare Pages.

## Funcionalidades
- Catálogo com cadastro, edição, exclusão, busca e filtros.
- Importação Excel/CSV, preservação de campos e exportação CSV.
- Histórico de pesquisas por produto e marketplace, com análise de links de anúncios.
- Simulador de preços com margem mínima e taxas por canal.
- Biblioteca de vídeos com vínculos aos produtos e suporte a upload via R2 quando habilitado.
- Controle de estoque interno.
- Relatórios e backup/restauração JSON.
- Migração automática das imagens antigas para Cloudflare KV.

## Infraestrutura
- Interface Pages: `marketpreco.pages.dev`
- API Worker: `marketpreco-app.leoduarte13.workers.dev`
- Banco D1: `marketpreco-db`
- KV de imagens: `marketpreco-images`
- KV de imagens: `marketpreco-images`.
- KV de vídeos: `marketpreco-video-files` (arquivos de até 24 MB).
- R2: opcional para arquivos de vídeo maiores que 24 MB; depende de ativação na conta Cloudflare.

## Deploy automático pelo GitHub Actions
O workflow publica o Worker e a interface Pages a cada atualização na branch `main`. Configure estes dois repositórios secretos em **Settings → Secrets and variables → Actions**:

- `CLOUDFLARE_API_TOKEN`: token Cloudflare com Workers Scripts Write, Pages Write, D1 Edit e Workers KV Storage Edit.
- `CLOUDFLARE_ACCOUNT_ID`: ID da conta Cloudflare vinculada.

O deploy direto já foi realizado pela conexão Cloudflare. O workflow passa a automatizar os próximos commits assim que os dois secrets forem configurados.

## API
`GET /api/health`, `GET/POST /api/products`, `POST /api/products/bulk`, `PUT/DELETE /api/products/:id`, `GET/POST /api/research`, `DELETE /api/research/:id`, `GET/POST /api/videos`, `DELETE /api/videos/:id`, `POST /api/videos/upload`, `GET/PUT /api/settings`, `POST /api/scan`, `POST /api/migrate-images`.

Não utiliza Supabase como banco de dados ou backend.