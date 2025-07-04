project "SDL3_Shadercross"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "Off"

    files
    {
        "./include/**.h",
        "./include/**.hpp",
        "./src/**.h",
        "./src/**.hpp",
        "./src/**.c",
        "./src/**.cpp"
    }
    includedirs
    {
        "../SDL3/include",
        "./external/DirectXShaderCompiler/include",
        "./external/SPIRV-Cross/",
        "./external/SPIRV-Cross/include",
        "./external/SPIRV-Headers/include",
        "./external/SPIRV-Tools/include",
        "./include",
        "./src",
    }
    links
    {
        "SDL3"
    }