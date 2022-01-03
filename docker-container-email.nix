{ config, pkgs, ... }:

{
    # containers backend it set in the main configuration.nix
	# if you are using stins standalone here is the option
	# vitrualisation.oci-containers.backend = "docker";

	virtualisation.oci-containers.containers."debian-test" = {
		# pull a debian docker image
		image = "debian:latest";

		# commandline opts DON'T SET YET
		# extraOptions = [ "-p 80:80" ];

		environment = {
			TZ = "America/Denver";
		};

		# map container port 80 to host port 80
		ports = [
			"80:80/tcp"
		];

		# autostart container
		autoStart = true;
	};
}
