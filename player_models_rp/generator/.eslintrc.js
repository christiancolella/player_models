module.exports = {
    "env": {
        "browser": true,
        "es2021": true
    },
    "extends": [
        "eslint:recommended",
        "plugin:@typescript-eslint/recommended"
    ],
    "parser": "@typescript-eslint/parser",
    "parserOptions": {
        "ecmaVersion": 12,
        "sourceType": "module"
    },
    "plugins": [
        "@typescript-eslint"
    ],
    "rules": {
        "consistent-this": [
            2,
            "self"
        ],
        "no-this-before-super": "off",
        "@typescript-eslint/no-this-alias": [
            "error",
            {
                "allowDestructuring": true,
                "allowedNames": [
                    "self"
                ]
            }
        ],
        "@typescript-eslint/class-name-casing": "off",
        // "@typescript-eslint/camelcase": "warn"
        "@typescript-eslint/camelcase": "off",
        "semi": 2,
        "quotes": ["error", "double"]
    }
};
