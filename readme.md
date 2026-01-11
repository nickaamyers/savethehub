# Arkansas Innovation Hub Website

Community-owned makerspace, agriculture, and arts center in North Little Rock, Arkansas.

Built with [Hugo](https://gohugo.io/) and the [Docsy](https://www.docsy.dev/) theme.

## Local Development

### Prerequisites
- Hugo Extended v0.110.0 or later
- Node.js and npm

### Running Locally

```bash
# Clone with submodules
git clone --recurse-submodules https://github.com/sshellabarger/savethehub.git
cd savethehub

# Install dependencies
npm install

# Run development server
hugo server -D

# Open http://localhost:1313
```

## Deployment

Site automatically deploys to GitHub Pages via GitHub Actions when pushing to main branch.

## Content Structure

- `/content/en/about/` - About the Hub, governance, mission
- `/content/en/financials/` - Financial model, budget, debt management  
- `/content/en/programming/` - Educational programs and activities
- `/content/en/operations/` - Staffing, marketing, operations
- `/content/en/get-involved/` - Membership, volunteering, partnerships
- `/content/en/blog/` - News and updates

## License

Content: CC BY 4.0
Code: MIT
