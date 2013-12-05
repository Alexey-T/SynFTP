##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Release
ProjectName            :=SynFTP
ConfigurationName      :=Release
WorkspacePath          := "D:\Programming\Projects\SynFTP\cl"
ProjectPath            := "D:\Programming\Projects\SynFTP\cl"
IntermediateDirectory  :=./Release
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Harold
Date                   :=14-12-2012
CodeLitePath           :="D:\Programming\CodeLite\CodeLite"
LinkerName             :=g++
SharedObjectLinkerName :=g++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=.o.d
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName).dll
Preprocessors          :=$(PreprocessorSwitch)UNICODE $(PreprocessorSwitch)_UNICODE $(PreprocessorSwitch)LIBSSH_STATIC 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="D:\Programming\Projects\SynFTP\cl\SynFTP.txt"
PCHCompileFlags        :=
MakeDirCommand         :=makedir
RcCmpOptions           := 
RcCompilerName         :=windres
LinkOptions            :=  -O2 ../src/SynFTP.def
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). $(IncludeSwitch)../include $(IncludeSwitch)../include/synftp $(IncludeSwitch)../include/synftp/Windows $(IncludeSwitch)../tinyxml/include $(IncludeSwitch)../UTCP/Include $(IncludeSwitch)../libssh-0.4.4/include 
IncludePCH             := 
RcIncludePath          := $(IncludeSwitch)../include/synftp/Windows 
Libs                   := $(LibrarySwitch)Comdlg32 $(LibrarySwitch)Comctl32 $(LibrarySwitch)uuid $(LibrarySwitch)ole32 $(LibrarySwitch)shlwapi $(LibrarySwitch)TinyXML $(LibrarySwitch)UTCP $(LibrarySwitch)ssh $(LibrarySwitch)ssl $(LibrarySwitch)crypto $(LibrarySwitch)zlib $(LibrarySwitch)gdi32 $(LibrarySwitch)ws2_32 
ArLibs                 :=  "Comdlg32" "Comctl32" "uuid" "ole32" "shlwapi" "TinyXML" "UTCP" "ssh" "ssl" "crypto" "zlib" "gdi32" "ws2_32" 
LibPath                := $(LibraryPathSwitch). $(LibraryPathSwitch)../lib/ 

##
## Common variables
## AR, CXX, CC, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := g++
CC       := gcc
CXXFLAGS :=   $(Preprocessors)
CFLAGS   :=   $(Preprocessors)


