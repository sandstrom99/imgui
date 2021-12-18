project "imgui"
	kind "StaticLib"
	language "C++"
  staticruntime "On"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_tables.cpp",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
    "backends/imgui_impl_opengl3.h",
    "backends/imgui_impl_opengl3_loader.h",
    "backends/imgui_impl_glfw.cpp",
    "backends/imgui_impl_glfw.h",
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on" 

	filter "configurations:Release"
		runtime "Release"
		symbols "on" 

