cd rust
cargo build --release
strip ./target/release/io_test
echo "---- timing rust release ./target/release/io_test ----"
/usr/bin/time -v ./target/release/io_test

cd ../cpp
make
echo "---- timing c++ ./io_test ----"
/usr/bin/time -v ./io_test
echo "---- timing c++ ./io_test_static ----"
/usr/bin/time -v ./io_test_static


cd ../python3
echo "---- timing Python3 ./io_test.py ----"
/usr/bin/time -v python3 ./io_test.py

cd ..

# echo "---- effective differences between the two methods of generating files ----"
# diff -w  rust_outfile.txt cpp_outfile.txt