##
## User defined environment variables
##
CodeLiteDir:=D:\Programming\CodeLite\CodeLite
Objects=$(IntermediateDirectory)/src_DragDropSupport$(ObjectSuffix) $(IntermediateDirectory)/src_Encryption$(ObjectSuffix) $(IntermediateDirectory)/src_FileObject$(ObjectSuffix) $(IntermediateDirectory)/src_FTPCache$(ObjectSuffix) $(IntermediateDirectory)/src_FTPClientWrapper$(ObjectSuffix) $(IntermediateDirectory)/src_FTPClientWrapperSSH$(ObjectSuffix) $(IntermediateDirectory)/src_FTPClientWrapperSSL$(ObjectSuffix) $(IntermediateDirectory)/src_FTPProfile$(ObjectSuffix) $(IntermediateDirectory)/src_FTPQueue$(ObjectSuffix) $(IntermediateDirectory)/src_FTPSession$(ObjectSuffix) \
	$(IntermediateDirectory)/src_Monitor$(ObjectSuffix) $(IntermediateDirectory)/src_SynFTP$(ObjectSuffix) $(IntermediateDirectory)/src_Output$(ObjectSuffix) $(IntermediateDirectory)/src_PathUtils$(ObjectSuffix) $(IntermediateDirectory)/src_PluginInterface$(ObjectSuffix) $(IntermediateDirectory)/src_ProgressMonitor$(ObjectSuffix) $(IntermediateDirectory)/src_QueueOperation$(ObjectSuffix) $(IntermediateDirectory)/src_RefObject$(ObjectSuffix) $(IntermediateDirectory)/src_SSLCertificates$(ObjectSuffix) $(IntermediateDirectory)/src_StringUtils$(ObjectSuffix) \
	$(IntermediateDirectory)/src_WinPlatform$(ObjectSuffix) $(IntermediateDirectory)/Windows_AboutDialog$(ObjectSuffix) $(IntermediateDirectory)/Windows_ChildDialog$(ObjectSuffix) $(IntermediateDirectory)/Windows_Dialog$(ObjectSuffix) $(IntermediateDirectory)/Windows_DragDropWindow$(ObjectSuffix) $(IntermediateDirectory)/Windows_FTPWindow$(ObjectSuffix) $(IntermediateDirectory)/Windows_InputDialog$(ObjectSuffix) $(IntermediateDirectory)/Windows_KBIntDialog$(ObjectSuffix) $(IntermediateDirectory)/Windows_MessageDialog$(ObjectSuffix) $(IntermediateDirectory)/Windows_SynFTP.rc$(ObjectSuffix) \
	$(IntermediateDirectory)/Windows_ProfilesDialog$(ObjectSuffix) $(IntermediateDirectory)/Windows_QueueWindow$(ObjectSuffix) $(IntermediateDirectory)/Windows_SettingsDialog$(ObjectSuffix) $(IntermediateDirectory)/Windows_Toolbar$(ObjectSuffix) $(IntermediateDirectory)/Windows_Treeview$(ObjectSuffix) $(IntermediateDirectory)/Windows_Window$(ObjectSuffix) $(IntermediateDirectory)/src_FTPSettings$(ObjectSuffix) $(IntermediateDirectory)/src_OutputLog$(ObjectSuffix) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects) > $(ObjectsFileList)
	$(SharedObjectLinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)
	@$(MakeDirCommand) "D:\Programming\Projects\SynFTP\cl\.build-release"
	@echo rebuilt > "D:\Programming\Projects\SynFTP\cl\.build-release\SynFTP"

$(IntermediateDirectory)/.d:
	@$(MakeDirCommand) "./Release"

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/src_DragDropSupport$(ObjectSuffix): ../src/DragDropSupport.cpp $(IntermediateDirectory)/src_DragDropSupport$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/DragDropSupport.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_DragDropSupport$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_DragDropSupport$(DependSuffix): ../src/DragDropSupport.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_DragDropSupport$(ObjectSuffix) -MF$(IntermediateDirectory)/src_DragDropSupport$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/DragDropSupport.cpp"

$(IntermediateDirectory)/src_DragDropSupport$(PreprocessSuffix): ../src/DragDropSupport.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_DragDropSupport$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/DragDropSupport.cpp"

$(IntermediateDirectory)/src_Encryption$(ObjectSuffix): ../src/Encryption.cpp $(IntermediateDirectory)/src_Encryption$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Encryption.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Encryption$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Encryption$(DependSuffix): ../src/Encryption.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Encryption$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Encryption$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Encryption.cpp"

$(IntermediateDirectory)/src_Encryption$(PreprocessSuffix): ../src/Encryption.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Encryption$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Encryption.cpp"

$(IntermediateDirectory)/src_FileObject$(ObjectSuffix): ../src/FileObject.cpp $(IntermediateDirectory)/src_FileObject$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/FileObject.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FileObject$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FileObject$(DependSuffix): ../src/FileObject.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FileObject$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FileObject$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/FileObject.cpp"

$(IntermediateDirectory)/src_FileObject$(PreprocessSuffix): ../src/FileObject.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FileObject$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/FileObject.cpp"

$(IntermediateDirectory)/src_FTPCache$(ObjectSuffix): ../src/FTPCache.cpp $(IntermediateDirectory)/src_FTPCache$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/FTPCache.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FTPCache$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FTPCache$(DependSuffix): ../src/FTPCache.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FTPCache$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FTPCache$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/FTPCache.cpp"

$(IntermediateDirectory)/src_FTPCache$(PreprocessSuffix): ../src/FTPCache.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FTPCache$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/FTPCache.cpp"

