(define-module (channel-5 packages dwm)
  #:use-module (guix packages)
  #:use-module (guix gexp)
  #:use-module (guix download)
  #:use-module (guix build-system gnu)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages fontutils)
  #:use-module (gnu packages xorg))

(define-public dwm
  (package
   (name "dwm")
   (version "6.2")
   (source
    (origin
     (method url-fetch)
     (uri "https://codeberg.org/nshan651/dwm/archive/e3a613de419f8e19f357e404427b74b443f663e5.tar.gz")
     (sha256
      (base32 "1hibhcwccvvqv0i8nyw0pslvbrv23mrfi0spad31g4bn62390g8j"))))
   (build-system gnu-build-system)
   (arguments
    (list
     #:tests? #f
     #:make-flags
     #~(list (string-append "PREFIX=" #$output)
             "CC=gcc"
             (string-append "FREETYPEINC="
                            #$(this-package-input "freetype")
                            "/include/freetype2"))
     #:phases
     #~(modify-phases %standard-phases
                      (delete 'configure))))
   (inputs
    (list libx11 libxft libxinerama libxcb freetype))
   (native-inputs
    (list pkg-config))
   (home-page "https://codeberg.org/nshan651/dwm")
   (synopsis "Dynamic window manager (custom build)")
   (description
    "dwm is a dynamic window manager for X. This is a custom build from
codeberg.org/nshan651/dwm.")
   (license license:expat)))
