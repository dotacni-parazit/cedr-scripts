#!/bin/bash

mkdir -p CSV

gunzip GZ/*
mv GZ/*.csv CSV/
