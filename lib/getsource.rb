=begin

This file is part of the getsource project, http://github.com/tario/getsource

Copyright (c) 2010 Roberto Dario Seminara <robertodarioseminara@gmail.com>

getsource is free software: you can redistribute it and/or modify
it under the terms of the gnu general public license as published by
the free software foundation, either version 3 of the license, or
(at your option) any later version.

getsource is distributed in the hope that it will be useful,
but without any warranty; without even the implied warranty of
merchantability or fitness for a particular purpose.  see the
gnu general public license for more details.

you should have received a copy of the gnu general public license
along with getsource.  if not, see <http://www.gnu.org/licenses/>.

=end
require "getsource_base"

class Object
  def specific_method(arg1, arg2=nil)
    if arg2
      method_name = arg2
      klass = arg1

      if instance_of? Class
        method(method_name)
      else
        klass.instance_method(method_name).bind(self)
      end
    else
      method(arg1)
    end
  end
end