"au! Syntax fortran	    so $HOME/.vim/fortran.vim
"au Syntax lammps	 so $HOME/.vim/after/indent/lammps.vim
 augroup syntax
 au  BufNewFile,BufReadPost *.lmp,*.lammps,*.in,in.* so ~/.vim/after/indent/lammps.vim
 au  BufNewFile,BufReadPost *.f,*.F,*.for,*.FOR,*.f90,*.F90,*.f95,*.F95 so /usr/share/vim/vim80/syntax/fortran.vim
 au  BufNewFile,BufReadPost  *.c,*.C so /usr/share/vim/vim80/syntax/c.vim
 au  BufNewFile,BufReadPost  *.cpp,*.CPP,*.h so /usr/share/vim/vim80/syntax/cpp.vim
 au  BufNewFile,BufReadPost  *.gplot so /usr/share/vim/vim80/syntax/gnuplot.vim
 au  BufNewFile,BufReadPost  *.m so /usr/share/vim/vim80/syntax/matlab.vim
 au  BufNewFile,BufReadPost  *.py so /usr/share/vim/vim80/syntax/python.vim
 au  BufNewFile,BufReadPost  *.sh so /usr/share/vim/vim80/syntax/sh.vim
 augroup END

