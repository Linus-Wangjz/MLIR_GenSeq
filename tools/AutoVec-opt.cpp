toy::registerPasses();
return asMainReturnCode(MlirOptMain(argc, argv, "toy-opt", registry));