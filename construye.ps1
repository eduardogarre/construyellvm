rm llvm -Force -Recurse -ErrorAction SilentlyContinue
rm obra -Force -Recurse -ErrorAction SilentlyContinue

git clone --depth 1 --config core.autocrlf=false https://github.com/llvm/llvm-project.git llvm

mkdir obra
cd obra

cmake -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=c:/llvm -DLLVM_TARGETS_TO_BUILD="X86" ..\llvm\llvm
cmake --build . --parallel 4
cmake --build . --target install

cd ..