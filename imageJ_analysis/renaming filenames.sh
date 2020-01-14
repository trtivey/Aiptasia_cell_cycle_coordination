#!/bin/bash

for name in *; do
    mv "$name" "${name:15}";
done