$(IntermediateDirectory)/src_FTPClientWrapper$(ObjectSuffix): ../src/FTPClientWrapper.cpp $(IntermediateDirectory)/src_FTPClientWrapper$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/FTPClientWrapper.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FTPClientWrapper$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FTPClientWrapper$(DependSuffix): ../src/FTPClientWrapper.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FTPClientWrapper$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FTPClientWrapper$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/FTPClientWrapper.cpp"

$(IntermediateDirectory)/src_FTPClientWrapper$(PreprocessSuffix): ../src/FTPClientWrapper.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FTPClientWrapper$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/FTPClientWrapper.cpp"

$(IntermediateDirectory)/src_FTPClientWrapperSSH$(ObjectSuffix): ../src/FTPClientWrapperSSH.cpp $(IntermediateDirectory)/src_FTPClientWrapperSSH$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/FTPClientWrapperSSH.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FTPClientWrapperSSH$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FTPClientWrapperSSH$(DependSuffix): ../src/FTPClientWrapperSSH.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FTPClientWrapperSSH$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FTPClientWrapperSSH$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/FTPClientWrapperSSH.cpp"

$(IntermediateDirectory)/src_FTPClientWrapperSSH$(PreprocessSuffix): ../src/FTPClientWrapperSSH.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FTPClientWrapperSSH$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/FTPClientWrapperSSH.cpp"

$(IntermediateDirectory)/src_FTPClientWrapperSSL$(ObjectSuffix): ../src/FTPClientWrapperSSL.cpp $(IntermediateDirectory)/src_FTPClientWrapperSSL$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/FTPClientWrapperSSL.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FTPClientWrapperSSL$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FTPClientWrapperSSL$(DependSuffix): ../src/FTPClientWrapperSSL.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FTPClientWrapperSSL$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FTPClientWrapperSSL$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/FTPClientWrapperSSL.cpp"

$(IntermediateDirectory)/src_FTPClientWrapperSSL$(PreprocessSuffix): ../src/FTPClientWrapperSSL.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FTPClientWrapperSSL$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/FTPClientWrapperSSL.cpp"

$(IntermediateDirectory)/src_FTPProfile$(ObjectSuffix): ../src/FTPProfile.cpp $(IntermediateDirectory)/src_FTPProfile$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/FTPProfile.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FTPProfile$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FTPProfile$(DependSuffix): ../src/FTPProfile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FTPProfile$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FTPProfile$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/FTPProfile.cpp"

$(IntermediateDirectory)/src_FTPProfile$(PreprocessSuffix): ../src/FTPProfile.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FTPProfile$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/FTPProfile.cpp"

$(IntermediateDirectory)/src_FTPQueue$(ObjectSuffix): ../src/FTPQueue.cpp $(IntermediateDirectory)/src_FTPQueue$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/FTPQueue.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FTPQueue$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FTPQueue$(DependSuffix): ../src/FTPQueue.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FTPQueue$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FTPQueue$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/FTPQueue.cpp"

$(IntermediateDirectory)/src_FTPQueue$(PreprocessSuffix): ../src/FTPQueue.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FTPQueue$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/FTPQueue.cpp"

$(IntermediateDirectory)/src_FTPSession$(ObjectSuffix): ../src/FTPSession.cpp $(IntermediateDirectory)/src_FTPSession$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/FTPSession.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FTPSession$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FTPSession$(DependSuffix): ../src/FTPSession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FTPSession$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FTPSession$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/FTPSession.cpp"

$(IntermediateDirectory)/src_FTPSession$(PreprocessSuffix): ../src/FTPSession.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FTPSession$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/FTPSession.cpp"

$(IntermediateDirectory)/src_Monitor$(ObjectSuffix): ../src/Monitor.cpp $(IntermediateDirectory)/src_Monitor$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Monitor.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Monitor$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Monitor$(DependSuffix): ../src/Monitor.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Monitor$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Monitor$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Monitor.cpp"

$(IntermediateDirectory)/src_Monitor$(PreprocessSuffix): ../src/Monitor.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Monitor$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Monitor.cpp"

