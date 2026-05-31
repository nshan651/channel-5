(define-module (channel-5 packages st)
  #:use-module (guix packages)
  #:use-module (guix gexp)
  #:use-module (guix download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages xorg)
  #:use-module (gnu packages gtk)
  #:use-module (gnu packages ncurses))

(define-public st
  (package
   (name "st")
   (version "0.8.5")
   (source
    (origin
     (method url-fetch)
     (uri "https://codeberg.org/nshan651/st/archive/62701bda3d1622694cc45c9c83725c30b87734c6.tar.gz")
     (sha256
      (base32 "00j55z2vvb8vcz1krv1falp3pg18pp50xq4jvsxfkis2z8cl95qh"))))
   (build-system gnu-build-system)
   (arguments
    (list
     #:tests? #f
     #:make-flags
     #~(list (string-append "PREFIX=" #$output)
             "CC=gcc")
     #:phases
     #~(modify-phases %standard-phases
                      (delete 'configure)
                      (add-after 'unpack 'patch-makefile
                                 (lambda _
                                   (substitute* "Makefile"
                                                (("tic -sx st\\.info") "true"))))
                      (add-after 'install 'install-terminfo
                                 (lambda _
                                   (invoke "tic" "-sx" "-o"
                                           (string-append #$output "/share/terminfo")
                                           "st.info"))))))

   (inputs
    (list libx11 libxft libxrender fontconfig freetype harfbuzz))
   (native-inputs
    (list ncurses pkg-config))
   (home-page "https://codeberg.org/nshan651/st")
   (synopsis "Simple terminal (custom build)")
   (description
    "st is a simple terminal emulator for X. This is a custom build from
codeberg.org/nshan651/st.")
   (license license:expat)))
