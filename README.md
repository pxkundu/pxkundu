# Partha Sarathi Kundu GitHub Pages

This repository hosts my personal GitHub Pages site, built with Jekyll, showcasing my professional profile as a DevOps Lead and Cloud Engineer. The site mirrors my resume, highlighting my skills, certifications, experience, and education in a minimalist design.

## Project Structure

```
├── _config.yml           # Jekyll configuration file
├── index.html            # Main homepage with resume content
├── _layouts/             # Jekyll layout templates
│   └── default.html      # Default layout for pages
├── assets/               # Static assets (CSS, images, etc.)
│   └── css/              # Tailwind CSS output
├── Gemfile               # Ruby dependencies for Jekyll
└── README.md             # This file
```

## Prerequisites

To set up and run this Jekyll site locally, ensure you have the following installed:

- **Ruby** (version 3.0 or higher)
- **Bundler** (`gem install bundler`)
- **Git** for version control
- **Node.js** (for Tailwind CSS processing, optional for local development)

## Setup Instructions

1. **Clone the Repository**
   ```bash
   git clone https://github.com/pxkundu/pxkundu.github.io.git
   cd pxkundu.github.io
   ```

2. **Install Dependencies**
   Install Ruby gems using Bundler:
   ```bash
   bundle install
   ```

3. **Set Up Tailwind CSS (Optional for Local Styling)**
   If you want to modify the Tailwind CSS styles:
   ```bash
   npm install -D tailwindcss
   npx tailwindcss -i ./assets/css/input.css -o ./assets/css/output.css --watch
   ```

4. **Run the Jekyll Server**
   Start the local Jekyll server:
   ```bash
   bundle exec jekyll serve
   ```
   The site will be available at `http://localhost:4000`.

5. **Deploy to GitHub Pages**
   - Push changes to the `main` branch:
     ```bash
     git add .
     git commit -m "Update site content"
     git push origin main
     ```
   - Ensure GitHub Pages is enabled in the repository settings under `Settings > Pages`, set to deploy from the `main` branch.

## Customization

- **Content**: Edit `index.html` to update resume details or add new sections.
- **Styling**: Modify Tailwind classes in `index.html` or update `./assets/css/input.css` for custom styles.
- **Layout**: Adjust `_layouts/default.html` for changes to the site-wide template.

## Technologies Used

- **Jekyll**: Static site generator for GitHub Pages
- **Tailwind CSS**: Utility-first CSS framework for minimalist styling
- **HTML5**: Structure and content
- **GitHub Pages**: Hosting and deployment

## Troubleshooting

- **Jekyll Errors**: Ensure Ruby and Bundler are correctly installed. Run `bundle update` to refresh dependencies.
- **GitHub Pages Not Updating**: Verify the branch and path settings in GitHub Pages configuration. Clear the GitHub Pages cache if needed.
- **CSS Issues**: Ensure Tailwind CSS is compiled (`npx tailwindcss build`) and the output CSS is correctly linked.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
