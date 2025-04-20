add_mlir_dialect_library(MLIRGenSeq
		HelloDialect.cpp
		HelloOps.cpp
		LowerToAffine.cpp
		LowerToLLVM.cpp

        ADDITIONAL_HEADER_DIRS
        ${PROJECT_SOURCE_DIR}/include/Hello

        DEPENDS
        MLIRHelloOpsIncGen

	LINK_LIBS PUBLIC
	MLIRIR
	)