$(IntermediateDirectory)/src_SynFTP$(ObjectSuffix): ../src/SynFTP.cpp $(IntermediateDirectory)/src_SynFTP$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/SynFTP.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_SynFTP$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_SynFTP$(DependSuffix): ../src/SynFTP.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_SynFTP$(ObjectSuffix) -MF$(IntermediateDirectory)/src_SynFTP$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/SynFTP.cpp"

$(IntermediateDirectory)/src_SynFTP$(PreprocessSuffix): ../src/SynFTP.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_SynFTP$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/SynFTP.cpp"

$(IntermediateDirectory)/src_Output$(ObjectSuffix): ../src/Output.cpp $(IntermediateDirectory)/src_Output$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Output.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_Output$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_Output$(DependSuffix): ../src/Output.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_Output$(ObjectSuffix) -MF$(IntermediateDirectory)/src_Output$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Output.cpp"

$(IntermediateDirectory)/src_Output$(PreprocessSuffix): ../src/Output.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_Output$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Output.cpp"

$(IntermediateDirectory)/src_PathUtils$(ObjectSuffix): ../src/PathUtils.cpp $(IntermediateDirectory)/src_PathUtils$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/PathUtils.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_PathUtils$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_PathUtils$(DependSuffix): ../src/PathUtils.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_PathUtils$(ObjectSuffix) -MF$(IntermediateDirectory)/src_PathUtils$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/PathUtils.cpp"

$(IntermediateDirectory)/src_PathUtils$(PreprocessSuffix): ../src/PathUtils.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_PathUtils$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/PathUtils.cpp"

$(IntermediateDirectory)/src_PluginInterface$(ObjectSuffix): ../src/PluginInterface.cpp $(IntermediateDirectory)/src_PluginInterface$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/PluginInterface.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_PluginInterface$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_PluginInterface$(DependSuffix): ../src/PluginInterface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_PluginInterface$(ObjectSuffix) -MF$(IntermediateDirectory)/src_PluginInterface$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/PluginInterface.cpp"

$(IntermediateDirectory)/src_PluginInterface$(PreprocessSuffix): ../src/PluginInterface.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_PluginInterface$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/PluginInterface.cpp"

$(IntermediateDirectory)/src_ProgressMonitor$(ObjectSuffix): ../src/ProgressMonitor.cpp $(IntermediateDirectory)/src_ProgressMonitor$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/ProgressMonitor.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_ProgressMonitor$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_ProgressMonitor$(DependSuffix): ../src/ProgressMonitor.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_ProgressMonitor$(ObjectSuffix) -MF$(IntermediateDirectory)/src_ProgressMonitor$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/ProgressMonitor.cpp"

$(IntermediateDirectory)/src_ProgressMonitor$(PreprocessSuffix): ../src/ProgressMonitor.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_ProgressMonitor$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/ProgressMonitor.cpp"

$(IntermediateDirectory)/src_QueueOperation$(ObjectSuffix): ../src/QueueOperation.cpp $(IntermediateDirectory)/src_QueueOperation$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/QueueOperation.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_QueueOperation$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_QueueOperation$(DependSuffix): ../src/QueueOperation.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_QueueOperation$(ObjectSuffix) -MF$(IntermediateDirectory)/src_QueueOperation$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/QueueOperation.cpp"

$(IntermediateDirectory)/src_QueueOperation$(PreprocessSuffix): ../src/QueueOperation.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_QueueOperation$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/QueueOperation.cpp"

$(IntermediateDirectory)/src_RefObject$(ObjectSuffix): ../src/RefObject.cpp $(IntermediateDirectory)/src_RefObject$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/RefObject.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_RefObject$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_RefObject$(DependSuffix): ../src/RefObject.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_RefObject$(ObjectSuffix) -MF$(IntermediateDirectory)/src_RefObject$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/RefObject.cpp"

$(IntermediateDirectory)/src_RefObject$(PreprocessSuffix): ../src/RefObject.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_RefObject$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/RefObject.cpp"

$(IntermediateDirectory)/src_SSLCertificates$(ObjectSuffix): ../src/SSLCertificates.cpp $(IntermediateDirectory)/src_SSLCertificates$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/SSLCertificates.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_SSLCertificates$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_SSLCertificates$(DependSuffix): ../src/SSLCertificates.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_SSLCertificates$(ObjectSuffix) -MF$(IntermediateDirectory)/src_SSLCertificates$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/SSLCertificates.cpp"

