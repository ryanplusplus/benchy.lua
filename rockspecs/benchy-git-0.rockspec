package = 'benchy'
version = 'git-0'
source = {
  url = 'https://github.com/ryanplusplus/benchy.lua/archive/master.zip',
  dir = 'benchy.lua-master/src'
}
description = {
  summary = 'Quick and dirty benchmarking.',
  homepage = 'https://github.com/ryanplusplus/benchy.lua/',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}
dependencies = {
  'lua >= 5.1'
}
build = {
  type = 'builtin',
  modules = {
    ['benchy'] = 'benchy.lua'
  }
}
