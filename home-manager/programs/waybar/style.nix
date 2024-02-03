{ config, ... }:
with config.lib.stylix.colors; {
    programs.waybar.style = ''
        @define-color base      #${base00};
        @define-color crust     #${base01};

        @define-color color0    #${base05};
        @define-color color1    @color0;
        @define-color color2    #${base07};
        @define-color color3    @color0;
        @define-color color4    #${base08};
        @define-color color5    @color0;
        @define-color color6    @color0;
        @define-color color7    @color0;
        @define-color color8    #${base01};
        @define-color color9    @color0;

        * {
          border: none;
          font-family: CommitMono Nerd Font;
          font-size: 14px;
          min-height: 0;
        }

        window#waybar {
          background: @base;
          color: @color8;
        }

        tooltip {
          background: @base;
          border-color: @crust;
          border-radius: 10px;
          border-style: solid;
          border-width: 2px;
        }

        #backlight,
        #cpu,
        #custom-swaync,
        #memory,
        #network,
        #pulseaudio,
        #tray,
        #clock,
        #window,
        #mpris,
        #workspaces {
          background: @crust;
          border-radius: 8px;
          border: 1px solid @crust;
          font-weight: 600;
          margin: 6px 0 6px 0;
          padding: 3.5px 16px;
        }

        #tray {
          margin-right: 10px;
          padding-left: 10px;
          padding-right: 10px;
        }

        #workspaces {
          font-weight: Bold;
          margin-left: 10px;
          margin-right: 10px;
          padding-left: 3.5px;
          padding-right: 3.5px;
        }

        #workspaces :nth-child(5) {
          margin-right: 0px;
        }

        #workspaces button {
          border-radius: 6px;
          color: @color9;
          padding: 6px;
          margin-right: 5px;
        }

        #workspaces button.active {
          background: @color2;
          color: @color8;
        }

        #workspaces button.focused {
          background: @color7;
          color: @color8;
        }

        #workspaces button.urgent {
          background: @color4;
          color: @color8;
        }

        #workspaces button:hover {
          background: @crust;
          color: @color7;
        }

        #window {
          background: transparent;
          border-radius: 10px;
          margin-left: 60px;
          margin-right: 60px;
        }

        #cpu,
        #memory {
          color: @color1;
        }

        #cpu {
          border-top-right-radius: 0;
          border-bottom-right-radius: 0;
          padding-right: 0;
        }

        #memory {
          border-top-left-radius: 0;
          border-bottom-left-radius: 0;
        }

        #mpris {
          color: @color7;
          margin-left: 10px;
        }

        #clock {
          border-right: 0px;
          color: @color6;
          font-weight: 600;
          margin-right: 10px;
        }

        #custom-swaync {
          color: @color1;
          margin-right: 10px;
          margin-right: 10px;
          padding-right: 18px;
        }

        #network {
          color: @color3;
          margin-right: 10px;
        }

        #pulseaudio {
          border-left: 0px;
          border-right: 0px;
          color: @color5;
          margin-right: 10px;
        }
    '';
}
