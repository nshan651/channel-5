(define-module (channel-5 packages clefd)
  #:use-module (channel-5 packages clefd-crates)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix git)
  #:use-module (guix import crate)
  #:use-module (guix build-system cargo)
  #:use-module (guix git-download)
  #:use-module (gnu packages pkg-config)
  #:use-module (gnu packages freedesktop)
  #:use-module (gnu packages linux)
  #:use-module (gnu packages xdisorg))

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
    ;; (source
    ;;  (git-checkout
    ;;   (url (string-append (getenv "HOME") "/git/clefd/main"))))
    (build-system cargo-build-system)
    (arguments
     (list #:tests? #f))
    (native-inputs (list pkg-config))
    (inputs (cons* libinput eudev libxkbcommon
                   (cargo-inputs 'clefd
                                 #:module '(channel-5 packages clefd-crates))))
    (home-page "https://github.com/nshan651/clefd")
    (synopsis "Universal keybindings manager daemon")
    (description "Clefd reads keyboard events via libinput and executes
commands based on user-defined keybindings.")
    (license license:expat)))
