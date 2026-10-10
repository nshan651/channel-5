(define-module (channel-5 packages clefd-crates)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system cargo)
  #:export (lookup-cargo-inputs))

(define rust-aho-corasick-1.1.5
  (crate-source "aho-corasick" "1.1.5"
                "1fhjkp2nbs7gg4y1b68hpc8028rpax8aiscfh9b60q78m4pn90n9"))

(define rust-anstream-1.0.0
  (crate-source "anstream" "1.0.0"
                "13d2bj0xfg012s4rmq44zc8zgy1q8k9yp7yhvfnarscnmwpj2jl2"))

(define rust-anstyle-1.0.14
  (crate-source "anstyle" "1.0.14"
                "0030szmgj51fxkic1hpakxxgappxzwm6m154a3gfml83lq63l2wl"))

(define rust-anstyle-parse-1.0.0
  (crate-source "anstyle-parse" "1.0.0"
                "03hkv2690s0crssbnmfkr76kw1k7ah2i6s5amdy9yca2n8w7zkjj"))

(define rust-anstyle-query-1.1.5
  (crate-source "anstyle-query" "1.1.5"
                "1p6shfpnbghs6jsa0vnqd8bb8gd7pjd0jr7w0j8jikakzmr8zi20"))

(define rust-anstyle-wincon-3.0.11
  (crate-source "anstyle-wincon" "3.0.11"
                "0zblannm70sk3xny337mz7c6d8q8i24vhbqi42ld8v7q1wjnl7i9"))

(define rust-anyhow-1.0.104
  (crate-source "anyhow" "1.0.104"
                "0w34jjcm02p5g9kvsjr1dvpw0zs2fi7igi6nr414fkm5gz85w2ik"))

(define rust-bitflags-1.3.2
  (crate-source "bitflags" "1.3.2"
                "12ki6w8gn1ldq7yz9y680llwk5gmrhrzszaa17g1sbrw2r2qvwxy"))

(define rust-bitflags-2.13.2
  (crate-source "bitflags" "2.13.2"
                "01hbgjwvid66850fzi76mvn5f2bqycx6sf165ng1kfjqq9bl1v9x"))

(define rust-cfg-if-1.0.5
  (crate-source "cfg-if" "1.0.5"
                "0026j56901nzjraap3da0a8njw42j66zcxnn6s2s9aa5bcblhxjf"))

(define rust-cfg-aliases-0.2.2
  (crate-source "cfg_aliases" "0.2.2"
                "09rm3dv28gbsal7w6q76lg2nfyn8wp789ska9b8vr1w750xfhygh"))

(define rust-clap-4.6.7
  (crate-source "clap" "4.6.7"
                "0il98y2rfw75984ck59znd4n592p07bxz8yy3a9blddb02rpd25a"))

(define rust-clap-builder-4.6.7
  (crate-source "clap_builder" "4.6.7"
                "0kbhai5rv1vj9r4np52g2b9fmhvy3y82digs9v40c57bgbxrf1zc"))

(define rust-clap-derive-4.6.7
  (crate-source "clap_derive" "4.6.7"
                "1q36bgbkfb9rdz7jcvd0ffv0wwlyw0lg3z6iwdcybm0mjjvm3izr"))

(define rust-clap-lex-1.1.1
  (crate-source "clap_lex" "1.1.1"
                "11k4m4ngn39iz39lnq6nn6kyxzp62mnm1d86qfad3q0vlk33n4qw"))

(define rust-colorchoice-1.0.5
  (crate-source "colorchoice" "1.0.5"
                "0w75k89hw39p0mnnhlrwr23q50rza1yjki44qvh2mgrnj065a1qx"))

(define rust-defmt-1.1.1
  (crate-source "defmt" "1.1.1"
                "1lc8xlfj700xqjmvp7n9hhc1czgpaqkq960iqw6d5fwk9zz3p5g2"))