$(IntermediateDirectory)/src_SSLCertificates$(PreprocessSuffix): ../src/SSLCertificates.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_SSLCertificates$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/SSLCertificates.cpp"

$(IntermediateDirectory)/src_StringUtils$(ObjectSuffix): ../src/StringUtils.cpp $(IntermediateDirectory)/src_StringUtils$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/StringUtils.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_StringUtils$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_StringUtils$(DependSuffix): ../src/StringUtils.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_StringUtils$(ObjectSuffix) -MF$(IntermediateDirectory)/src_StringUtils$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/StringUtils.cpp"

$(IntermediateDirectory)/src_StringUtils$(PreprocessSuffix): ../src/StringUtils.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_StringUtils$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/StringUtils.cpp"

$(IntermediateDirectory)/src_WinPlatform$(ObjectSuffix): ../src/WinPlatform.cpp $(IntermediateDirectory)/src_WinPlatform$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/WinPlatform.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_WinPlatform$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_WinPlatform$(DependSuffix): ../src/WinPlatform.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_WinPlatform$(ObjectSuffix) -MF$(IntermediateDirectory)/src_WinPlatform$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/WinPlatform.cpp"

$(IntermediateDirectory)/src_WinPlatform$(PreprocessSuffix): ../src/WinPlatform.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_WinPlatform$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/WinPlatform.cpp"

$(IntermediateDirectory)/Windows_AboutDialog$(ObjectSuffix): ../src/Windows/AboutDialog.cpp $(IntermediateDirectory)/Windows_AboutDialog$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Windows/AboutDialog.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Windows_AboutDialog$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Windows_AboutDialog$(DependSuffix): ../src/Windows/AboutDialog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Windows_AboutDialog$(ObjectSuffix) -MF$(IntermediateDirectory)/Windows_AboutDialog$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Windows/AboutDialog.cpp"

$(IntermediateDirectory)/Windows_AboutDialog$(PreprocessSuffix): ../src/Windows/AboutDialog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Windows_AboutDialog$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Windows/AboutDialog.cpp"

$(IntermediateDirectory)/Windows_ChildDialog$(ObjectSuffix): ../src/Windows/ChildDialog.cpp $(IntermediateDirectory)/Windows_ChildDialog$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Windows/ChildDialog.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Windows_ChildDialog$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Windows_ChildDialog$(DependSuffix): ../src/Windows/ChildDialog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Windows_ChildDialog$(ObjectSuffix) -MF$(IntermediateDirectory)/Windows_ChildDialog$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Windows/ChildDialog.cpp"

$(IntermediateDirectory)/Windows_ChildDialog$(PreprocessSuffix): ../src/Windows/ChildDialog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Windows_ChildDialog$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Windows/ChildDialog.cpp"

$(IntermediateDirectory)/Windows_Dialog$(ObjectSuffix): ../src/Windows/Dialog.cpp $(IntermediateDirectory)/Windows_Dialog$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Windows/Dialog.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Windows_Dialog$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Windows_Dialog$(DependSuffix): ../src/Windows/Dialog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Windows_Dialog$(ObjectSuffix) -MF$(IntermediateDirectory)/Windows_Dialog$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Windows/Dialog.cpp"

$(IntermediateDirectory)/Windows_Dialog$(PreprocessSuffix): ../src/Windows/Dialog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Windows_Dialog$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Windows/Dialog.cpp"

$(IntermediateDirectory)/Windows_DragDropWindow$(ObjectSuffix): ../src/Windows/DragDropWindow.cpp $(IntermediateDirectory)/Windows_DragDropWindow$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Windows/DragDropWindow.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Windows_DragDropWindow$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Windows_DragDropWindow$(DependSuffix): ../src/Windows/DragDropWindow.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Windows_DragDropWindow$(ObjectSuffix) -MF$(IntermediateDirectory)/Windows_DragDropWindow$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Windows/DragDropWindow.cpp"

