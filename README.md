[![npm](https://img.shields.io/npm/v/@platypii/cesium)](https://www.npmjs.com/package/@platypii/cesium)

# @types/cesium

Standalone typescript definition file for Cesium JS.

## Why?

Have you seen how large cesium is? I just need the types.

## How to use

Add to `package.json`:
```json
{
  "devDependencies": {
    "@platypii/cesium": "^1.81.0",
  }
}
```

Add to `tsconfig.json`:
```json
{
  "compilerOptions": {
    "typeRoots": [
      "node_modules/@types",
      "node_modules/@platypii"
    ]
  }
}
```

## Publishing

```
npm publish
```