(define rust-defmt-macros-1.1.1
  (crate-source "defmt-macros" "1.1.1"
                "1s2zkcbaj1l306ph1n1gsfm6vzc2sah4acl1qc6pw4x2ghpcgnds"))

(define rust-defmt-parser-1.0.0
  (crate-source "defmt-parser" "1.0.0"
                "0gpfky9sssil5qfaix5wxcwiqk7snszhl5gq3vcwkrxjncs07mhh"))

(define rust-dirs-6.0.0
  (crate-source "dirs" "6.0.0"
                "0knfikii29761g22pwfrb8d0nqpbgw77sni9h2224haisyaams63"))

(define rust-dirs-sys-0.5.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "dirs-sys" "0.5.0"
                "1aqzpgq6ampza6v012gm2dppx9k35cdycbj54808ksbys9k366p0"))

(define rust-env-filter-2.0.0
  (crate-source "env_filter" "2.0.0"
                "05s267np8pphhpxzrzl4j956gjj87f4ik6yas7l1x6kr0cd2f3ch"))

(define rust-env-logger-0.11.11
  (crate-source "env_logger" "0.11.11"
                "1xnkbhnlwf45a6val2340bi7avi7fwgbm2g2kbf9g9vmgb91nryy"))

(define rust-errno-0.3.14
  (crate-source "errno" "0.3.14"
                "1szgccmh8vgryqyadg8xd58mnwwicf39zmin3bsn63df2wbbgjir"))

(define rust-fastrand-2.5.0
  (crate-source "fastrand" "2.5.0"
                "08q2r30y62winysimnlpbvw9kiwn0rmdlidqlmzd6z90mv764z6s"))

(define rust-fsevent-sys-4.1.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "fsevent-sys" "4.1.0"
                "1liz67v8b0gcs8r31vxkvm2jzgl9p14i78yfqx81c8sdv817mvkn"))

(define rust-getrandom-0.4.3
  (crate-source "getrandom" "0.4.3"
                "16b0202fkdwz3p2cyll82dv24ljbn0wiyy829v4lwbkbflyqh3ih"))

(define rust-heck-0.5.0
  (crate-source "heck" "0.5.0"
                "1sjmpsdl8czyh9ywl3qcsfsq9a307dg4ni2vnlwgnzzqhc4y0113"))

(define rust-hermit-abi-0.3.9
  (crate-source "hermit-abi" "0.3.9"
                "092hxjbjnq5fmz66grd9plxd0sh6ssg5fhgwwwqbrzgzkjwdycfj"))

(define rust-inotify-0.11.5
  (crate-source "inotify" "0.11.5"
                "14p5gkhk95yk536zncfrjywy2yxrxf06yrfsnx89bd6a0ylhxh2c"))

(define rust-inotify-sys-0.1.8
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "inotify-sys" "0.1.8"
                "0zgkxmqa7wlsc348166rr9np4560rflzlcvsmf8xyg0i5h5zhcy0"))

(define rust-input-0.8.3
  (crate-source "input" "0.8.3"
                "0ndhy09m3n2wphn784ic9n61i3y4plvq6aklg3dndkgd5kc4rrz6"))

(define rust-input-sys-1.19.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "input-sys" "1.19.0"
                "1rqrrglhgyyiy7xh8jvf9jwh2dyk2g7l5rmjaazrbg82iryy1vin"))

(define rust-io-lifetimes-1.0.11
  (crate-source "io-lifetimes" "1.0.11"
                "1hph5lz4wd3drnn6saakwxr497liznpfnv70via6s0v8x6pbkrza"))

(define rust-is-terminal-polyfill-1.70.2
  (crate-source "is_terminal_polyfill" "1.70.2"
                "15anlc47sbz0jfs9q8fhwf0h3vs2w4imc030shdnq54sny5i7jx6"))

(define rust-jiff-0.2.38
  (crate-source "jiff" "0.2.38"
                "10x38b9qb1b47mq54d9j4ljkpk7i5ygvknn0lf4h1sybbmqhbc5j"))

