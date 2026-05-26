(define-module (channel-5 packages dwm)
  #:use-module (guix packages)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages xorg))

(define-public dwm
  (package
    (name "dwm")
    (version "1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://codeberg.org/nshan651/dwm.git")
             (commit "ef4adc102fb1a1d0d416764e9885dae978f966ea")))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1xxva5wxpdiac3jc26yvh7bx945wjkm32mav8pr4xqxlv40zrgsc"))))
    (build-system gnu-build-system)
    (arguments
     (list
      #:tests? #f
      #:make-flags
      #~(list (string-append "PREFIX=" #$output))
      #:phases
      #~(modify-phases %standard-phases
          (delete 'configure))))
    (inputs
     (list libx11 libxft libxinerama libxcb))
    (native-inputs
     (list pkg-config))
    (home-page "https://codeberg.org/nshan651/dwm")
    (synopsis "Dynamic window manager (custom build)")
    (description
     "dwm is a dynamic window manager for X. This is a custom build from
codeberg.org/nshan651/dwm.")
    (license license:expat)))
