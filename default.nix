{ lib
, hyprland
, hyprlandPlugins
, hyprXPrimary
,
}:
hyprlandPlugins.mkHyprlandPlugin hyprland {
  pluginName = "hyprXPrimary";
  version = "0.1";
  src = hyprXPrimary;

  inherit (hyprland) nativeBuildInputs;

  meta = with lib; {
    homepage = "https://github.com/zakk4223/hyprXPrimary";
    description = "Set XWayland primary monitor for Hyprland";
    license = licenses.bsd3;
    platforms = platforms.linux;
  };
}
