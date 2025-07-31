# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "E:/work-data/IDF/v5.5/esp-idf/components/bootloader/subproject")
  file(MAKE_DIRECTORY "E:/work-data/IDF/v5.5/esp-idf/components/bootloader/subproject")
endif()
file(MAKE_DIRECTORY
  "E:/Git-category/Git-Arduino/esp-idf-code/esp32-s3-cam/esp32-s3-cam-build/build/bootloader"
  "E:/Git-category/Git-Arduino/esp-idf-code/esp32-s3-cam/esp32-s3-cam-build/build/bootloader-prefix"
  "E:/Git-category/Git-Arduino/esp-idf-code/esp32-s3-cam/esp32-s3-cam-build/build/bootloader-prefix/tmp"
  "E:/Git-category/Git-Arduino/esp-idf-code/esp32-s3-cam/esp32-s3-cam-build/build/bootloader-prefix/src/bootloader-stamp"
  "E:/Git-category/Git-Arduino/esp-idf-code/esp32-s3-cam/esp32-s3-cam-build/build/bootloader-prefix/src"
  "E:/Git-category/Git-Arduino/esp-idf-code/esp32-s3-cam/esp32-s3-cam-build/build/bootloader-prefix/src/bootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "E:/Git-category/Git-Arduino/esp-idf-code/esp32-s3-cam/esp32-s3-cam-build/build/bootloader-prefix/src/bootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "E:/Git-category/Git-Arduino/esp-idf-code/esp32-s3-cam/esp32-s3-cam-build/build/bootloader-prefix/src/bootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
