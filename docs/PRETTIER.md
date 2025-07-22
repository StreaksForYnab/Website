# Prettier Configuration

This project uses Prettier for consistent code formatting across all files.

## 🚀 Quick Start

### Install Dependencies

```bash
npm install
```

### Format All Files

```bash
npm run format
```

### Check Formatting (CI/CD)

```bash
npm run format:check
```

## 📝 Available Scripts

| Script                 | Description                                |
| ---------------------- | ------------------------------------------ |
| `npm run format`       | Format all files in the project            |
| `npm run format:check` | Check if all files are properly formatted  |
| `npm run format:fix`   | Format files and ignore unknown file types |

## ⚙️ Configuration

### .prettierrc

The Prettier configuration is defined in `.prettierrc`:

```json
{
  "semi": true,
  "trailingComma": "es5",
  "singleQuote": true,
  "printWidth": 80,
  "tabWidth": 2,
  "useTabs": false,
  "bracketSpacing": true,
  "arrowParens": "avoid",
  "endOfLine": "lf"
}
```

### File-Specific Overrides

- **Markdown files** (`.md`): 100 character line width, prose wrapping enabled
- **YAML files** (`.yml`, `.yaml`): Double quotes instead of single quotes

### .prettierignore

Files and directories excluded from formatting:

- Jekyll build output (`_site/`, `.sass-cache/`, etc.)
- Dependencies (`node_modules/`, `vendor/`, etc.)
- OS generated files (`.DS_Store`, etc.)
- Binary files and assets

## 🔧 Editor Integration

### VS Code

1. Install the Prettier extension
2. Enable "Format on Save" in settings
3. Set Prettier as the default formatter

### Other Editors

Most editors support Prettier integration. Check the
[Prettier documentation](https://prettier.io/docs/en/editors.html) for your specific editor.

## 🔄 Git Integration

### Pre-commit Hook (Optional)

To automatically format files before commits:

1. Install husky and lint-staged:

   ```bash
   npm install --save-dev husky lint-staged
   ```

2. Add to package.json:
   ```json
   {
     "husky": {
       "hooks": {
         "pre-commit": "lint-staged"
       }
     },
     "lint-staged": {
       "*.{js,json,md,yml,yaml}": "prettier --write"
     }
   }
   ```

## 📋 File Types Supported

Prettier will format these file types in this project:

- **Markdown** (`.md`) - Documentation and content
- **YAML** (`.yml`, `.yaml`) - Configuration files
- **JSON** (`.json`) - Package and configuration files
- **JavaScript** (`.js`) - Scripts and utilities

## 🚨 Troubleshooting

### Common Issues

1. **Files not formatting**: Check `.prettierignore` for exclusions
2. **Different formatting**: Ensure you're using the same Prettier version
3. **Editor conflicts**: Disable other formatters when using Prettier

### Reset Formatting

To reset all formatting to Prettier defaults:

```bash
npm run format
```

---

_For more information, visit [prettier.io](https://prettier.io/)_
