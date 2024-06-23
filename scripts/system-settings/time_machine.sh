#!/bin/zsh

#-- Delete all local snapshots:
for d in $(tmutil listlocalsnapshotdates | grep "-"); do sudo tmutil deletelocalsnapshots $d; done
