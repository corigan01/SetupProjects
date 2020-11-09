clear
tput setaf 2
echo "Working ... [                         ] 0%"
ProjectName="Pain"

# Remove any folder that has the same name and make a new one
echo -e '\e[4A\e[ wWorking ... [                         ] 1% '
rm -r $ProjectName -f
echo -e '\e[6A\e[ wWorking ... [                         ] 2% '
mkdir $ProjectName
echo -e '\e[8A\e[ wWorking ... [                         ] 3% '

# Make the file system
cd $ProjectName
mkdir src
mkdir doc
echo -e '\e[14A\e[ wWorking ... [=                        ] 6% '
touch README.md

# add to the README
echo -e '\e[18A\e[ wWorking ... [==                       ] 9% '
echo "# $ProjectName" > README.md
echo -e '\e[18A\e[ wWorking ... [==                       ] 10% '
echo "TODO: Add to the README!" >> README.md
echo -e '\e[18A\e[ wWorking ... [===                      ] 12% '

# Get autocompile.sh
git init &> /dev/null
echo -e '\e[27A\e[ wWorking ... [========                 ] 40% '
git clone https://github.com/corigan01/StartAndCompile/ &> /dev/null
echo -e '\e[29A\e[ wWorking ... [===============          ] 70% '
mv StartAndCompile/autocompile.sh ../$ProjectName/src
echo -e '\e[31A\e[ wWorking ... [================         ] 73% '
rm -r StartAndCompile -f
echo -e '\e[33A\e[ wWorking ... [==================       ] 80% '

# Make .cpp file
cd src
touch main.cpp
touch example.h
echo -e '\e[39A\e[ wWorking ... [==================       ] 83% '
echo "#include <iostream>" > main.cpp
echo "" >> main.cpp
echo "int main() {" >> main.cpp
echo "    std::cout << \"Hello World\" << std::endl;" >> main.cpp
echo "}" >> main.cpp
echo -e '\e[45A\e[ wWorking ... [====================     ] 90% '


# setup automatic compile
mkdir checksum
echo -e '\e[45A\e[ wWorking ... [====================     ] 91% '
cd checksum
echo -e '\e[45A\e[ wWorking ... [=====================    ] 92% '
touch OldCheck.txt
touch sumfile.txt
cd ..
echo -e '\e[45A\e[ wWorking ... [=========================] 100% '
echo "Done setting up project folders"
echo
echo "Starting autocompile.sh -- This may take a bit..."
tput setaf 7
bash autocompile.sh

