perf stat -e r12082 -e r4 -e r10011 -e r10012 --output octane_cache_stats.txt /data/test/octane/d8 run_richards.js
perf stat -e r120A0 -e r10010  -e r8 -e r11 --output octane_cache_stats.txt --append /data/test/octane/d8 run_richards.js
perf stat -e rs00073 -e rs00022 -e rs00061 -e rs00020 --output octane_cache_stats.txt --append /data/test/octane/d8 run_richards.js

perf stat -e r12082 -e r4 -e r10011 -e r10012 --output octane_cache_stats.txt --append /data/test/octane/d8 run_deltablue.js
perf stat -e r120A0 -e r10010  -e r8 -e r11 --output octane_cache_stats.txt --append /data/test/octane/d8 run_deltablue.js
perf stat -e rs00073 -e rs00022 -e rs00061 -e rs00020 --output octane_cache_stats.txt --append /data/test/octane/d8 run_deltablue.js

perf stat -e r12082 -e r4 -e r10011 -e r10012 --output octane_cache_stats.txt --append /data/test/octane/d8 run_crypto.js
perf stat -e r120A0 -e r10010  -e r8 -e r11 --output octane_cache_stats.txt --append /data/test/octane/d8 run_crypto.js
perf stat -e rs00073 -e rs00022 -e rs00061 -e rs00020 --output octane_cache_stats.txt --append /data/test/octane/d8 run_crypto.js

perf stat -e r12082 -e r4 -e r10011 -e r10012 --output octane_cache_stats.txt --append /data/test/octane/d8 run_raytrace.js
perf stat -e r120A0 -e r10010  -e r8 -e r11 --output octane_cache_stats.txt --append /data/test/octane/d8 run_raytrace.js
perf stat -e rs00073 -e rs00022 -e rs00061 -e rs00020 --output octane_cache_stats.txt --append /data/test/octane/d8 run_raytrace.js

perf stat -e r12082 -e r4 -e r10011 -e r10012 --output octane_cache_stats.txt --append /data/test/octane/d8 run_earleyboyer.js
perf stat -e r120A0 -e r10010  -e r8 -e r11 --output octane_cache_stats.txt --append /data/test/octane/d8 run_earleyboyer.js
perf stat -e rs00073 -e rs00022 -e rs00061 -e rs00020 --output octane_cache_stats.txt --append /data/test/octane/d8 run_earleyboyer.js

perf stat -e r12082 -e r4 -e r10011 -e r10012 --output octane_cache_stats.txt --append /data/test/octane/d8 run_regexp.js
perf stat -e r120A0 -e r10010  -e r8 -e r11 --output octane_cache_stats.txt --append /data/test/octane/d8 run_regexp.js
perf stat -e rs00073 -e rs00022 -e rs00061 -e rs00020 --output octane_cache_stats.txt --append /data/test/octane/d8 run_regexp.js

perf stat -e r12082 -e r4 -e r10011 -e r10012 --output octane_cache_stats.txt --append /data/test/octane/d8 run_splay.js
perf stat -e r120A0 -e r10010  -e r8 -e r11 --output octane_cache_stats.txt --append /data/test/octane/d8 run_splay.js
perf stat -e rs00073 -e rs00022 -e rs00061 -e rs00020 --output octane_cache_stats.txt --append /data/test/octane/d8 run_splay.js

perf stat -e r12082 -e r4 -e r10011 -e r10012 --output octane_cache_stats.txt --append /data/test/octane/d8 run_navier-stokes.js
perf stat -e r120A0 -e r10010  -e r8 -e r11 --output octane_cache_stats.txt --append /data/test/octane/d8 run_navier-stokes.js
perf stat -e rs00073 -e rs00022 -e rs00061 -e rs00020 --output octane_cache_stats.txt --append /data/test/octane/d8 run_navier-stokes.js

perf stat -e r12082 -e r4 -e r10011 -e r10012 --output octane_cache_stats.txt --append /data/test/octane/d8 run_pdfjs.js
perf stat -e r120A0 -e r10010  -e r8 -e r11 --output octane_cache_stats.txt --append /data/test/octane/d8 run_pdfjs.js
perf stat -e rs00073 -e rs00022 -e rs00061 -e rs00020 --output octane_cache_stats.txt --append  /data/test/octane/d8 run_pdfjs.js

perf stat -e r12082 -e r4 -e r10011 -e r10012 --output octane_cache_stats.txt --append /data/test/octane/d8 run_mandreel.js
perf stat -e r120A0 -e r10010  -e r8 -e r11 --output octane_cache_stats.txt --append /data/test/octane/d8 run_mandreel.js
perf stat -e rs00073 -e rs00022 -e rs00061 -e rs00020 --output octane_cache_stats.txt --append /data/test/octane/d8 run_mandreel.js

perf stat -e r12082 -e r4 -e r10011 -e r10012 --output octane_cache_stats.txt --append /data/test/octane/d8 run_gbemu.js
perf stat -e r120A0 -e r10010  -e r8 -e r11 --output octane_cache_stats.txt --append /data/test/octane/d8 run_gbemu.js
perf stat -e rs00073 -e rs00022 -e rs00061 -e rs00020 --output octane_cache_stats.txt --append /data/test/octane/d8 run_gbemu.js

perf stat -e r12082 -e r4 -e r10011 -e r10012 --output octane_cache_stats.txt --append /data/test/octane/d8 run_code-load.js
perf stat -e r120A0 -e r10010  -e r8 -e r11 --output octane_cache_stats.txt --append /data/test/octane/d8 run_code-load.js
perf stat -e rs00073 -e rs00022 -e rs00061 -e rs00020 --output octane_cache_stats.txt --append  /data/test/octane/d8 run_code-load.js

perf stat -e r12082 -e r4 -e r10011 -e r10012 --output octane_cache_stats.txt --append /data/test/octane/d8 run_box2d.js
perf stat -e r120A0 -e r10010  -e r8 -e r11 --output octane_cache_stats.txt --append /data/test/octane/d8 run_box2d.js
perf stat -e rs00073 -e rs00022 -e rs00061 -e rs00020 --output octane_cache_stats.txt --append /data/test/octane/d8 run_box2d.js

perf stat -e r12082 -e r4 -e r10011 -e r10012 --output octane_cache_stats.txt --append /data/test/octane/d8 run_zlib.js
perf stat -e r120A0 -e r10010  -e r8 -e r11 --output octane_cache_stats.txt --append /data/test/octane/d8 run_zlib.js
perf stat -e rs00073 -e rs00022 -e rs00061 -e rs00020 --output octane_cache_stats.txt --append /data/test/octane/d8 run_zlib.js

perf stat -e r12082 -e r4 -e r10011 -e r10012 --output octane_cache_stats.txt --append /data/test/octane/d8 run_typescript.js
perf stat -e r120A0 -e r10010  -e r8 -e r11 --output octane_cache_stats.txt --append /data/test/octane/d8 run_typescript.js
perf stat -e rs00073 -e rs00022 -e rs00061 -e rs00020 --output octane_cache_stats.txt --append /data/test/octane/d8 run_typescript.js