(define rust-jiff-core-0.1.1
  (crate-source "jiff-core" "0.1.1"
                "130jqxlbrmll1ahvm9lwr06grmzpmnx5wc6j0n8crkiw0ivgwljy"))

(define rust-jiff-static-0.2.38
  (crate-source "jiff-static" "0.2.38"
                "0p39a035j9c634llmr8lh1jz7ml8gqrbsla4d3j7wz6gadr83j9c"))

(define rust-kqueue-1.2.1
  (crate-source "kqueue" "1.2.1"
                "1sj11bbz5kx73m0bzkmwzfmmlxjnh4q94v6ya3gls2qj4idkwxld"))

(define rust-kqueue-sys-1.1.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "kqueue-sys" "1.1.2"
                "11xhzsgwc82g85072c6m8nimxxqkax4n40sikcsk9hks5573la87"))

(define rust-libc-0.2.190
  (crate-source "libc" "0.2.190"
                "0y5yap4bfp7rfsldcbk9pb5alcgygca5xn1n2pmh181zdpf3spff"))

(define rust-libredox-0.1.25
  (crate-source "libredox" "0.1.25"
                "078pc91l1c1w9hbzi7m4ph5qjnk4i2zgsqhg4hx80yh7yv591zv1"))

(define rust-libudev-sys-0.1.4
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "libudev-sys" "0.1.4"
                "09236fdzlx9l0dlrsc6xx21v5x8flpfm3d5rjq9jr5ivlas6k11w"))

(define rust-linux-raw-sys-0.12.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "linux-raw-sys" "0.12.1"
                "0lwasljrqxjjfk9l2j8lyib1babh2qjlnhylqzl01nihw14nk9ij"))

(define rust-log-0.4.34
  (crate-source "log" "0.4.34"
                "1ihkzn0m33ab79fcl4mkb04n5iwqzbxzyw7l7hazqkffaqzbvy7r"))

(define rust-memchr-2.8.3
  (crate-source "memchr" "2.8.3"
                "161xa63ipfanf8v3nb82xd5hqgydv55nzw59wyngqbz6alfaz2yg"))

(define rust-memmap2-0.8.0
  (crate-source "memmap2" "0.8.0"
                "1vf3djv9s917fbvw5vclllpl22g12iph6cz11gn57ndhxwya19a3"))

(define rust-mio-1.2.4
  (crate-source "mio" "1.2.4"
                "1vl6px9zy0pwhlwnw3cknsqyzkg8bcpiwiq4cgicf2fwgywfv20p"))

(define rust-nix-0.30.1
  (crate-source "nix" "0.30.1"
                "1dixahq9hk191g0c2ydc0h1ppxj0xw536y6rl63vlnp06lx3ylkl"))

(define rust-notify-8.2.0
  (crate-source "notify" "8.2.0"
                "1hrb83451vm5cpjw83nz5skgwjg5ara28zq8nxsqbzsif690fgad"))

(define rust-notify-types-2.1.0
  (crate-source "notify-types" "2.1.0"
                "0yj710mxd4lsaz4hq7601mh6xb02awb8hg4z6lvh76ik1vpczf22"))

(define rust-once-cell-1.21.4
  (crate-source "once_cell" "1.21.4"
                "0l1v676wf71kjg2khch4dphwh1jp3291ffiymr2mvy1kxd5kwz4z"))

(define rust-once-cell-polyfill-1.70.2
  (crate-source "once_cell_polyfill" "1.70.2"
                "1zmla628f0sk3fhjdjqzgxhalr2xrfna958s632z65bjsfv8ljrq"))

(define rust-option-ext-0.2.0
  (crate-source "option-ext" "0.2.0"
                "0zbf7cx8ib99frnlanpyikm1bx8qn8x602sw1n7bg6p9x94lyx04"))

(define rust-pkg-config-0.3.34
  (crate-source "pkg-config" "0.3.34"
                "0j05h08nzg0q8rf6lzw7nry0b7kn7x97vc9n4hwrl52fqzxn9d7n"))

