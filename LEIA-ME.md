# Respawn Achados (nome provisório) — vitrine de gadgets gamer

Site estático gerado por Python a partir de ofertas do Mercado Livre, com links de afiliado.

## Primeiros passos
1. Crie o repositório novo no GitHub (usuário `achadosbortone`), clone no computador e copie estes arquivos para dentro.
2. Abra `atualizar.bat` no Bloco de Notas e preencha `ML_CLIENT_ID` e `ML_CLIENT_SECRET`. **Esse arquivo nunca vai ao GitHub.**
3. Em `config.json`, troque `nome`, `slogan` e `url_site` (use o endereço do GitHub Pages do repositório novo).
4. Dê dois cliques em `atualizar.bat`. Abra `docs\index.html` no navegador para conferir.
5. Envie o `log.txt` para ajustar categorias, marcas e filtros.
6. No GitHub: Settings → Pages → Branch `main`, pasta `/docs`.

## Testar o visual sem a API
`python gerar_site.py --demo` gera o site com dados de exemplo.

## Publicação automática
Agende `atualizar_e_publicar.bat` no Agendador de Tarefas do Windows (ex.: 1 vez ao dia). Ele chama o `atualizar.bat` (que guarda as chaves) sem a pausa final.

## Ajustes comuns (tudo em config.json)
- **Categorias:** `consultas` (o que buscar), `exigir_palavras` e `excluir` (filtro pelo título), `exigir_marca` (só marcas da lista `marcas_premium`).
- **Segurança contra falsificação:** só entram lojas oficiais, Platinum, Gold ou verdes com 100+ vendas; palavras como "compatível", "usado" e "gift card" são barradas em `excluir_global`.
- **Ordenação:** marca reconhecida → reputação da loja → menor preço, com rodízio para mostrar novidades.

## Observações
- O Mercado Livre bloqueia IPs do GitHub: a coleta precisa rodar no seu computador. Não ative GitHub Actions para coletar.
- Os campos exatos de `/products/{id}/items` podem variar; se vierem poucos itens, o `log.txt` mostra onde estão os descartes.
