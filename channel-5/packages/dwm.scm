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
    (version "1.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://codeberg.org/nshan651/dwm/archive/ef4adc102fb1a1d0d416764e9885dae978f966ea.tar.gz")
       (sha256
        (base32 "0j9jhcxh0zymf5swc35hh611hvjh6fmc938f84rssx22b3ap3a03"))))
    (build-system gnu-build-system)
    (arguments
     (list
      #:tests? #f
      #:make-flags
      #~(list (string-append "PREFIX=" #$output)
              "CC=gcc"
              (string-append "FREETYPEINC=" #$(this-package-input "freetype") "/include/freetype2"
                             )
              )
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
