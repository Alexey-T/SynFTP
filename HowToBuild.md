All binaries were built with MinGW 4.8.1. The IDE CodeLite v6.1 was used to compile
the source code of SynFTP.dll. The IDE Code::Blocks v13.12 was used to compile
the source code of libssh.a, libTinyXML.a, libUTCP.a and libzlib.a. The OpenSSL
libraries (libcrypto.a and libssl.a) were directly compiled using the provided
configure and make files of the OpenSSL project:
Assume OpenSSL is located in c:\Projects\openssl-1.0.2f\ and SynFTP is 
located in c:\Projects\SynFTP\. In the MinGW32 environment (MSYS) run the commands
```sh
cd /c/Projects/openssl-1.0.2f
./Configure mingw zlib --with-zlib-include=/c/Projects/SynFTP/zlib
sed -i 's/ -O3 / -Os -O3 -flto -fuse-linker-plugin /' Makefile
attrib -R Makefile
make
cp *.a /c/Projects/SynFTP/lib
```
