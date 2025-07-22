# StreaksForYnabWebsite

This is the official website for Streaks (For YNAB), built with Jekyll and hosted on GitHub Pages.

## 🚀 Quick Start

### Prerequisites

- Ruby 2.6 or higher
- Bundler gem

### Local Development

1. **Install dependencies:**

   ```bash
   bundle install
   ```

2. **Start the development server:**

   ```bash
   bundle exec jekyll serve
   ```

3. **View the site:** Open [http://localhost:4000](http://localhost:4000) in your browser.

### Local Development with Base URL

If you encounter issues with the base URL configuration, use the development config:

```bash
bundle exec jekyll serve --config _config.yml,_config_dev.yml
```

This overrides the base URL for local testing.

### Building for Production

```bash
bundle exec jekyll build
```

The built site will be in the `_site` directory.

## 📁 Project Structure

```
StreaksForYnabWebsite/
├── _config.yml          # Jekyll configuration
├── _privacy_versions/   # Privacy policy versions
├── views/               # Website view files
│   ├── index.html       # Homepage
│   ├── privacy.md       # Privacy policy page
│   └── privacy/         # Privacy policy subpages
│       └── versions.md  # Privacy policy versions page
├── docs/                # Documentation
│   ├── DEPLOYMENT.md    # Deployment guide
│   ├── SETUP_SUMMARY.md # Setup summary
│   └── PRETTIER.md      # Code formatting guide
├── Gemfile              # Ruby dependencies
├── LICENSE              # MIT License
└── README.md            # This file
```

### Environment Variables

The site uses the following configuration in `_config.yml`:

- `url`: The production URL (e.g., `https://streaksforynab.app`)
- `title`: Site title
- `description`: Site description for SEO

## 📝 Content Management

### Adding New Pages

1. Create a new `.md` or `.html` file in the `views/` directory
2. Add front matter with layout and metadata
3. Write content in Markdown or HTML
4. Add permalink if needed for custom URL structure

### Updating Privacy Policy

1. Edit `views/privacy.md` for the main privacy page
2. Edit `views/privacy/versions.md` for the versions listing page
3. Edit `_privacy_versions/` for version history
4. Update the "Last Updated" date
5. Commit and push changes

### App Version Updates

When updating the app:

1. **Update privacy policy** if data handling changes
2. **Update homepage** with new features or version info
3. **Update download links** when App Store version is available

## 🎨 Customization

### Theme

This site uses the Jekyll Minima theme. To customize:

1. **Override theme files:**

   ```bash
   bundle exec jekyll new-theme-copy
   ```

2. **Edit CSS:** Create `assets/css/style.scss`

3. **Custom layouts:** Create `_layouts/` directory

### Styling

The site uses GitHub Pages' default styling. To add custom styles:

1. Create `assets/css/style.scss`
2. Import your custom styles
3. Override theme variables as needed

## 🔍 SEO

The site includes:

- Jekyll SEO Tag plugin for meta tags
- Sitemap generation
- Open Graph tags
- Twitter Card support

## 📞 Support

For website issues:

- **GitHub Issues**: [Report problems](https://github.com/ynabaddons/StreaksForYnabWebsite/issues)
- **Email**: [support@streaksforynab.app](mailto:support@streaksforynab.app)

## 📄 License

This website repository is open source and available under the MIT License. However, the main
StreaksForYnab iOS app repository is private and proprietary.

### What's Open Source

- ✅ This website code and documentation
- ✅ Website deployment configuration
- ✅ Privacy policy templates

### What's Private

- ❌ StreaksForYnab iOS app source code
- ❌ App-specific business logic
- ❌ Internal development tools

### Contributing to the Website

Contributions to improve the website are welcome! Please feel free to:

- Report issues with the website
- Suggest improvements to documentation
- Submit pull requests for website enhancements

---

_Built with Jekyll and hosted on GitHub Pages_
