(define-module (channel-5 packages emacs-aidermacs)
  #:use-module (guix packages)
  #:use-module (guix build-system emacs)
  #:use-module (guix download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages emacs)
  #:use-module (gnu packages emacs-xyz)
  #:use-module (gnu packages emacs-build))

(define-public emacs-aidermacs
  (package
   (name "emacs-aidermacs")
   (version "1.6")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://github.com/MatthewZMD/aidermacs/archive/refs/tags/v" version ".tar.gz"))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "00v7ngjliwzq3lk1pfdcri7in43v071aff6nrqj57ffnbklp59lp"))))
   (build-system emacs-build-system)
   (propagated-inputs (list emacs-transient
                            emacs-compat
                            emacs-markdown-mode))
   (home-page "https://github.com/MatthewZMD/aidermacs")
   (synopsis "AI pair programming in Emacs with Aider")
   (description "Aidermacs brings AI-powered development to Emacs by integrating Aider, one of the most powerful open-source AI pair programming tools.")
   (license license:asl2.0)))
