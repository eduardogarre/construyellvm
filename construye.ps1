rm llvm -Force -Recurse -ErrorAction SilentlyContinue
rm obra -Force -Recurse -ErrorAction SilentlyContinue

git clone --depth 1 --config core.autocrlf=false https://github.com/llvm/llvm-project.git llvm-src

mkdir obra
cd obra

cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=c:/llvm -DLLVM_TARGETS_TO_BUILD="all" -DLLVM_TARGET_ARCH="host" -DLLVM_BUILD_EXAMPLES=ON -DLLVM_BUILD_TOOLS=ON -DLLVM_ENABLE_THREADS=ON -DLLVM_INCLUDE_EXAMPLES=ON -DLLVM_INCLUDE_TOOLS=ON -DLLVM_OPTIMIZED_TABLEGEN=ON -DLLVM_PARALLEL_COMPILE_JOBS="16" -DLLVM_PARALLEL_LINK_JOBS="16" ..\llvm-src\llvm
cmake --build . --parallel
cmake --build . --target install

cd ..