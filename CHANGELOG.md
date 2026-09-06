# Changelog

## 2026-09-06
Share URL keys now drive pack() and the launch command. Adding them to the query was not enough — fromUrl, pack, and cmd read them.

- `fromUrl` reads `w`, `kv`, `in`, `out`, `nodes`, `xconn`, `lang` (aliases: weights/quant/dtype/wbit, kvdtype/kbit, prompt/isl, gen/osl). `toUrl` always writes those keys.
- `w` is the dtype name (bf16/fp8/awq4…). `wbit` is still bytes (BF16=2). Not 2-bit quant.
- `in`/`out` feed kv_work, TTFT, and `--max-num-batched-tokens`. STANDS/PAGES still uses kv_worst = full ctx.
- `nodes` is replica count, not the GPU catalog. VRAM pack uses GPUs / node.
- `xconn` = nvlink | ib | pcie. IB/PCIe tax decode tok/s, not VRAM GB.
- `lang=tr` sets `<html lang>` and the LED TAHMİN note.
- hit=0 omits `--enable-prefix-caching`. Launch adds chunked prefill, block-size 16, swap-space 0, executor mp|ray.
- MINI64 VRAM is 64 GB. seqs to 256, GPUs/node to 16. AWQ-4 / GPTQ-4 bind to pack bytes 0.5.
- Fixture unchanged: Llama 3.3 70B · 4×H100 · 16K · 16 · util 0.90 · BF16 → STANDS 57.5 / 72 GB. Same box 32 seq → PAGES 77.5.

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
