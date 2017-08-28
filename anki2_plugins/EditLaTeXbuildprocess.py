# -*- coding: utf-8 -*-
# Edit LaTeX generation procedure
# Soren I. Bjornstad <soren.bjornstad@gmail.com>
# add-on Version 2, for Anki 2.0.27+

# I do not think this add-on is really eligible for copyright protection, since
# it simply overwrites a variable in Anki's code, but in case it is, you are
# free to do anything you want with it without needing to ask for permission.

# ========== INSTRUCTIONS ==========
# This add-on does not change anything until you edit it.
#
# Between the square brackets at the far left, you may insert any number of
# lines, each of which specifies a command to be run on your system. When Anki
# goes to generate LaTeX images, it will run each command in sequence. At the
# end of each line, after the closing square bracket, there should be a comma,
# except on the final command.
#
# Each command must be enclosed in square brackets and may contain any number
# of quoted, comma-separated arguments, the first being the command to run and
# the remainder being command-line arguments.
#
# Please see the default command set for an example. If you are having trouble
# configuring this add-on, you may ask on the add-ons forum.
#
# NOTE: If you are using this add-on on Windows, you must use double
# backslashes (\\) in any paths you include: "C:\\Windows", not "C:\Windows".
# ==================================

newLaTeX = \
[
    ["latex", "-interaction=nonstopmode", "tmp.tex"],
    ["dvipng", "-D", "200", "-T", "tight", "tmp.dvi", "-o", "tmp.png"]
]

# make the changes
import anki.latex
anki.latex.latexCmds = newLaTeX
