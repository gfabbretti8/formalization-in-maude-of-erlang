#!/bin/bash

echo "Deleting old semantics."
rm -rf rev-model fwd-model

echo "Preparing new directory."
cp -r ../case-studies/$1 rev-model
cp -r ../case-studies/$1 fwd-model
cp ./key-modules/* ./rev-model/

gsed -i '/^load entity.maude ./a load entity-with-key.maude .\n load context.maude .' ./rev-model/framework.maude

rm rev-model/system.maude

#Producing the reversible syntax
echo "Producing the reversible syntax."
echo $(maude -no-banner -no-advise -no-ansi-color -no-mixfix -no-tecla rev-syntax.maude) >> rev-model/system.maude

maude -no-banner -no-advise rev-syntax.maude

truncate -s -5 ./rev-model/system.maude

echo "Producing the forward reversible rules."
#Producing the forward reversible rules
echo "$(maude -no-banner -no-advise -no-ansi-color -no-mixfix -no-tecla transform-std-op-sem.maude )" >> rev-model/rew-rules.maude

maude -no-banner -no-advise transform-std-op-sem.maude

truncate -s -5 ./rev-model/rew-rules.maude

echo "Producing the backward reversible rules."
#Producing the forward reversible rules
maude -no-banner -no-advise -no-mixfix -no-tecla -no-wrap transform-fwd-op-sem.maude

#Producing the backward reversible rules
echo "$(maude -no-banner -no-advise -no-ansi-color -no-mixfix -no-tecla transform-fwd-op-sem.maude )" >> rev-model/rew-rules.maude

truncate -s -5 ./rev-model/rew-rules.maude


