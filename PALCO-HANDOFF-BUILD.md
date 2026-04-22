# HANDOFF — PALCO BUILD
**Data:** 18/04/2026
**Para:** Próxima sessão técnica

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
STATUS ATUAL
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

✅ Sprint 1 — Workflow n8n base (WhatsApp → Claude → resposta)
✅ Sprint 2 — Memória Supabase (onboarding + ficha por usuário)
✅ Sprint 3 — Página palcoapp.rota50ia.com com Google OAuth
✅ Sprint 3 n8n — Persistência histórico semanal (evento_semana + pacote_gerado → palco_sessoes_historico)
✅ GitHub: https://github.com/Rota50ia/palcoapp
✅ Documentação: PALCO-BUILD-DOC.md

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
INFRAESTRUTURA
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

n8n:      edilson-dark-n8n.7lvlou.easypanel.host
          Workflow ID: p4w24acxcwpap4ms
          Webhook: /webhook/palco-mensagem

UazAPI:   edilsonmorais.uazapi.com
          Instância: maestro_palco
          Número: 556282377569
          Token: 62a7447d-fdb3-41e0-b342-4835cb812490

Supabase: ctvdlamxicoxniyqcpfd
          Tabelas: usuarios_palco, palco_sessoes_historico, alunos_palco
          Auth: Google OAuth ativo

Claude:   claude-sonnet-4-6 via $env.ANTHROPIC_API_KEY

HostGator: palcoapp.rota50ia.com
GitHub:    https://github.com/Rota50ia/palcoapp (branch main)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
WEBHOOK EDUZZ — ✅ CONCLUÍDO (21/04/2026)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  Produto: 3010407 (MAESTRO PALCO)
  Workflow n8n: PALCO — Eduzz Pós-Compra (produto 3010407)
  ID n8n: db6pvvN6sl3cNDJQ
  Webhook URL: /webhook/palco-poscompra-eduzz
  Status: ATIVO — testado e validado pelo Edilson

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
OUTRAS PENDÊNCIAS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  1. Upload index.html no HostGator (arquivo pronto em build/)
  2. Configurar SSL (HTTPS) no domínio palcoapp.rota50ia.com
  3. ✅ Sprint 3 n8n: persistir evento_semana + pacote no Supabase — CONCLUÍDO (21/04/2026)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
ARQUIVOS IMPORTANTES
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  ~/Desktop/MAESTRO PALCO/build/
    index.html                     ← página com Google OAuth
    alunos-palco.sql               ← DDL tabela alunos
    PALCO-WORKFLOW-SPRINT2.json    ← workflow n8n referência
    PALCO-SUPABASE-SPRINT2-GUIDE.md ← guia REST Supabase
    PALCO-BUILD-DOC.md             ← documentação completa

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