$(IntermediateDirectory)/Windows_DragDropWindow$(PreprocessSuffix): ../src/Windows/DragDropWindow.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Windows_DragDropWindow$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Windows/DragDropWindow.cpp"

$(IntermediateDirectory)/Windows_FTPWindow$(ObjectSuffix): ../src/Windows/FTPWindow.cpp $(IntermediateDirectory)/Windows_FTPWindow$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Windows/FTPWindow.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Windows_FTPWindow$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Windows_FTPWindow$(DependSuffix): ../src/Windows/FTPWindow.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Windows_FTPWindow$(ObjectSuffix) -MF$(IntermediateDirectory)/Windows_FTPWindow$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Windows/FTPWindow.cpp"

$(IntermediateDirectory)/Windows_FTPWindow$(PreprocessSuffix): ../src/Windows/FTPWindow.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Windows_FTPWindow$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Windows/FTPWindow.cpp"

$(IntermediateDirectory)/Windows_InputDialog$(ObjectSuffix): ../src/Windows/InputDialog.cpp $(IntermediateDirectory)/Windows_InputDialog$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Windows/InputDialog.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Windows_InputDialog$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Windows_InputDialog$(DependSuffix): ../src/Windows/InputDialog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Windows_InputDialog$(ObjectSuffix) -MF$(IntermediateDirectory)/Windows_InputDialog$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Windows/InputDialog.cpp"

$(IntermediateDirectory)/Windows_InputDialog$(PreprocessSuffix): ../src/Windows/InputDialog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Windows_InputDialog$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Windows/InputDialog.cpp"

$(IntermediateDirectory)/Windows_KBIntDialog$(ObjectSuffix): ../src/Windows/KBIntDialog.cpp $(IntermediateDirectory)/Windows_KBIntDialog$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Windows/KBIntDialog.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Windows_KBIntDialog$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Windows_KBIntDialog$(DependSuffix): ../src/Windows/KBIntDialog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Windows_KBIntDialog$(ObjectSuffix) -MF$(IntermediateDirectory)/Windows_KBIntDialog$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Windows/KBIntDialog.cpp"

$(IntermediateDirectory)/Windows_KBIntDialog$(PreprocessSuffix): ../src/Windows/KBIntDialog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Windows_KBIntDialog$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Windows/KBIntDialog.cpp"

$(IntermediateDirectory)/Windows_MessageDialog$(ObjectSuffix): ../src/Windows/MessageDialog.cpp $(IntermediateDirectory)/Windows_MessageDialog$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Windows/MessageDialog.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Windows_MessageDialog$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Windows_MessageDialog$(DependSuffix): ../src/Windows/MessageDialog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Windows_MessageDialog$(ObjectSuffix) -MF$(IntermediateDirectory)/Windows_MessageDialog$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Windows/MessageDialog.cpp"

$(IntermediateDirectory)/Windows_MessageDialog$(PreprocessSuffix): ../src/Windows/MessageDialog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Windows_MessageDialog$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Windows/MessageDialog.cpp"

$(IntermediateDirectory)/Windows_SynFTP.rc$(ObjectSuffix): ../src/Windows/SynFTP.rc
	$(RcCompilerName) -i "D:/Programming/Projects/SynFTP/src/Windows/SynFTP.rc" $(RcCmpOptions)   $(ObjectSwitch)$(IntermediateDirectory)/Windows_SynFTP.rc$(ObjectSuffix) $(RcIncludePath)
$(IntermediateDirectory)/Windows_ProfilesDialog$(ObjectSuffix): ../src/Windows/ProfilesDialog.cpp $(IntermediateDirectory)/Windows_ProfilesDialog$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Windows/ProfilesDialog.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Windows_ProfilesDialog$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Windows_ProfilesDialog$(DependSuffix): ../src/Windows/ProfilesDialog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Windows_ProfilesDialog$(ObjectSuffix) -MF$(IntermediateDirectory)/Windows_ProfilesDialog$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Windows/ProfilesDialog.cpp"

$(IntermediateDirectory)/Windows_ProfilesDialog$(PreprocessSuffix): ../src/Windows/ProfilesDialog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Windows_ProfilesDialog$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Windows/ProfilesDialog.cpp"

