#!/bin/bash

content=(one two three four five)
mkdir -p ./5
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./5/6.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./5/\ 50.txt
mkdir -p ./3
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./3/4.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./3/3.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./3/5.txt
mkdir -p ./1.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./1.txt/4.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./1.txt/1.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./1.txt/3.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./1.txt/5.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./1.txt/6.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./1.txt/8.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./1.txt/2.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./1.txt/7.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./1.txt/9.txt
mkdir -p ./4
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./4/1\'.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./4/9\ 1.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./4/\ 50.txt
mkdir -p ./7
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./7/8.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./7/7.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./7/9.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./7/1\'.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./7/9\ 1.txt
mkdir -p ./6
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./6/3.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./6/5.txt
mkdir -p ./2
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./2/3.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./2/2.txt
mkdir -p ./2\ 1
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./2\ 1/3.txt
echo ${content[$(( $RANDOM % ${#content[*]} ))]} > ./2\ 1/2.txt
