(define-module (channel-5 packages opencode)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix build-system copy)
  #:use-module (gnu packages base)
  #:use-module (gnu packages elf))

;; Opencode is a Bun project and can't (yet) be built from source in Guix.
;; This installs the prebuilt x86_64-linux binary and patches its ELF
;; interpreter to the Guix loader.
(define-public opencode
  (package
    (name "opencode")
    (version "2.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (string-append
             "https://registry.npmjs.org/@opencode/cli-linux-x64/-/"
             "cli-linux-x64-" version ".tgz"))
       (file-name (string-append name "-" version ".tgz"))
       (sha256
        (base32
         "1crrs4qvvshfscbqndvfa1vk91vjcq8a7wi94drk3rc2brgnc71f"))))
    (build-system copy-build-system)
    (arguments
     (list
      ;; Stripping the embedded/JS payload in the Bun binary corrupts it.
      #:strip-binaries? #f
      ;; The prebuilt binary finds the loader via the patched ELF
      ;; interpreter, not via RUNPATH.
      #:validate-runpath? #f
      #:install-plan #~'(("bin/opencode" "bin/"))
      #:phases
      #~(modify-phases %standard-phases
          (add-after 'install 'patch-elf-interpreter
            (lambda _
              (invoke
               #+(file-append patchelf "/bin/patchelf")
               "--set-interpreter"
               #$(file-append glibc "/lib/ld-linux-x86-64.so.2")
               (string-append #$output "/bin/opencode")))))))
    (native-inputs (list patchelf))
    (inputs (list glibc))
    (supported-systems '("x86_64-linux"))
    (home-page "https://opencode.ai")
    (synopsis "AI coding agent built for the terminal")
    (description
     "This package installs the opencode CLI, the terminal coding agent from
the anomalyco/opencode project, as a prebuilt Bun single-file executable.")
    (license license:expat)))
