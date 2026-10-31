# Vitrine de gadgets gamer (Mercado Livre)

1. Edite `config.json` (nome, categorias, marcas, filtros).
2. Renomeie `atualizar.bat.modelo` para `atualizar.bat` e cole o ID/Secret do app (nunca suba esse arquivo).
3. Duplo clique em `atualizar.bat` -> gera `docs/index.html` e `log.txt` (mande o log para ajustar filtros).
4. `atualizar_e_publicar.bat` faz commit + push; agende no Agendador de Tarefas do Windows.
5. GitHub Pages: Settings > Pages > branch main, pasta /docs.

Previa sem API: `python gerar_site.py --demo` (NAO publique a previa).