$(IntermediateDirectory)/Windows_QueueWindow$(ObjectSuffix): ../src/Windows/QueueWindow.cpp $(IntermediateDirectory)/Windows_QueueWindow$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Windows/QueueWindow.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Windows_QueueWindow$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Windows_QueueWindow$(DependSuffix): ../src/Windows/QueueWindow.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Windows_QueueWindow$(ObjectSuffix) -MF$(IntermediateDirectory)/Windows_QueueWindow$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Windows/QueueWindow.cpp"

$(IntermediateDirectory)/Windows_QueueWindow$(PreprocessSuffix): ../src/Windows/QueueWindow.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Windows_QueueWindow$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Windows/QueueWindow.cpp"

$(IntermediateDirectory)/Windows_SettingsDialog$(ObjectSuffix): ../src/Windows/SettingsDialog.cpp $(IntermediateDirectory)/Windows_SettingsDialog$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Windows/SettingsDialog.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Windows_SettingsDialog$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Windows_SettingsDialog$(DependSuffix): ../src/Windows/SettingsDialog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Windows_SettingsDialog$(ObjectSuffix) -MF$(IntermediateDirectory)/Windows_SettingsDialog$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Windows/SettingsDialog.cpp"

$(IntermediateDirectory)/Windows_SettingsDialog$(PreprocessSuffix): ../src/Windows/SettingsDialog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Windows_SettingsDialog$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Windows/SettingsDialog.cpp"

$(IntermediateDirectory)/Windows_Toolbar$(ObjectSuffix): ../src/Windows/Toolbar.cpp $(IntermediateDirectory)/Windows_Toolbar$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Windows/Toolbar.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Windows_Toolbar$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Windows_Toolbar$(DependSuffix): ../src/Windows/Toolbar.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Windows_Toolbar$(ObjectSuffix) -MF$(IntermediateDirectory)/Windows_Toolbar$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Windows/Toolbar.cpp"

$(IntermediateDirectory)/Windows_Toolbar$(PreprocessSuffix): ../src/Windows/Toolbar.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Windows_Toolbar$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Windows/Toolbar.cpp"

$(IntermediateDirectory)/Windows_Treeview$(ObjectSuffix): ../src/Windows/Treeview.cpp $(IntermediateDirectory)/Windows_Treeview$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Windows/Treeview.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Windows_Treeview$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Windows_Treeview$(DependSuffix): ../src/Windows/Treeview.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Windows_Treeview$(ObjectSuffix) -MF$(IntermediateDirectory)/Windows_Treeview$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Windows/Treeview.cpp"

$(IntermediateDirectory)/Windows_Treeview$(PreprocessSuffix): ../src/Windows/Treeview.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Windows_Treeview$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Windows/Treeview.cpp"

$(IntermediateDirectory)/Windows_Window$(ObjectSuffix): ../src/Windows/Window.cpp $(IntermediateDirectory)/Windows_Window$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/Windows/Window.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/Windows_Window$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/Windows_Window$(DependSuffix): ../src/Windows/Window.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/Windows_Window$(ObjectSuffix) -MF$(IntermediateDirectory)/Windows_Window$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/Windows/Window.cpp"

$(IntermediateDirectory)/Windows_Window$(PreprocessSuffix): ../src/Windows/Window.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/Windows_Window$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/Windows/Window.cpp"

$(IntermediateDirectory)/src_FTPSettings$(ObjectSuffix): ../src/FTPSettings.cpp $(IntermediateDirectory)/src_FTPSettings$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/FTPSettings.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_FTPSettings$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_FTPSettings$(DependSuffix): ../src/FTPSettings.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_FTPSettings$(ObjectSuffix) -MF$(IntermediateDirectory)/src_FTPSettings$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/FTPSettings.cpp"

$(IntermediateDirectory)/src_FTPSettings$(PreprocessSuffix): ../src/FTPSettings.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_FTPSettings$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/FTPSettings.cpp"

