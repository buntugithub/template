import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QuickControls2"
    Depends { name: "Qt"; submodules: ["core", "gui", "quick"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/opt/Qt5.7.1/5.7/gcc_64/lib/libQt5Quick.so.5.7.1", "/opt/Qt5.7.1/5.7/gcc_64/lib/libQt5Gui.so.5.7.1", "/opt/Qt5.7.1/5.7/gcc_64/lib/libQt5Qml.so.5.7.1", "/opt/Qt5.7.1/5.7/gcc_64/lib/libQt5Network.so.5.7.1", "/opt/Qt5.7.1/5.7/gcc_64/lib/libQt5Core.so.5.7.1", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5QuickControls2"
    libNameForLinkerRelease: "Qt5QuickControls2"
    libFilePathDebug: ""
    libFilePathRelease: "/opt/Qt5.7.1/5.7/gcc_64/lib/libQt5QuickControls2.so.5.7.1"
    cpp.defines: ["QT_QUICKCONTROLS2_LIB"]
    cpp.includePaths: ["/opt/Qt5.7.1/5.7/gcc_64/include", "/opt/Qt5.7.1/5.7/gcc_64/include/QtQuickControls2"]
    cpp.libraryPaths: ["/usr/lib64", "/opt/Qt5.7.1/5.7/gcc_64/lib"]
    
}
