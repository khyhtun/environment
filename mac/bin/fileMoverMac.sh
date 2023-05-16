#!/bin/bash
find -E . -type f -regex ".*ENG\ RELEASE.*\.XML" -exec sh -c  'mv "$@" "$0"' ../ENG\ RELEASE/ {} +
find -E . -type f -regex ".*ENG\ RELEASE.*\.pdf" -exec sh -c  'mv "$@" "$0"' ../ENG\ RELEASE/Content {} +
find -E . -type f -regex ".*ENG\ RELEASE.*\.x_t" -exec sh -c  'mv "$@" "$0"' ../ENG\ RELEASE/Content {} +
find -E . -type f -regex ".*ENG\ RELEASE.*\.jpg" -exec sh -c  'mv "$@" "$0"' ../ENG\ RELEASE/Content {} +

find -E . -type f -regex ".*PROTO\ RELEASE.*\.XML" -exec sh -c  'mv "$@" "$0"' ../ENG\ RELEASE/ {} +
find -E . -type f -regex ".*PROTO\ RELEASE.*\.pdf" -exec sh -c  'mv "$@" "$0"' ../ENG\ RELEASE/Content {} +
find -E . -type f -regex ".*PROTO\ RELEASE*\.x_t" -exec sh -c  'mv "$@" "$0"' ../ENG\ RELEASE/Content {} +
find -E . -type f -regex ".*PROTO\ RELEASE*\.jpg" -exec sh -c  'mv "$@" "$0"' ../ENG\ RELEASE/Content {} +

find -E . -type f -regex ".*APPROVED\ FOR\ ENG.*\.XML" -exec sh -c  'mv "$@" "$0"' ../ENG\ RELEASE/ {} +
find -E . -type f -regex ".*APPROVED\ FOR\ ENG.*\.pdf" -exec sh -c  'mv "$@" "$0"' ../ENG\ RELEASE/Content {} +
find -E . -type f -regex ".*APPROVED\ FOR\ ENG.*\.x_t" -exec sh -c  'mv "$@" "$0"' ../ENG\ RELEASE/Content {} +
find -E . -type f -regex ".*APPROVED\ FOR\ ENG.*\.jpg" -exec sh -c  'mv "$@" "$0"' ../ENG\ RELEASE/Content {} +

find -E . -type f -regex ".*MFG\ RELEASE.*\.XML" -exec sh -c  'mv "$@" "$0"' ../MFG\ RELEASE/ {} +
find -E . -type f -regex ".*MFG\ RELEASE.*\.pdf" -exec sh -c  'mv "$@" "$0"' ../MFG\ RELEASE/Content {} +
find -E . -type f -regex ".*MFG\ RELEASE.*\.x_t" -exec sh -c  'mv "$@" "$0"' ../MFG\ RELEASE/Content {} +
find -E . -type f -regex ".*MFG\ RELEASE.*\.jpg" -exec sh -c  'mv "$@" "$0"' ../MFG\ RELEASE/Content {} +

find -E . -type f -regex ".*PROD\ RELEASE.*\.XML" -exec sh -c  'mv "$@" "$0"' ../MFG\ RELEASE/ {} +
find -E . -type f -regex ".*PROD\ RELEASE.*\.pdf" -exec sh -c  'mv "$@" "$0"' ../MFG\ RELEASE/Content {} +
find -E . -type f -regex ".*PROD\ RELEASE.*\.x_t" -exec sh -c  'mv "$@" "$0"' ../MFG\ RELEASE/Content {} +
find -E . -type f -regex ".*PROD\ RELEASE.*\.jpg" -exec sh -c  'mv "$@" "$0"' ../MFG\ RELEASE/Content {} +

find -E . -type f -regex ".*APPROVED\ FOR\ MFG.*\.XML" -exec sh -c  'mv "$@" "$0"' ../MFG\ RELEASE/ {} +
find -E . -type f -regex ".*APPROVED\ FOR\ MFG.*\.pdf" -exec sh -c  'mv "$@" "$0"' ../MFG\ RELEASE/Content {} +
find -E . -type f -regex ".*APPROVED\ FOR\ MFG.*\.x_t" -exec sh -c  'mv "$@" "$0"' ../MFG\ RELEASE/Content {} +
find -E . -type f -regex ".*APPROVED\ FOR\ MFG.*\.jpg" -exec sh -c  'mv "$@" "$0"' ../MFG\ RELEASE/Content {} +

find -E . -type f -regex "^.*\.XML" -exec sh -c  'mv "$@" "$0"' ../NO\ STATUS/ {} +
find -E . -type f -regex "^.*\.pdf" -exec sh -c  'mv "$@" "$0"' ../NO\ STATUS/Content {} + 
find -E . -type f -regex "^.*\.x_t" -exec sh -c  'mv "$@" "$0"' ../NO\ STATUS/Content {} +
find -E . -type f -regex "^.*\.jpg" -exec sh -c  'mv "$@" "$0"' ../NO\ STATUS/Content {} +

find -E . -type f -regex "^.*\.XML" -exec sh -c  'mv "$@" "$0"' ../NO\ STATUS/ {} +
find -E . -type f -regex "^.*\.pdf" -exec sh -c  'mv "$@" "$0"' ../NO\ STATUS/Content {} + 
find -E . -type f -regex "^.*\.x_t" -exec sh -c  'mv "$@" "$0"' ../NO\ STATUS/Content {} +
find -E . -type f -regex "^.*\.jpg" -exec sh -c  'mv "$@" "$0"' ../NO\ STATUS/Content {} +

find -E . -type f -regex "^.*\.XML" -exec sh -c  'mv "$@" "$0"' ../NO\ STATUS/ {} +
find -E . -type f -regex "^.*\.pdf" -exec sh -c  'mv "$@" "$0"' ../NO\ STATUS/Content {} + 
find -E . -type f -regex "^.*\.x_t" -exec sh -c  'mv "$@" "$0"' ../NO\ STATUS/Content {} +
find -E . -type f -regex "^.*\.jpg" -exec sh -c  'mv "$@" "$0"' ../NO\ STATUS/Content {} +