(define rust-portable-atomic-1.15.0
  (crate-source "portable-atomic" "1.15.0"
                "11csag858ndk5w4yz17h91vy53ynh67r2903gwwdn2cnilzbdj05"))

(define rust-portable-atomic-util-0.2.8
  (crate-source "portable-atomic-util" "0.2.8"
                "059729m166s1ccvqfyj6lv0wz5kr4qh6yb2gphf3mk5yyfvkxaqh"))

(define rust-proc-macro2-1.0.107
  (crate-source "proc-macro2" "1.0.107"
                "1nb6ly8kp65f724kj73ippc7lvydss24sm2vagk6qpklpg4pwplq"))

(define rust-quote-1.0.47
  (crate-source "quote" "1.0.47"
                "00ch0yyzvv6s671ik0kcsbw8nigdaj2g3fr61kcahwx48aqlvgqz"))

(define rust-r-efi-6.0.0
  (crate-source "r-efi" "6.0.0"
                "1gyrl2k5fyzj9k7kchg2n296z5881lg7070msabid09asp3wkp7q"))

(define rust-redox-users-0.5.3
  (crate-source "redox_users" "0.5.3"
                "1h4g0g0zlyvqf40kf420812bcw5g9gqvjrqc9cly2yhszz06bp30"))

(define rust-regex-1.13.1
  (crate-source "regex" "1.13.1"
                "1391a0a4100ik8cp7l577p3ip3haqq03rd9c5vdr7vcfdixj687h"))

(define rust-regex-automata-0.4.18
  (crate-source "regex-automata" "0.4.18"
                "1cml0rm0ssqfkibh9nh3gy4b6hbsbicj1rihpwf2a4v4nawm71dd"))

(define rust-regex-syntax-0.8.11
  (crate-source "regex-syntax" "0.8.11"
                "1m25h5q2wp976fb9gc3dsc9l99svcvd5cri8lncb51c46ydgzxnn"))

(define rust-rustix-1.1.5
  (crate-source "rustix" "1.1.5"
                "17b2srw7rcqmrs1shj89g8i3r1447lihv7qrbxvp11j1psxgl7l9"))

(define rust-same-file-1.0.6
  (crate-source "same-file" "1.0.6"
                "00h5j1w87dmhnvbv9l8bic3y7xxsnjmssvifw2ayvgx9mb1ivz4k"))

(define rust-serde-core-1.0.229
  (crate-source "serde_core" "1.0.229"
                "0j1ajiha76h3nmd976il9li6975k121xa7jb39ws8n0yqp4s5p37"))

(define rust-serde-derive-1.0.229
  (crate-source "serde_derive" "1.0.229"
                "0j4k63i7h1bikxwz2c89ig0hrwbnl9mz1czn85xx99x5cc9dg9g7"))

(define rust-signal-hook-0.3.18
  (crate-source "signal-hook" "0.3.18"
                "1qnnbq4g2vixfmlv28i1whkr0hikrf1bsc4xjy2aasj2yina30fq"))

(define rust-signal-hook-registry-1.4.8
  (crate-source "signal-hook-registry" "1.4.8"
                "06vc7pmnki6lmxar3z31gkyg9cw7py5x9g7px70gy2hil75nkny4"))

(define rust-strsim-0.11.1
  (crate-source "strsim" "0.11.1"
                "0kzvqlw8hxqb7y598w1s0hxlnmi84sg5vsipp3yg5na5d1rvba3x"))

(define rust-syn-2.0.119
  (crate-source "syn" "2.0.119"
                "15vjy620l91a3q4n4f4gzhnflmdr6pnm38v2m6cpk86i8av32a47"))

(define rust-syn-3.0.6
  (crate-source "syn" "3.0.6"
                "1vmw7s58rzrs926nv5m06x7qbgswm1aa9iw3s1bj5var47kyi4w5"))

