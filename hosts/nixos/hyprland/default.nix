{pkgs, ...}:
{
  programs.hyprland = {    
    enable = true;    
    xwayland.enable = true;  
  }; 

  programs.light.enable = true;
  services.actkbd = {
    enable = true;
    bindings = [
      { keys = [ 224 ]; events = [ "key" ]; command = "/run/current-system/sw/bin/light -U 10"; }
      { keys = [ 225 ]; events = [ "key" ]; command = "/run/current-system/sw/bin/light -A 10"; }
    ];
  };
  
  environment.systemPackages = with pkgs; [

  ];
}


