OUTPUT_DIR="./pkg"

rm -rf $OUTPUT_DIR
wasm-pack build --target web --out-name wasm --out-dir $OUTPUT_DIR
cp  -rf ./static/* $OUTPUT_DIR