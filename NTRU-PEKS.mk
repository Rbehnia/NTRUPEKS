##
## Auto Generated makefile by CodeLite IDE
## any manual changes will be erased      
##
## Release
ProjectName            :=NTRU-PEKS
ConfigurationName      :=Release
WorkspacePath          := "/home/bob/Documents/MyCode"
ProjectPath            := "/home/bob/Documents/MyCode/NTRU-PEKS/NTRU-PEKS"
IntermediateDirectory  :=./Release
OutDir                 := $(IntermediateDirectory)
CurrentFileName        :=
CurrentFilePath        :=
CurrentFileFullPath    :=
User                   :=Bob
Date                   :=14/09/17
CodeLitePath           :="/home/bob/.codelite"
LinkerName             :=clang++
SharedObjectLinkerName :=clang++ -shared -fPIC
ObjectSuffix           :=.o
DependSuffix           :=
PreprocessSuffix       :=.o.i
DebugSwitch            :=-gstab
IncludeSwitch          :=-I
LibrarySwitch          :=-l
OutputSwitch           :=-o 
LibraryPathSwitch      :=-L
PreprocessorSwitch     :=-D
SourceSwitch           :=-c 
OutputFile             :=$(IntermediateDirectory)/$(ProjectName)
Preprocessors          :=$(PreprocessorSwitch)NDEBUG 
ObjectSwitch           :=-o 
ArchiveOutputSwitch    := 
PreprocessOnlySwitch   :=-E 
ObjectsFileList        :="NTRU-PEKS.txt"
PCHCompileFlags        :=
MakeDirCommand         :=mkdir -p
LinkOptions            :=  -lntl -lgmp 
IncludePath            :=  $(IncludeSwitch). $(IncludeSwitch). 
IncludePCH             := 
RcIncludePath          := 
Libs                   := 
ArLibs                 :=  
LibPath                := $(LibraryPathSwitch). 

##
## Common variables
## AR, CXX, CC, AS, CXXFLAGS and CFLAGS can be overriden using an environment variables
##
AR       := ar rcus
CXX      := clang++
CC       := clang
CXXFLAGS :=  -O2 -std=c++11 -Wall $(Preprocessors)
CFLAGS   :=  -O2 -Wall $(Preprocessors)
ASFLAGS  := 
AS       := llvm-as


##
## User defined environment variables
##
CodeLiteDir:=/usr/share/codelite
Objects0=$(IntermediateDirectory)/NTRU-PEKS_Scheme.cc$(ObjectSuffix) $(IntermediateDirectory)/NTRU-PEKS_Sampling.cc$(ObjectSuffix) $(IntermediateDirectory)/NTRU-PEKS_Random.cc$(ObjectSuffix) $(IntermediateDirectory)/NTRU-PEKS_PEKS.cc$(ObjectSuffix) $(IntermediateDirectory)/NTRU-PEKS_io.cc$(ObjectSuffix) $(IntermediateDirectory)/NTRU-PEKS_FFT.cc$(ObjectSuffix) $(IntermediateDirectory)/NTRU-PEKS_Algebra.cc$(ObjectSuffix) 



Objects=$(Objects0) 

##
## Main Build Targets 
##
.PHONY: all clean PreBuild PrePreBuild PostBuild MakeIntermediateDirs
all: $(OutputFile)

$(OutputFile): $(IntermediateDirectory)/.d $(Objects) 
	@$(MakeDirCommand) $(@D)
	@echo "" > $(IntermediateDirectory)/.d
	@echo $(Objects0)  > $(ObjectsFileList)
	$(LinkerName) $(OutputSwitch)$(OutputFile) @$(ObjectsFileList) $(LibPath) $(Libs) $(LinkOptions)

MakeIntermediateDirs:
	@test -d ./Release || $(MakeDirCommand) ./Release


$(IntermediateDirectory)/.d:
	@test -d ./Release || $(MakeDirCommand) ./Release

PreBuild:


##
## Objects
##
$(IntermediateDirectory)/NTRU-PEKS_Scheme.cc$(ObjectSuffix): ../Scheme.cc 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/bob/Documents/MyCode/NTRU-PEKS/Scheme.cc" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/NTRU-PEKS_Scheme.cc$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/NTRU-PEKS_Scheme.cc$(PreprocessSuffix): ../Scheme.cc
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/NTRU-PEKS_Scheme.cc$(PreprocessSuffix) "../Scheme.cc"

$(IntermediateDirectory)/NTRU-PEKS_Sampling.cc$(ObjectSuffix): ../Sampling.cc 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/bob/Documents/MyCode/NTRU-PEKS/Sampling.cc" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/NTRU-PEKS_Sampling.cc$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/NTRU-PEKS_Sampling.cc$(PreprocessSuffix): ../Sampling.cc
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/NTRU-PEKS_Sampling.cc$(PreprocessSuffix) "../Sampling.cc"

$(IntermediateDirectory)/NTRU-PEKS_Random.cc$(ObjectSuffix): ../Random.cc 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/bob/Documents/MyCode/NTRU-PEKS/Random.cc" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/NTRU-PEKS_Random.cc$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/NTRU-PEKS_Random.cc$(PreprocessSuffix): ../Random.cc
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/NTRU-PEKS_Random.cc$(PreprocessSuffix) "../Random.cc"

$(IntermediateDirectory)/NTRU-PEKS_PEKS.cc$(ObjectSuffix): ../PEKS.cc 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/bob/Documents/MyCode/NTRU-PEKS/PEKS.cc" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/NTRU-PEKS_PEKS.cc$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/NTRU-PEKS_PEKS.cc$(PreprocessSuffix): ../PEKS.cc
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/NTRU-PEKS_PEKS.cc$(PreprocessSuffix) "../PEKS.cc"

$(IntermediateDirectory)/NTRU-PEKS_io.cc$(ObjectSuffix): ../io.cc 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/bob/Documents/MyCode/NTRU-PEKS/io.cc" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/NTRU-PEKS_io.cc$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/NTRU-PEKS_io.cc$(PreprocessSuffix): ../io.cc
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/NTRU-PEKS_io.cc$(PreprocessSuffix) "../io.cc"

$(IntermediateDirectory)/NTRU-PEKS_FFT.cc$(ObjectSuffix): ../FFT.cc 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/bob/Documents/MyCode/NTRU-PEKS/FFT.cc" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/NTRU-PEKS_FFT.cc$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/NTRU-PEKS_FFT.cc$(PreprocessSuffix): ../FFT.cc
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/NTRU-PEKS_FFT.cc$(PreprocessSuffix) "../FFT.cc"

$(IntermediateDirectory)/NTRU-PEKS_Algebra.cc$(ObjectSuffix): ../Algebra.cc 
	$(CXX) $(IncludePCH) $(SourceSwitch) "/home/bob/Documents/MyCode/NTRU-PEKS/Algebra.cc" $(CXXFLAGS) $(ObjectSwitch)$(IntermediateDirectory)/NTRU-PEKS_Algebra.cc$(ObjectSuffix) $(IncludePath)
$(IntermediateDirectory)/NTRU-PEKS_Algebra.cc$(PreprocessSuffix): ../Algebra.cc
	$(CXX) $(CXXFLAGS) $(IncludePCH) $(IncludePath) $(PreprocessOnlySwitch) $(OutputSwitch) $(IntermediateDirectory)/NTRU-PEKS_Algebra.cc$(PreprocessSuffix) "../Algebra.cc"

##
## Clean
##
clean:
	$(RM) -r ./Release/