(define rust-tempfile-3.27.0
  (crate-source "tempfile" "3.27.0"
                "1gblhnyfjsbg9wjg194n89wrzah7jy3yzgnyzhp56f3v9jd7wj9j"))

(define rust-thiserror-2.0.21
  (crate-source "thiserror" "2.0.21"
                "17hq1lh5dyr3bkc7zzjrbrp4qgkvhc48kgq1n5fdxkindaw2rr89"))

(define rust-thiserror-impl-2.0.21
  (crate-source "thiserror-impl" "2.0.21"
                "0945n8agp7kg6n6b35yyjb4g5xv2q22vrw15h6jj1nw76a99flgy"))

(define rust-udev-0.7.0
  (crate-source "udev" "0.7.0"
                "06hr927z0fdn7ay0p817b9x19i5fagmpmvz95yhl4d1pf3bbpgaf"))

(define rust-unicode-ident-1.0.26
  (crate-source "unicode-ident" "1.0.26"
                "0m3915ipi4zz7isncf5k1dz47ys0nq9j7l4l2n2rm03zaxwg8ifj"))

(define rust-utf8parse-0.2.2
  (crate-source "utf8parse" "0.2.2"
                "088807qwjq46azicqwbhlmzwrbkz7l4hpw43sdkdyyk524vdxaq6"))

(define rust-walkdir-2.5.0
  (crate-source "walkdir" "2.5.0"
                "0jsy7a710qv8gld5957ybrnc07gavppp963gs32xk4ag8130jy99"))

(define rust-wasi-0.11.1+wasi-snapshot-preview1
  (crate-source "wasi" "0.11.1+wasi-snapshot-preview1"
                "0jx49r7nbkbhyfrfyhz0bm4817yrnxgd3jiwwwfv0zl439jyrwyc"))

(define rust-winapi-util-0.1.11
  (crate-source "winapi-util" "0.1.11"
                "08hdl7mkll7pz8whg869h58c1r9y7in0w0pk8fm24qc77k0b39y2"))

(define rust-windows-link-0.2.1
  (crate-source "windows-link" "0.2.1"
                "1rag186yfr3xx7piv5rg8b6im2dwcf8zldiflvb22xbzwli5507h"))

(define rust-windows-sys-0.48.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.48.0"
                "1aan23v5gs7gya1lc46hqn9mdh8yph3fhxmhxlw36pn6pqc28zb7"))

(define rust-windows-sys-0.60.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.60.2"
                "1jrbc615ihqnhjhxplr2kw7rasrskv9wj3lr80hgfd42sbj01xgj"))

(define rust-windows-sys-0.61.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.61.2"
                "1z7k3y9b6b5h52kid57lvmvm05362zv1v8w0gc7xyv5xphlp44xf"))

(define rust-windows-targets-0.48.5
  (crate-source "windows-targets" "0.48.5"
                "034ljxqshifs1lan89xwpcy1hp0lhdh4b5n0d2z4fwjx2piacbws"))

(define rust-windows-targets-0.53.5
  (crate-source "windows-targets" "0.53.5"
                "1wv9j2gv3l6wj3gkw5j1kr6ymb5q6dfc42yvydjhv3mqa7szjia9"))

(define rust-windows-aarch64-gnullvm-0.48.5
  (crate-source "windows_aarch64_gnullvm" "0.48.5"
                "1n05v7qblg1ci3i567inc7xrkmywczxrs1z3lj3rkkxw18py6f1b"))

(define rust-windows-aarch64-gnullvm-0.53.1
  (crate-source "windows_aarch64_gnullvm" "0.53.1"
                "0lqvdm510mka9w26vmga7hbkmrw9glzc90l4gya5qbxlm1pl3n59"))

(define rust-windows-aarch64-msvc-0.48.5
  (crate-source "windows_aarch64_msvc" "0.48.5"
                "1g5l4ry968p73g6bg6jgyvy9lb8fyhcs54067yzxpcpkf44k2dfw"))

