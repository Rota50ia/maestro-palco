-- PALCO — Tabela de leads (lead magnet auditoria gratuita)
-- Rodar no Supabase projeto ctvdlamxicoxniyqcpfd → SQL Editor

BEGIN;

CREATE TABLE IF NOT EXISTS public.leads_palco (
  id         uuid        DEFAULT gen_random_uuid() PRIMARY KEY,
  nome       text,
  email      text        NOT NULL,
  whatsapp   text,
  origem     text        NOT NULL DEFAULT 'auditoria-gratuita',
  criado_em  timestamptz NOT NULL DEFAULT now()
);

-- Índice por email para evitar duplicatas visíveis no dashboard
CREATE UNIQUE INDEX IF NOT EXISTS leads_palco_email_idx ON public.leads_palco (email);

-- RLS — service_role acessa tudo, usuários autenticados não veem leads alheios
ALTER TABLE public.leads_palco ENABLE ROW LEVEL SECURITY;

-- service_role bypassa RLS automaticamente

COMMIT;

-- SMOKE TEST (rodar separado)
-- INSERT INTO public.leads_palco (nome, email, whatsapp) VALUES ('Teste', 'teste@palco.com', '');
-- SELECT * FROM public.leads_palco WHERE email = 'teste@palco.com';
-- DELETE FROM public.leads_palco WHERE email = 'teste@palco.com';
