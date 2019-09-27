CONFIG += sdk_no_version_check
CONFIG -= qt

unix|mac:DEFINES += HAVE_GCC_FORMAT_CHECK HAVE_BLOCK_RETURN
mac:DEFINES += HAVE_MACOSX_SUPPORT

win32 {
	DEFINES += LIBYATE_EXPORTS ATOMIC_OPS
	HEADERS += $$files(windows/*.h)
}

# Because the flags in QMAKE_CXX_FLAGS will always come before 
# QMAKE_CXXFLAGS_WARN_ON, and QMAKE_CXXFLAGS_WARN_ON contains 
# the flag -Wall. This means your flag will be overwrite by flag -Wall.
!win32 {
	QMAKE_CXXFLAGS_WARN_ON += \
		-Wno-unused-parameter \
		-Wno-overloaded-virtual		# Used in the upstream Yate makefiles
}
