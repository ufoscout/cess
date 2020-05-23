import init, { run_app } from './pkg/yew.js';
async function main() {
   await init('/pkg/yew_bg.wasm');
   run_app();
}
main()