(define-module (channel-5 packages clefd)
  #:use-module (guix licenses)
  #:use-module (guix packages)
  #:use-module (guix build-system cargo)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix git-download)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages xdisorg)
  #:use-module (gnu packages rust))

(define-public clefd
  (package
    (name "clefd")
    (version "0.1.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/nshan651/clefd")
             (commit "a2f13f504b4073c417fb5a0a2de7e090c2c2bec0")))
       (file-name (git-file-name name version))
       (sha256
        (base32
         "0j0lscrqljsqp9qkmwxcap7qmxf242rgxlml3mqqdybfnkjz2mxd"))))
    (build-system cargo-build-system)
    (native-inputs
     `(("pkg-config" ,pkg-config)))
    (inputs
     `(("libinput" ,libinput)
       ("eudev" ,eudev)
       ("libxkbcommon" ,libxkbcommon)
       ("rust" ,rust)))
    (home-page "https://github.com/nshan651/clefd")
    (synopsis "Universal keybindings manager daemon")
    (description "Clefd reads keyboard events via libinput and executes commands based on user-defined keybindings.")
    (license license:expat)))
clefd
