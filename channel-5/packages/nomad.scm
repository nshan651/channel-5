(define-module (channel-5 packages nomad)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix build-system copy)
  #:use-module (gnu packages base)
  #:use-module (gnu packages elf)
  #:use-module (gnu packages compression))

;; Business Source License adopted by Nomad as of v1.1.
(define license:busl-1.1
  (license:license
   "BUSL 1.1"
   "https://raw.githubusercontent.com/hashicorp/nomad/main/LICENSE"
   "Business Source License 1.1 (nonfree); converts to MPL 2.0 at the
Change Date"))

;; Install prebuilt Nomad x86_64-linux release binary and wrap it in a shell
;; script to run through guix loader.
(define-public nomad
  (package
    (name "nomad")
    (version "2.0.7")
    (source
     (origin
       (method url-fetch)
       (uri (string-append
             "https://releases.hashicorp.com/nomad/"
             version "/nomad_" version "_linux_amd64.zip"))
       (file-name (string-append name "-" version ".zip"))
       (sha256
        (base32
         "1hb8ran8a6y6f0y58abpfym7g2yzdwz9pc5svfm9rzfna048m6sc"))))
    (build-system copy-build-system)
    (arguments
     (list
      #:validate-runpath? #f
      #:install-plan #~'(("nomad" "bin/nomad"))
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'install 'patch-elf-interpreter
            (lambda _
              (invoke
               #+(file-append patchelf "/bin/patchelf")
               "--set-interpreter"
               #$(file-append glibc "/lib/ld-linux-x86-64.so.2")
               (string-append #$output "/bin/nomad")))))))
    (native-inputs (list unzip))
    (supported-systems '("x86_64-linux"))
    (home-page "https://www.nomadproject.io")
    (synopsis "HashiCorp Nomad cluster scheduler")
    (description
     "This package installs the nomad binary (agent and CLI), a simple and
flexible scheduler and orchestrator, as a prebuilt Go binary from
HashiCorp's official releases.")
    (license license:busl-1.1)))
