[![npm](https://img.shields.io/npm/v/@platypii/cesium)](https://www.npmjs.com/package/@platypii/cesium)

# @types/cesium

Standalone typescript definition file for Cesium JS.

## Why?

Have you seen how large cesium is? I just need the types.

I have a build pipeline with some expensive steps like js minification, and including Cesium makes it really slow (60+ mb). With @platypii/cesium, typescript is happy, and I can just include cesium directly in my webpage without slowing down my build process.

## How to use

Add to `package.json`:
```json
{
  "devDependencies": {
    "@platypii/cesium": "^1.83.0",
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
