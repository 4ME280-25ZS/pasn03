# Wishlist (Supabase)

Krátký návod jak spustit wishlist s Supabase (nejjednodušší varianta, anonymní rezervace):

1. V Supabase vytvoř nový projekt: https://app.supabase.com
2. V SQL editoru spusť obsah `supabase.sql` (vytvoří tabulky)
3. Zkopíruj `SUPABASE_URL` a `anon` klíč (Project Settings → API)
4. Otevři `index.html` a ve skriptu nahraď `YOUR_SUPABASE_URL` a `YOUR_SUPABASE_ANON_KEY` hodnotami
5. Nahraj změny a otevři `novy-projekt/index.html` v prohlížeči

Možnosti:

- Aplikace podporuje rychlý import ukázkových položek tlačítkem "Přidat ukázkové položky".
- Rezervace může kdokoli zrušit (nejjednodušší chování). Pokud chceš bezpečnější zrušení, mohu přidat generování tokenu při rezervaci.

Pokud chceš, abych to nasadil a propojil přímo s tvým Supabase projektem, pošli mi prosím `SUPABASE_URL` a `anon` klíč (neodesílej veřejně, nebo raději vlož hodnoty sám podle kroku 4).
