dofile("Premake-Utils/premakeFromCmake.lua")

local sdlInstall = path.getabsolute("../SDL/cmake/install/" .. os.target() .. "/Release/cmake")
local cmakeOptions = table.concat({
    '-DSDL3_DIR="' .. sdlInstall .. '" ',
    '-DBUILD_SHARED_LIBS=ON',
    '-DSDLSHADERCROSS_SHARED=ON',
    '-DSDLSHADERCROSS_STATIC=OFF',
    '-DSDLSHADERCROSS_INSTALL=ON',
    '-DSDLSHADERCROSS_VENDORED=ON',
    '-DCMAKE_CXX_STANDARD=17',
    '-DCMAKE_CXX_STANDARD_REQUIRED=ON',
    '-DCMAKE_CXX_EXTENSIONS=OFF'
}, " ")

CreateProjectFromCMake("SDL3_Shadercross", "./", cmakeOptions)