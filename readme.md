# Construye e instala LLVM

Guión para construir e instalar LLVM en Windows.

## Repositorio

Este guión descarga el código de LLVM desde su repositorio en Github: https://github.com/llvm/llvm-project.git

## Versión

El guión predefine la versión 14.0.0 de LLVM. Para cambiar de versión modifica la línea `git checkout llvmorg-14.0.0` dentro del guión.

## Configuración

- DCMAKE_BUILD_TYPE=Release
- DLLVM_ENABLE_PROJECTS="lld"
- DCMAKE_INSTALL_PREFIX=c:/llvm
- DLLVM_TARGETS_TO_BUILD="AArch64;ARM;WebAssembly;X86"
- DLLVM_TARGET_ARCH="host"
- DLLVM_BUILD_EXAMPLES=OFF
- DLLVM_BUILD_TOOLS=ON
- DLLVM_ENABLE_THREADS=ON
- DLLVM_INCLUDE_EXAMPLES=OFF
- DLLVM_INCLUDE_TOOLS=ON
- DLLVM_OPTIMIZED_TABLEGEN=ON
- DLLVM_PARALLEL_COMPILE_JOBS="24"
- DLLVM_PARALLEL_LINK_JOBS="24"

## Construcción e instalación

Ejecuta el guión con la orden `./construye.ps1`. El guión descargará el código de LLVM, escogerá la versión 14.0.0 y configurará y construirá el proyecto. Una vez construido, guardará los archivos de LLVM en la carpeta de instalación.

## Últimos pasos de instalación

Recuerda incluir en la variable de entorno PATH las siguientes subcarpetas dentro de la carpeta de instalación:
- bin/
- lib/cmake/llvm/
- lib/cmake/lld/