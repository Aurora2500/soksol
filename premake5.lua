workspace "soksol"
	configurations { "Debug", "Release" }

project "soksol"
	kind "ConsoleApp"
	language "C++"
	targetdir "."

	files { "src/**.hpp", "src/**.cpp" }

	filter "configurations:Debug"
		defines { "DEBUG" }
		symbols "On"

	filter "configurations:Release"
		defines { "NDEBUG" }
		optimize "On"
