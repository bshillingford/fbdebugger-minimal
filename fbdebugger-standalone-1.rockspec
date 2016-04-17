--
--  Copyright (c) 2014, Facebook, Inc.
--  All rights reserved.
--
--  This source code is licensed under the BSD-style license found in the
--  LICENSE file in the root directory of this source tree. An additional grant
--  of patent rights can be found in the PATENTS file in the same directory.
--

package = 'fbdebugger'
version = 'standalone-1'
source = {
    url = 'https://github.com/bshillingford/fbdebugger-minimal',
}
description = {
    summary = 'FB Lua Debugger',
    detailed = [[
      This is a general-purpose debugger for Lua. Its command syntax is
      inspired by gdb, and it has special support for printing Torch tensors
      (but Torch is not required). Requires LuaJIT 2.0+.
    ]],
    homepage = 'https://github.com/facebook/fblualib',
    license = 'BSD',
}
supported_platforms = {
    'unix',
}
dependencies = {
    'penlight >= 1.3.1',
}
build = {
    type = 'builtin',
    modules = {
        ['fb.debugger.breakpoint'] = 'fb/debugger/breakpoint.lua',
        ['fb.debugger.init'] = 'fb/debugger/init.lua',
        ['fb.debugger.types'] = 'fb/debugger/types.lua',
        ['fb.debugger.utils'] = 'fb/debugger/utils.lua',
        ['fb.debugger._fb.util.init'] = 'fb/util/init.lua',
        ['fb.debugger._fb.util.multi_level'] = 'fb/util/multi_level.lua',
        ['fb.debugger._fb.editline.init'] = 'fb/editline/init.lua',
        ['fb.debugger._fb.editline._config'] = 'fb/editline/_config.lua',
        ['fb.debugger._fb.editline.completer'] = 'fb/editline/completer.lua',
    },
}
