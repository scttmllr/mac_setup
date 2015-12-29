###############################################################################
# STM BASH CONFIGURATION
###############################################################################

## Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

## System settings
##ulimit -s unlimited

###############################################################################
# COMMAND PROMPT
###############################################################################

#ENABLE COLORED OUTPUT FROM LS
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
##dxfxcxdxbxegedabagacad
export TERM=xterm-color

# SET COLORS FOR PROMPT
##source ~/.bash_colors

# Set command-line prompt
#PS1="\[$txtblu\]foo\[$txtred\] bar\[$txtrst\] baz : "
#PS1="\[$txtblu\][\t]\[$txtcyn\][\u@\h:\W]\[$txtred\]\!\[$txtrst\]\$ "
PS1="\[$txtcyn\][\u@\h:\W]\[$txtrst\]\$ "
#PS1="[\u@\h:\W] "
export PS1 

#Set tab title for OSX Terminal
export PROMPT_COMMAND='echo -ne "\033]0;${HOSTNAME}: ${PWD/$HOME/~}\007"'


###############################################################################
# COMMAND ALIASES
###############################################################################
alias tailf="tail -f"
alias fn="find . -name"
## alias frameToMovie='ffmpeg -i frame.00%2d.png movie.mov'


###############################################################################
# REMOTE MACHINES
###############################################################################

###############################################################################
# OTHER INSTALLED SOFTWARE
###############################################################################
PATH="/Applications/CMake.app/Contents/bin":"$PATH"

###############################################################################
# DEAL.II
###############################################################################
export PKG=/InstalledPackages

export DEAL_II_SRC=$PKG/deal.II/deal.II
export DEAL_II_BUILD=$PKG/deal.II/build
export DEAL_II_DIR=$PKG/deal.II/install
alias deal="cd $DEAL_II_DIR"

export P4EST_SRC=$PKG/deal.II/p4est
export P4EST_BUILD=$P4EST_SRC/FAST
export P4EST_DIR=$P4EST_SRC/p4est-0.3.4.2

#export TRILINOS_SRC=$PKG/trilinos-11.12.1
#export TRILINOS_BUILD=$TRILINOS_SRC/build
#export TRILINOS_DIR=$TRILINOS_SRC

export TRILINOS_SRC=$PKG/trilinos-12.4.2
export TRILINOS_BUILD=$TRILINOS_SRC/build
export TRILINOS_DIR=$TRILINOS_SRC

## PETSC
##export PETSC_DIR=/InstalledPackages/petsc-3.2-p6
##export PETSC_ARCH=arch-darwin-cxx-debug

## PATH INFO
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$DEAL_II_DIR/lib:$TRILINOS_DIR/lib:/usr/local/lib

###############################################################################
# SDG RELATED 
###############################################################################
export BLITZ_09_DIR=/InstalledPackages/blitz-0.9
export BLITZ_09_LIB_DIR=$BLITZ_09_DIR/lib/.libs

export BLITZ_10_DIR=/InstalledPackages/blitz-0.10
export BLITZ_10_LIB_DIR=$BLITZ_10_DIR/lib/.libs

###############################################################################
# COMPILERS
###############################################################################
export CC=/usr/local/openmpi/bin/mpicc
export CXX=/usr/local/openmpi/bin/mpicxx
#export F77=/usr/local/openmpi/bin/mpifort
#export FC=/usr/local/openmpi/bin/mpifort
export PATH=/usr/local/openmpi/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/openmpi/lib:$DYLD_LIBRARY_PATH
export USE_MPI=ON

###############################################################################
# BOOST
###############################################################################
export BOOST_VERSION=1_58_0
export BOOST_DIR=/InstalledPackages/boost_$BOOST_VERSION
export BOOST_LIB_DIR=$BOOST_DIR/stage/lib
export BOOST_ROOT=$BOOST_DIR
export BOOST_INC=$BOOST_DIR/boost
export BOOST_LIB=$BOOST_DIR/stage/lib
export DYLD_LIBRARY_PATH=$DYLD_LIBRARY_PATH:$BOOST_LIB
export PATH=$PATH:$BOOST_DIR:$BOOST_INC
export BOOST_ROOT=$BOOST_DIR

###############################################################################
# HDF5 & NETCDF
###############################################################################
export HDF5_DIR=/InstalledPackages/HDF5
export HDF5_INC=$HDF5_DIR/include
export HDF5_LIB=$HDF5_DIR/lib
export HDF5_BIN=$HDF5_DIR/bin
export PATH=$PATH:$HDF5_DIR:$HDF5_INC
export DYLD_LIBRARY_PATH=$HDF5_LIB:$DYLD_LIBRARY_PATH

export NETCDF_DIR=/InstalledPackages/NETCDF
export NETCDF_INC=/InstalledPackages/NETCDF/include
export NETCDF_LIB=/InstalledPackages/NETCDF/lib
export NETCDF_BIN=/InstalledPackages/NETCDF/bin
export PATH=$PATH:$NETCDF_DIR:$NETCDF_INC
export DYLD_LIBRARY_PATH=$NETCDF_LIB:$DYLD_LIBRARY_PATH

###############################################################################
# MACPORTS:  don't use macports.  Nor homebrew.
###############################################################################
##export PATH=/opt/local/bin:/opt/local/sbin:$PATH
##export PATH=$PATH:/opt/local/bin:/opt/local/sbin

###############################################################################
# ALIASES FOR VARIOUS PURPOSES
###############################################################################
alias pdfToeps="gs -sDEVICE=pswrite -dNOCACHE -sOutputFile=nofont-symbols.ps -q -dbatch -dNOPAUSE PlotSymbolsMarkup.pdf -c quit"


############### END OF FILE ###################################################
