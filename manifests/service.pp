class tomcat::service inherits tomcat {
    
    service{ $::tomcat::service_name :
        require     => Package["tomcat"],
        ensure      => $::tomcat::service_state,
        enable      => true,
    }

}