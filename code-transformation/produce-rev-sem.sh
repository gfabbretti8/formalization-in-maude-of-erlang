#!/bin/bash

echo "Deleting old semantics."
rm -rf erlang-rev-model

echo "Preparing new directory."
cp -r ../erlang-model erlang-rev-model
cp ./key-modules/* ./erlang-rev-model/

rm erlang-rev-model/entities.maude erlang-rev-model/system.maude


#Producing the reversible syntax
echo "Producing the reversible syntax."
echo $(maude -no-banner -no-advise -no-ansi-color -no-mixfix -no-tecla rev-syntax.maude) >> erlang-rev-model/entities.maude

maude -no-banner -no-advise rev-syntax.maude

truncate -s-5 ./erlang-rev-model/entities.maude

echo "Producing the forward reversible rules."
#Producing the forward reversible rules
echo "$(maude -no-banner -no-advise -no-ansi-color -no-mixfix -no-tecla -no-wrap transform-std-op-sem.maude )" >> erlang-rev-model/system.maude

maude -no-banner -no-advise transform-std-op-sem.maude 

truncate -s-5 ./erlang-rev-model/system.maude


echo "Producing the backward reversible rules."
#Producing the forward reversible rules
maude -no-banner -no-advise  -no-mixfix -no-tecla -no-wrap transform-fwd-op-sem.maude