(define rust-windows-aarch64-msvc-0.53.1
  (crate-source "windows_aarch64_msvc" "0.53.1"
                "01jh2adlwx043rji888b22whx4bm8alrk3khjpik5xn20kl85mxr"))

(define rust-windows-i686-gnu-0.48.5
  (crate-source "windows_i686_gnu" "0.48.5"
                "0gklnglwd9ilqx7ac3cn8hbhkraqisd0n83jxzf9837nvvkiand7"))

(define rust-windows-i686-gnu-0.53.1
  (crate-source "windows_i686_gnu" "0.53.1"
                "18wkcm82ldyg4figcsidzwbg1pqd49jpm98crfz0j7nqd6h6s3ln"))

(define rust-windows-i686-gnullvm-0.53.1
  (crate-source "windows_i686_gnullvm" "0.53.1"
                "030qaxqc4salz6l4immfb6sykc6gmhyir9wzn2w8mxj8038mjwzs"))

(define rust-windows-i686-msvc-0.48.5
  (crate-source "windows_i686_msvc" "0.48.5"
                "01m4rik437dl9rdf0ndnm2syh10hizvq0dajdkv2fjqcywrw4mcg"))

(define rust-windows-i686-msvc-0.53.1
  (crate-source "windows_i686_msvc" "0.53.1"
                "1hi6scw3mn2pbdl30ji5i4y8vvspb9b66l98kkz350pig58wfyhy"))

(define rust-windows-x86-64-gnu-0.48.5
  (crate-source "windows_x86_64_gnu" "0.48.5"
                "13kiqqcvz2vnyxzydjh73hwgigsdr2z1xpzx313kxll34nyhmm2k"))

(define rust-windows-x86-64-gnu-0.53.1
  (crate-source "windows_x86_64_gnu" "0.53.1"
                "16d4yiysmfdlsrghndr97y57gh3kljkwhfdbcs05m1jasz6l4f4w"))

(define rust-windows-x86-64-gnullvm-0.48.5
  (crate-source "windows_x86_64_gnullvm" "0.48.5"
                "1k24810wfbgz8k48c2yknqjmiigmql6kk3knmddkv8k8g1v54yqb"))

(define rust-windows-x86-64-gnullvm-0.53.1
  (crate-source "windows_x86_64_gnullvm" "0.53.1"
                "1qbspgv4g3q0vygkg8rnql5c6z3caqv38japiynyivh75ng1gyhg"))

(define rust-windows-x86-64-msvc-0.48.5
  (crate-source "windows_x86_64_msvc" "0.48.5"
                "0f4mdp895kkjh9zv8dxvn4pc10xr7839lf5pa9l0193i2pkgr57d"))

(define rust-windows-x86-64-msvc-0.53.1
  (crate-source "windows_x86_64_msvc" "0.53.1"
                "0l6npq76vlq4ksn4bwsncpr8508mk0gmznm6wnhjg95d19gzzfyn"))

(define rust-xkbcommon-0.7.0
  (crate-source "xkbcommon" "0.7.0"
                "07n9shhcls66wjvmk5pzqql46ipfdv7b8hbc384wgv9hk4jpv1hk"))

(define rust-xkeysym-0.2.1
  (crate-source "xkeysym" "0.2.1"
                "0mksx670cszyd7jln6s7dhkw11hdfv7blwwr3isq98k22ljh1k5r"))

