(define-module (channel-5 home services clefd)
  #:use-module (channel-5 packages clefd)
  #:use-module (gnu home services)
  #:use-module (gnu home services shepherd)
  #:use-module (gnu services)
  #:use-module (gnu services shepherd)
  #:use-module (guix gexp)
  #:use-module (guix records)
  #:export (home-clefd-configuration
            home-clefd-service-type))

(define-record-type* <home-clefd-configuration>
  home-clefd-configuration make-home-clefd-configuration
  home-clefd-configuration?
  (package   home-clefd-configuration-package
             (default clefd))
  (arguments home-clefd-configuration-arguments
             (default '())))

(define (home-clefd-shepherd-service config)
  (match-record config <home-clefd-configuration> (package arguments)
    (list (shepherd-service
           (documentation "Run the clefd daemon")
           (provision '(clefd))
           (start #~(make-forkexec-constructor
                     (list #$(file-append package "/bin/clefd")
                           #$@arguments)
                     #:log-file
                     (string-append
                      (or (getenv "XDG_STATE_HOME")
                          (string-append (getenv "HOME") "/.local/state"))
                      "/shepherd/clefd.log")))
           (stop #~(make-kill-destructor))))))

(define home-clefd-service-type
  (service-type
   (name 'home-clefd)
   (extensions
    (list (service-extension home-shepherd-service-type
                             home-clefd-shepherd-service)
          (service-extension home-profile-service-type
                             (compose list home-clefd-configuration-package))))
   (default-value (home-clefd-configuration))
   (description "Run and connect to clefd")))
