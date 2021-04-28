# -*- Makefile -*-

arch = LinuxMPICH
setup_file = setup/Make.$(arch)

include $(setup_file)


HPCG_DEPS = src/CG.o \
	    src/CG_ref.o \
	    src/TestCG.o \
	    src/ComputeResidual.o \
	    src/ExchangeHalo.o \
	    src/GenerateGeometry.o \
	    src/GenerateProblem.o \
	    src/GenerateProblem_ref.o \
	    src/CheckProblem.o \
	    src/MixedBaseCounter.o \
	    src/OptimizeProblem.o \
	    src/ReadHpcgDat.o \
	    src/ReportResults.o \
	    src/SetupHalo.o \
	    src/SetupHalo_ref.o \
	    src/TestSymmetry.o \
	    src/TestNorms.o \
	    src/WriteProblem.o \
	    src/YAML_Doc.o \
	    src/YAML_Element.o \
	    src/ComputeDotProduct.o \
	    src/ComputeDotProduct_ref.o \
	    src/mytimer.o \
	    src/ComputeOptimalShapeXYZ.o \
	    src/ComputeSPMV.o \
	    src/ComputeSPMV_ref.o \
	    src/ComputeSYMGS.o \
	    src/ComputeSYMGS_ref.o \
	    src/ComputeWAXPBY.o \
	    src/ComputeWAXPBY_ref.o \
	    src/ComputeMG_ref.o \
	    src/ComputeMG.o \
	    src/ComputeProlongation_ref.o \
	    src/ComputeRestriction_ref.o \
	    src/CheckAspectRatio.o \
	    src/OutputFile.o \
	    src/GenerateCoarseProblem.o \
	    src/init.o \
	    src/finalize.o

# These header files are included in many source files, so we recompile every file if one or more of these header is modified.
PRIMARY_HEADERS = /home/ext_ccmaster_ucsc_edu/hpcg/src/Geometry.hpp /home/ext_ccmaster_ucsc_edu/hpcg/src/SparseMatrix.hpp /home/ext_ccmaster_ucsc_edu/hpcg/src/Vector.hpp /home/ext_ccmaster_ucsc_edu/hpcg/src/CGData.hpp \
                  /home/ext_ccmaster_ucsc_edu/hpcg/src/MGData.hpp /home/ext_ccmaster_ucsc_edu/hpcg/src/hpcg.hpp

all: bin/xhpcg

bin/xhpcg: src/main.o $(HPCG_DEPS)
	$(LINKER) $(LINKFLAGS) src/main.o $(HPCG_DEPS) $(HPCG_LIBS) -o bin/xhpcg

clean:
	rm -f src/*.o bin/xhpcg

.PHONY: all clean

src/main.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/main.cpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/CG.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/CG.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/CG.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/CG_ref.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/CG_ref.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/CG_ref.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/TestCG.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/TestCG.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/TestCG.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ComputeResidual.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeResidual.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeResidual.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ExchangeHalo.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ExchangeHalo.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ExchangeHalo.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/GenerateGeometry.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/GenerateGeometry.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/GenerateGeometry.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/GenerateProblem.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/GenerateProblem.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/GenerateProblem.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/GenerateProblem_ref.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/GenerateProblem_ref.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/GenerateProblem_ref.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/CheckProblem.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/CheckProblem.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/CheckProblem.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/MixedBaseCounter.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/MixedBaseCounter.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/MixedBaseCounter.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/OptimizeProblem.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/OptimizeProblem.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/OptimizeProblem.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ReadHpcgDat.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ReadHpcgDat.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ReadHpcgDat.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ReportResults.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ReportResults.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ReportResults.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/SetupHalo.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/SetupHalo.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/SetupHalo.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/SetupHalo_ref.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/SetupHalo_ref.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/SetupHalo_ref.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/TestSymmetry.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/TestSymmetry.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/TestSymmetry.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/TestNorms.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/TestNorms.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/TestNorms.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/WriteProblem.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/WriteProblem.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/WriteProblem.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/YAML_Doc.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/YAML_Doc.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/YAML_Doc.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/YAML_Element.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/YAML_Element.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/YAML_Element.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ComputeDotProduct.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeDotProduct.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeDotProduct.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ComputeDotProduct_ref.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeDotProduct_ref.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeDotProduct_ref.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/finalize.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/finalize.cpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/init.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/init.cpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/mytimer.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/mytimer.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/mytimer.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ComputeOptimalShapeXYZ.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeOptimalShapeXYZ.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeOptimalShapeXYZ.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ComputeSPMV.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeSPMV.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeSPMV.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ComputeSPMV_ref.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeSPMV_ref.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeSPMV_ref.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ComputeSYMGS.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeSYMGS.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeSYMGS.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ComputeSYMGS_ref.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeSYMGS_ref.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeSYMGS_ref.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ComputeWAXPBY.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeWAXPBY.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeWAXPBY.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ComputeWAXPBY_ref.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeWAXPBY_ref.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeWAXPBY_ref.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ComputeMG_ref.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeMG_ref.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeMG_ref.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ComputeMG.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeMG.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeMG.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ComputeProlongation_ref.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeProlongation_ref.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeProlongation_ref.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/ComputeRestriction_ref.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeRestriction_ref.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/ComputeRestriction_ref.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/GenerateCoarseProblem.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/GenerateCoarseProblem.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/GenerateCoarseProblem.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/CheckAspectRatio.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/CheckAspectRatio.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/CheckAspectRatio.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

src/OutputFile.o: /home/ext_ccmaster_ucsc_edu/hpcg/src/OutputFile.cpp /home/ext_ccmaster_ucsc_edu/hpcg/src/OutputFile.hpp $(PRIMARY_HEADERS)
	$(CXX) -c $(CXXFLAGS) -I/home/ext_ccmaster_ucsc_edu/hpcg/src $< -o $@

