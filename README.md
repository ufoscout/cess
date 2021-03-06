# About Yew

This template demonstrates the minimum code and tooling necessary for a frontend web app with simple deployable artifacts consisting of one HTML file, one JavaScript file, and one WebAssembly file, using [`Yew`](https://github.com/yewstack/yew), [`wasm-bindgen`](https://github.com/rustwasm/wasm-bindgen), and [`wasm-pack`](https://github.com/rustwasm/wasm-pack).

Note: [`yew-wasm-pack-template`](https://github.com/yewstack/yew-wasm-pack-template) is the full-featured counterpart to this template, integrating many common web technologies.

## Usage

### 1) Install `Rust` and `wasm-pack`

Follow the instructions at https://www.rust-lang.org/tools/install and follow the `installation` link at [`wasm-pack`](https://github.com/rustwasm/wasm-pack).

### 2) Build

Enter `wasm-pack build --target web` from your project's root directory.

### 3) [temporary] Bundle

Enter `rollup ./main.js --format iife --file ./pkg/bundle.js` from your project's root directory.

Note: Until `wasm-pack` [RFC #6](https://github.com/rustwasm/rfcs/blob/master/text/006-local-js-dependencies.md) is implemented there is no available option to [generate a single amalgamated JavaScript file](https://github.com/rustwasm/wasm-pack/issues/699).  In the interim a bundler, such as [`Rollup`](https://rollupjs.org/guide/en/#quick-start), must be used.

### 4) [optional] Test Run

Run a webserver from your project's root directory, such as with the Python 3 command: `python -m http.server 8080`, and load http://localhost:8080/ in a browser to run the app.

Note: It's expected behavior for the browser console to display an error similar to "WebAssembly.instantiateStreaming failed. Assuming this is because your server does not serve wasm with application/wasm MIME type."  Your production webserver should be configured to associate WebAssembly files with the `application/wasm` MIME type.

### 5) Deploy

Access your generated build artifacts, `bundle.js` and `yew_wasm_pack_minimal_bg.wasm`, in ./pkg from your project's root directory.



# About wasm-pack

[**📚 Read this template tutorial! 📚**][template-docs]

This template is designed for compiling Rust libraries into WebAssembly and
publishing the resulting package to NPM.

Be sure to check out [other `wasm-pack` tutorials online][tutorials] for other
templates and usages of `wasm-pack`.

[tutorials]: https://rustwasm.github.io/docs/wasm-pack/tutorials/index.html
[template-docs]: https://rustwasm.github.io/docs/wasm-pack/tutorials/npm-browser-packages/index.html

## 🚴 Usage

### 🐑 Use `cargo generate` to Clone this Template

[Learn more about `cargo generate` here.](https://github.com/ashleygwilliams/cargo-generate)

```
cargo generate --git https://github.com/rustwasm/wasm-pack-template.git --name my-project
cd my-project
```

### 🛠️ Build with `wasm-pack build`

```
wasm-pack build
```

### 🔬 Test in Headless Browsers with `wasm-pack test`

```
wasm-pack test --headless --firefox
```

### 🎁 Publish to NPM with `wasm-pack publish`

```
wasm-pack publish
```

## 🔋 Batteries Included

* [`wasm-bindgen`](https://github.com/rustwasm/wasm-bindgen) for communicating
  between WebAssembly and JavaScript.
* [`console_error_panic_hook`](https://github.com/rustwasm/console_error_panic_hook)
  for logging panic messages to the developer console.
* [`wee_alloc`](https://github.com/rustwasm/wee_alloc), an allocator optimized
  for small code size.
