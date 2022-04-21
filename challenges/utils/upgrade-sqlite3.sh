# compiling is the same as before
curl https://www.sqlite.org/src/tarball/sqlite.tar.gz?r=release | tar xz
cd sqlite/
./configure
make sqlite3.c
cd /content
npx degit coleifer/pysqlite3 -f
cp sqlite/sqlite3.[ch] .
python setup.py build_static build
# use 3.7 instead
cp build/lib.linux-x86_64-3.7/pysqlite3/_sqlite3.cpython-37m-x86_64-linux-gnu.so \
     /usr/lib/python3.7/lib-dynload/