(define-cargo-inputs lookup-cargo-inputs
  (clefd =>
         (list
          rust-aho-corasick-1.1.5
          rust-anstream-1.0.0
          rust-anstyle-1.0.14
          rust-anstyle-parse-1.0.0
          rust-anstyle-query-1.1.5
          rust-anstyle-wincon-3.0.11
          rust-anyhow-1.0.104
          rust-bitflags-1.3.2
          rust-bitflags-2.13.2
          rust-cfg-if-1.0.5
          rust-cfg-aliases-0.2.2
          rust-clap-4.6.7
          rust-clap-builder-4.6.7
          rust-clap-derive-4.6.7
          rust-clap-lex-1.1.1
          rust-colorchoice-1.0.5
          rust-defmt-1.1.1
          rust-defmt-macros-1.1.1
          rust-defmt-parser-1.0.0
          rust-dirs-6.0.0
          rust-dirs-sys-0.5.0
          rust-env-filter-2.0.0
          rust-env-logger-0.11.11
          rust-errno-0.3.14
          rust-fastrand-2.5.0
          rust-fsevent-sys-4.1.0
          rust-getrandom-0.4.3
          rust-heck-0.5.0
          rust-hermit-abi-0.3.9
          rust-inotify-0.11.5
          rust-inotify-sys-0.1.8
          rust-input-0.8.3
          rust-input-sys-1.19.0
          rust-io-lifetimes-1.0.11
          rust-is-terminal-polyfill-1.70.2
          rust-jiff-0.2.38
          rust-jiff-core-0.1.1
          rust-jiff-static-0.2.38
          rust-kqueue-1.2.1
          rust-kqueue-sys-1.1.2
          rust-libc-0.2.190
          rust-libredox-0.1.25
          rust-libudev-sys-0.1.4
          rust-linux-raw-sys-0.12.1
          rust-log-0.4.34
          rust-memchr-2.8.3
          rust-memmap2-0.8.0
          rust-mio-1.2.4
          rust-nix-0.30.1
          rust-notify-8.2.0
          rust-notify-types-2.1.0
          rust-once-cell-1.21.4
          rust-once-cell-polyfill-1.70.2
          rust-option-ext-0.2.0
          rust-pkg-config-0.3.34
          rust-portable-atomic-1.15.0
          rust-portable-atomic-util-0.2.8
          rust-proc-macro2-1.0.107
          rust-quote-1.0.47
          rust-r-efi-6.0.0
          rust-redox-users-0.5.3
          rust-regex-1.13.1
          rust-regex-automata-0.4.18
          rust-regex-syntax-0.8.11
          rust-rustix-1.1.5
          rust-same-file-1.0.6
          rust-serde-core-1.0.229
          rust-serde-derive-1.0.229
          rust-signal-hook-0.3.18
          rust-signal-hook-registry-1.4.8
          rust-strsim-0.11.1
          rust-syn-2.0.119
          rust-syn-3.0.6
          rust-tempfile-3.27.0
          rust-thiserror-2.0.21
          rust-thiserror-impl-2.0.21
          rust-udev-0.7.0
          rust-unicode-ident-1.0.26
          rust-utf8parse-0.2.2
          rust-walkdir-2.5.0
          rust-wasi-0.11.1+wasi-snapshot-preview1
          rust-winapi-util-0.1.11
          rust-windows-link-0.2.1
          rust-windows-sys-0.48.0
          rust-windows-sys-0.60.2
          rust-windows-sys-0.61.2
          rust-windows-targets-0.48.5
          rust-windows-targets-0.53.5
          rust-windows-aarch64-gnullvm-0.48.5
          rust-windows-aarch64-gnullvm-0.53.1
          rust-windows-aarch64-msvc-0.48.5
          rust-windows-aarch64-msvc-0.53.1
          rust-windows-i686-gnu-0.48.5
          rust-windows-i686-gnu-0.53.1
          rust-windows-i686-gnullvm-0.53.1
          rust-windows-i686-msvc-0.48.5
          rust-windows-i686-msvc-0.53.1
          rust-windows-x86-64-gnu-0.48.5
          rust-windows-x86-64-gnu-0.53.1
          rust-windows-x86-64-gnullvm-0.48.5
          rust-windows-x86-64-gnullvm-0.53.1
          rust-windows-x86-64-msvc-0.48.5
          rust-windows-x86-64-msvc-0.53.1
          rust-xkbcommon-0.7.0
          rust-xkeysym-0.2.1)))
