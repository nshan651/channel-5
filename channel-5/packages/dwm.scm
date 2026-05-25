(define-module (channel-5 packages dwm)
  #:use-module (guix packages)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:)
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
             (commit "main")))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1zhjxa8i5ljxfk7cgk7vyhvpimqdy0n3b60igh8xp492vjgafaq8"))))
    (build-system gnu-build-system)
    (arguments
     (list
      #:tests? #f
      #:make-flags
      #~(list (string-append "CC=gcc")
              (string-append "PREFIX=" #$output))
      #:phases
      #~(modify-phases %standard-phases
          (delete 'configure)
          (replace 'install
            (lambda _
              (invoke "make" "install"))))))
    (inputs
     (list libx11 libxft libxinerama))
    (native-inputs
     (list pkg-config))
    (home-page "https://codeberg.org/nshan651/dwm")
    (synopsis "Dynamic window manager (custom build)")
    (description
     "dwm is a dynamic window manager for X. This is a custom build from
codeberg.org/nshan651/dwm.")
    (license license:expat)))
