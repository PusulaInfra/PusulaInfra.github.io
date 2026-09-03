# Changelog

## 2026-09-03
Merge old console math with glass shell. Do not delete pages.

- Same interactive pack/paint console on https://pusulainfra.github.io/ and https://pusulainfra.github.io/pusula-serve/
- Lab LED shows 16/32 STANDS/PAGES (not a hardcoded badge)
- Default preset Llama 3.3 70B · 4×H100 · 16K · 16
- MINI32 VRAM is 32 GB
- #boot overlay hides after first paint
- #fail stays hidden unless pack throws; page does not reset
- Ops paints on load and reads Serve query (model, gpu, gpus, ctx, seqs)
- Disclaimer / Privacy / Terms linked from the console
- Makefile `serve` / `check` for this Pages repo (old Go lines kept as comments)

## 2026-09-01
Fix Serve board: TP fallback, Studio 512, shareable URL.

- Lab board no longer reports 304 GB at 32 seq — keep the best TP that almost fits (~78 GB PAGES)
- Boot overlay no longer covers the first paint
- Mac Studio 512 is 512 GB UMA (was 256)
- Mac Mini 16 is 16 GB UMA (was 12)
- Query string holds model / box / ctx / seqs
- Play pills highlight; Copy says Copied
- Gemma 3 27B, Qwen3 8B / 32B / 30B-A3B
- Ops Repo link: pusula-serve (pusula-bill was dead)

## earlier
Filled the empty dashes on Serve.