$(IntermediateDirectory)/src_OutputLog$(ObjectSuffix): ../src/OutputLog.cpp $(IntermediateDirectory)/src_OutputLog$(DependSuffix)
	$(CXX) $(IncludePCH) $(SourceSwitch) "D:/Programming/Projects/SynFTP/src/OutputLog.cpp" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/src_OutputLog$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/src_OutputLog$(DependSuffix): ../src/OutputLog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) -MG -MP -MT$(IntermediateDirectory)/src_OutputLog$(ObjectSuffix) -MF$(IntermediateDirectory)/src_OutputLog$(DependSuffix) -MM "D:/Programming/Projects/SynFTP/src/OutputLog.cpp"

$(IntermediateDirectory)/src_OutputLog$(PreprocessSuffix): ../src/OutputLog.cpp
	@$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/src_OutputLog$(PreprocessSuffix) "D:/Programming/Projects/SynFTP/src/OutputLog.cpp"


-include $(IntermediateDirectory)/*$(DependSuffix)
##
## Clean
##
clean:
	$(RM) $(IntermediateDirectory)/src_DragDropSupport$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_DragDropSupport$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_DragDropSupport$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_Encryption$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_Encryption$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_Encryption$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_FileObject$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_FileObject$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_FileObject$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPCache$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPCache$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPCache$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPClientWrapper$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPClientWrapper$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPClientWrapper$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPClientWrapperSSH$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPClientWrapperSSH$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPClientWrapperSSH$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPClientWrapperSSL$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPClientWrapperSSL$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPClientWrapperSSL$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPProfile$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPProfile$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPProfile$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPQueue$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPQueue$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPQueue$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPSession$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPSession$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPSession$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_Monitor$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_Monitor$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_Monitor$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_SynFTP$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_SynFTP$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_SynFTP$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_Output$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_Output$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_Output$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_PathUtils$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_PathUtils$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_PathUtils$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_PluginInterface$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_PluginInterface$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_PluginInterface$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_ProgressMonitor$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_ProgressMonitor$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_ProgressMonitor$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_QueueOperation$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_QueueOperation$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_QueueOperation$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_RefObject$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_RefObject$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_RefObject$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_SSLCertificates$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_SSLCertificates$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_SSLCertificates$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_StringUtils$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_StringUtils$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_StringUtils$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_WinPlatform$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_WinPlatform$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_WinPlatform$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Windows_AboutDialog$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Windows_AboutDialog$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Windows_AboutDialog$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Windows_ChildDialog$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Windows_ChildDialog$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Windows_ChildDialog$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Windows_Dialog$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Windows_Dialog$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Windows_Dialog$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Windows_DragDropWindow$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Windows_DragDropWindow$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Windows_DragDropWindow$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Windows_FTPWindow$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Windows_FTPWindow$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Windows_FTPWindow$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Windows_InputDialog$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Windows_InputDialog$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Windows_InputDialog$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Windows_KBIntDialog$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Windows_KBIntDialog$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Windows_KBIntDialog$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Windows_MessageDialog$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Windows_MessageDialog$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Windows_MessageDialog$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/SynFTP.rc$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Windows_ProfilesDialog$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Windows_ProfilesDialog$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Windows_ProfilesDialog$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Windows_QueueWindow$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Windows_QueueWindow$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Windows_QueueWindow$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Windows_SettingsDialog$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Windows_SettingsDialog$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Windows_SettingsDialog$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Windows_Toolbar$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Windows_Toolbar$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Windows_Toolbar$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Windows_Treeview$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Windows_Treeview$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Windows_Treeview$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/Windows_Window$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/Windows_Window$(DependSuffix)
	$(RM) $(IntermediateDirectory)/Windows_Window$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPSettings$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPSettings$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_FTPSettings$(PreprocessSuffix)
	$(RM) $(IntermediateDirectory)/src_OutputLog$(ObjectSuffix)
	$(RM) $(IntermediateDirectory)/src_OutputLog$(DependSuffix)
	$(RM) $(IntermediateDirectory)/src_OutputLog$(PreprocessSuffix)
	$(RM) $(OutputFile)
	$(RM) $(OutputFile)
	$(RM) "D:\Programming\Projects\SynFTP\cl\.build-release\SynFTP"


