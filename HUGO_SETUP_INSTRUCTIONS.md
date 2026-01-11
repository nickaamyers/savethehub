# Hugo Site Setup Instructions

You now have a complete Hugo site ready to deploy! Here's how to get it online.

## What You Have

✅ Complete Hugo site with Docsy theme configuration
✅ Homepage with hero section and feature blocks
✅ About section (governance, mission/vision)
✅ Financials, Programming, Operations, Get Involved sections
✅ Blog/News section ready for posts
✅ GitHub Actions workflow for automatic deployment
✅ Professional navigation and structure

## Quick Start (3 Steps to Deploy)

### Step 1: Upload to GitHub

**Option A: Create New Repository**
```bash
# On your computer, navigate to where you want the site
cd ~/projects

# Copy the savethehub-hugo folder I created to your computer
# Then:
cd savethehub-hugo

# Initialize git
git init
git add .
git commit -m "Initial Hugo site with Docsy theme"

# Add Docsy theme as submodule
git submodule add --depth 1 https://github.com/google/docsy.git themes/docsy

# Create GitHub repo (on github.com/sshellabarger/savethehub)
# Then push
git remote add origin https://github.com/sshellabarger/savethehub.git
git branch -M main
git push -u origin main
```

**Option B: Replace Existing Repository**
```bash
# Backup your existing markdown files first!
# Then replace repository contents with Hugo site
cd /path/to/existing/savethehub
rm -rf *  # CAREFUL! Make sure you backed up first
cp -r /path/to/savethehub-hugo/* .

# Add Docsy theme
git submodule add --depth 1 https://github.com/google/docsy.git themes/docsy

# Commit and push
git add .
git commit -m "Convert to Hugo site with Docsy theme"
git push origin main
```

### Step 2: Enable GitHub Pages

1. Go to: https://github.com/sshellabarger/savethehub/settings/pages
2. Under "Build and deployment":
   - **Source:** GitHub Actions (not "Deploy from a branch")
3. That's it! The workflow will run automatically

### Step 3: Configure DNS

Add these DNS records at your domain registrar for savethehub.org:

```
Type: A
Name: @
Value: 185.199.108.153

Type: A  
Name: @
Value: 185.199.109.153

Type: A
Name: @
Value: 185.199.110.153

Type: A
Name: @
Value: 185.199.111.153

Type: CNAME
Name: www
Value: sshellabarger.github.io
```

Then in GitHub Pages settings, add custom domain: `savethehub.org`

## Local Development

### Prerequisites
Install Hugo Extended:

**Mac:**
```bash
brew install hugo
```

**Windows:**
```bash
choco install hugo-extended
```

**Linux:**
```bash
wget https://github.com/gohugoio/hugo/releases/download/v0.139.3/hugo_extended_0.139.3_Linux-64bit.tar.gz
tar -xzf hugo_extended_0.139.3_Linux-64bit.tar.gz
sudo mv hugo /usr/local/bin/
```

### Run Locally

```bash
cd savethehub-hugo

# First time only: Get theme
git submodule update --init --recursive

# Run development server
hugo server -D

# Open http://localhost:1313
```

## Adding Content

### Add a New Page

```bash
# Create new page in about section
hugo new about/history.md

# Edit the file that's created
# It will have front matter already set up
```

### Add a Blog Post

```bash
# Create news post
hugo new blog/2025-01-15-community-meeting.md

# Front matter will be automatically added with date
```

### Edit Existing Content

Just edit the markdown files in `content/en/`:
- `content/en/about/governance.md`
- `content/en/financials/_index.md`
- etc.

## File Structure

```
savethehub-hugo/
├── config.toml                    # Site configuration
├── content/en/                    # All content in English
│   ├── _index.md                 # Homepage
│   ├── about/
│   │   ├── _index.md
│   │   ├── governance.md
│   │   └── mission-vision.md
│   ├── financials/
│   ├── programming/
│   ├── operations/
│   ├── get-involved/
│   └── blog/
├── static/
│   ├── images/                    # Put images here
│   └── data/                      # Put Excel files here
├── themes/docsy/                  # Docsy theme (submodule)
└── .github/workflows/hugo.yml     # Auto-deployment config
```

## Adding Images

1. Put images in `static/images/`
2. Reference in markdown:
   ```markdown
   ![Hub Building](/images/hub-exterior.jpg)
   ```

## Adding Your Logo

```bash
# Copy logo to static/images
cp /path/to/hubLogo.jpg static/images/

# Logo will automatically appear in navigation
# (configured in config.toml with navbar_logo = true)
```

## Customizing Colors

Edit `config.toml`, look for:

```toml
[params.ui.colors]
  primary = "#6B4423"        # earth-brown
  secondary = "#2D5016"      # forest-green  
  accent = "#E86A33"         # workshop-orange
```

## Next Steps After Deployment

1. ✅ Add logo to `static/images/hubLogo.jpg`
2. ✅ Add photos from social media to `static/images/`
3. ✅ Create your first blog post announcing the relaunch
4. ✅ Update any placeholder content
5. ✅ Share the site with your community!

## Migrating Your Existing Markdown Files

Your existing .md files (governance.md, revenue_model.md, etc.) can be easily converted:

1. Copy content from existing file
2. Add front matter at top:
   ```markdown
   ---
   title: "Page Title"
   description: "Description"
   weight: 1
   ---
   
   [Your existing markdown content here]
   ```
3. Save in appropriate directory

## Troubleshooting

**Site not building?**
- Check GitHub Actions tab for error messages
- Ensure Docsy theme submodule is properly added
- Verify config.toml syntax

**Images not showing?**
- Images must be in `static/` directory
- Reference as `/images/filename.jpg` (no "static" in path)

**Theme not loading?**
```bash
git submodule update --init --recursive
```

**Need help?**
- Hugo docs: https://gohugo.io/documentation/
- Docsy docs: https://www.docsy.dev/docs/
- Create issue on GitHub repository

## Why This Is Better Than Plain HTML

✅ **Easy Updates** - Edit markdown, not HTML
✅ **Automatic Navigation** - Add page = automatic menu update
✅ **Blog Ready** - Post updates easily
✅ **Search** - Built into Docsy theme
✅ **Responsive** - Mobile-friendly automatically
✅ **Fast** - Hugo builds in milliseconds
✅ **Version Control** - All changes tracked in Git
✅ **No Database** - Static files, zero maintenance

## What's Already Configured

✅ Navigation menu with all sections
✅ Homepage with hero and feature blocks
✅ About section structure
✅ Financial, programming, operations sections
✅ Get involved / contact section
✅ Blog/news section
✅ GitHub Actions auto-deployment
✅ Custom colors (earth tones)
✅ Mobile responsive
✅ SEO-friendly URLs

## Timeline

- **Initial commit:** 5 minutes
- **First deployment:** 2-3 minutes (automatic)
- **DNS propagation:** 15 minutes - 24 hours
- **Site live:** Same day!

Your site will be live at https://savethehub.org within hours!
