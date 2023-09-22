## Copyright (C) 2023 mt380
##
## This program is free software: you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <https://www.gnu.org/licenses/>.

## -*- texinfo -*-
## @deftypefn {} {@var{retval} =} drawLine (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: mt380 <mt380@FH202-LAB10W>
## Created: 2023-08-25

function handle = drawLine (p, q, color)
  %{
  drawLine draws a line from point p to point q with color
  %}

  %extract x and y coordinates
  x=[p(1) ; q(1)]
  ##x values are extracted for p and q. Round brackets mean access specific functions
  ##square brackets create array

  y=[p(2) ; q(2)]

  %handle is identifier so machine can access handle online. Like a lable to access
  handle= plot(x,y,color)

  set(handle, "LineWidth", 3);

endfunction
