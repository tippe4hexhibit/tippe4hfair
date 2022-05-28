{ pkgs }: {
    deps = [
        pkgs.hugo
		pkgs.miniserve
        pkgs.openssh
    ];
}