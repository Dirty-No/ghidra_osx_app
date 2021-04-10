#!/bin/bash

# based on https://gist.github.com/yifanlu/e9965cdb148b550335e57899f790cad2
# Downloading and bundling open-jdk11 is optional.

echo Downloading openjdk-11
curl https://download.java.net/java/ga/jdk11/openjdk-11_osx-x64_bin.tar.gz -o openjdk-11.tar.gz

echo Downloading .app template
curl https://gist.githubusercontent.com/yifanlu/e9965cdb148b550335e57899f790cad2/raw/043f7ac03d322f369ed122aa93230dac2af0d66e/Ghidra-OSX-Launcher-Template.tgz -o template.tar.gz

echo Downloading the Ghidra build
curl https://ghidra-sre.org/ghidra_9.2.2_PUBLIC_20201229.zip -o ghidra.zip

tar -xf template.tar.gz
tar -xf openjdk-11.tar.gz
unzip ghidra.zip

rm openjdk-11.tar.gz template.tar.gz ghidra.zip

mv jdk-11.jdk Ghidra.app/jdk
mv ghidra_9.2.2_PUBLIC Ghidra.app/ghidra
