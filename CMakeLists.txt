#--------------  Cmake del proyecto ---------------

# --->  ajustes
cmake_minimum_required(VERSION 3.14) # versión de cmake
project(MuonRad VERSION 1)
set(CMAKE_CXX_STANDARD 17) # variable de ajuste estándar del compilador std=c++17 o c++14   
set(CMAKE_CXX_STANDARD_REQUIRED True) # variable de ajuste forzar uso de c++17 o c++14

# --->  paquetería necesaria
find_package(ROOT 6.24 CONFIG REQUIRED) # ROOT mín. v.6.24
include("${ROOT_USE_FILE}") # configurar ajustes globales ROOT
message(STATUS "Root: Found") # mensaje de dir. root
message(STATUS "Roo Source: ${ROOT_USE_FILE}") # mensaje de dir. fuente
# ver: https://cliutils.gitlab.io/modern-cmake/chapters/packages/ROOT.html 

#----------------------------------------------------------------------------
# accede a los archivos fuente del proyecto 
file(GLOB_RECURSE APP_SRC ${PROJECT_SOURCE_DIR}/src/*.cc) # asigna los *.cpp var. ambiental: APP_SRC
message(STATUS "App Source: ${APP_SRC}") # mensaje de dir. fuente
# ---> directorio include de var. ambiental del proyecto 
include_directories(${PROJECT_SOURCE_DIR}/include) # ---> directorio de ficheros .h

#----------------------------------------------------------------------------
# definir los ejecutables, y vincular las librerias a Geant4.
add_executable(main ${APP_SRC} ) # ejecutable del código fuente --> APP_SRC
target_link_libraries(main PUBLIC ${ROOT_LIBRARIES} ${ROOT_EXE_LINKER_FLAGS})
