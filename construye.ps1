#rm llvm-src -Force -Recurse -ErrorAction SilentlyContinue
#rm obra -Force -Recurse -ErrorAction SilentlyContinue

git clone --config core.autocrlf=false https://github.com/llvm/llvm-project.git llvm-src

cd .\llvm-src
git checkout llvmorg-14.0.0
cd ..

mkdir obra
cd obra

cmake -DCMAKE_BUILD_TYPE=Release -DLLVM_ENABLE_PROJECTS="lld" -DCMAKE_INSTALL_PREFIX=c:/llvm -DLLVM_TARGETS_TO_BUILD="AArch64;ARM;WebAssembly;X86" -DLLVM_TARGET_ARCH="host" -DLLVM_BUILD_EXAMPLES=OFF -DLLVM_BUILD_TOOLS=ON -DLLVM_ENABLE_THREADS=ON -DLLVM_INCLUDE_EXAMPLES=OFF -DLLVM_INCLUDE_TOOLS=ON -DLLVM_OPTIMIZED_TABLEGEN=ON -DLLVM_PARALLEL_COMPILE_JOBS="24" -DLLVM_PARALLEL_LINK_JOBS="24" ..\llvm-src\llvm
cmake --build . --parallel
cmake --build . --target install

cd ..