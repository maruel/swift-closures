#!/bin/bash
set -eu

swift build
.build/debug/swift-closures
