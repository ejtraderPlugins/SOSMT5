FROM vmlellis/mt5-base
MAINTAINER Victor Lellis <vmlellis@gmail.com>

USER xclient

RUN echo "WINEPREFIX=~/.wine64 wine64 ~/.wine64/drive_c/Program\ Files/MetaTrader\ 5/terminal64.exe" >> ~/mt5.sh
RUN echo "alias mt5='WINEPREFIX=~/.wine64 wine64 ~/.wine64/drive_c/Program\ Files/MetaTrader\ 5/terminal64.exe'" >> ~/.bashrc
CMD ~/mt5.sh
