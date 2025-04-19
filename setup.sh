#!/bin/bash

# Script to generate Jekyll-based GitHub Pages repository for Partha Sarathi Kundu

# Create project directory structure
mkdir -p _layouts assets/css .github/workflows

# Create _config.yml
cat > _config.yml << 'EOF'
title: Partha Sarathi Kundu
description: Personal portfolio of Partha Sarathi Kundu, DevOps Lead and Cloud Engineer
theme: minima
url: "https://pxkundu.github.io"
baseurl: ""
plugins:
  - jekyll-feed
  - jekyll-seo-tag
EOF

# Create _layouts/default.html
cat > _layouts/default.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{{ page.title }} | {{ site.title }}</title>
  <link rel="stylesheet" href="{{ '/assets/css/output.css' | relative_url }}">
  {% seo %}
</head>
<body class="bg-gray-50 font-sans antialiased">
  {{ content }}
</body>
</html>
EOF

# Create index.html
cat > index.html << 'EOF'
---
layout: default
title: Partha Sarathi Kundu - DevOps Lead
---

<div class="container mx-auto px-4 py-8 max-w-4xl">
  <!-- Hero Section -->
  <header class="text-center mb-12">
    <h1 class="text-5xl font-bold text-gray-900 mb-2">Partha Sarathi Kundu</h1>
    <p class="text-2xl text-blue-600 font-medium">DevOps Lead | Cloud Engineer | DevSecOps Advocate | AWS Ninja</p>
    <div class="flex justify-center gap-4 mt-4">
      <a href="mailto:inboxpartha@outlook.com" class="text-gray-600 hover:text-blue-600 underline">inboxpartha@outlook.com</a>
      <span class="text-gray-600">|</span>
      <a href="tel:+14694160103" class="text-gray-600 hover:text-blue-600 underline">+1 (469) 416-0103</a>
      <span class="text-gray-600">|</span>
      <a href="https://github.com/pxkundu" class="text-gray-600 hover:text-blue-600 underline">GitHub</a>
      <span class="text-gray-600">|</span>
      <a href="https://www.credly.com/users/partha-sarathi-kundu.94e53ea1" class="text-gray-600 hover:text-blue-600 underline">Certifications</a>
    </div>
    <p class="text-gray-500 mt-2">He/Him/His | Atlanta, GA</p>
  </header>

  <!-- About Section -->
  <section class="mb-12 bg-white rounded-lg shadow-md p-6">
    <h2 class="text-3xl font-semibold text-gray-800 mb-4">About Me</h2>
    <p class="text-gray-600 leading-relaxed">
      Certified Cloud Professional with over 8 years of IT experience, including 5 years specializing in AWS. I’m passionate about cloud-native architecture, secure DevOps pipelines, and serverless solutions. I automate everything—even my morning coffee alerts with AWS IoT & Lambda! My mission is to empower innovation through secure automation and elegant cloud workflows.
    </p>
  </section>

  <!-- Interests Section -->
  <section class="mb-12">
    <h2 class="text-3xl font-semibold text-gray-800 mb-4">Interests</h2>
    <ul class="list-disc list-inside text-gray-600 space-y-2">
      <li>Cloud-native architecture and automation</li>
      <li>Secure DevOps & DevSecOps pipelines</li>
      <li>Event-driven & serverless architecture</li>
      <li>AI/ML on AWS (SageMaker, Bedrock, LangChain)</li>
      <li>Open-source contributions in AWS & DevOps</li>
    </ul>
  </section>

  <!-- Currently Exploring Section -->
  <section class="mb-12 bg-white rounded-lg shadow-md p-6">
    <h2 class="text-3xl font-semibold text-gray-800 mb-4">Currently Exploring</h2>
    <ul class="list-disc list-inside text-gray-600 space-y-2">
      <li>Generative AI in cloud workflows</li>
      <li>Advanced Kubernetes design with GitOps and autoscaling</li>
      <li>Plugin development in OpenSearch</li>
      <li>Enhanced DevSecOps practices and threat modeling automation</li>
    </ul>
  </section>

  <!-- Tech Stack Section -->
  <section class="mb-12">
    <h2 class="text-3xl font-semibold text-gray-800 mb-4">Expertise & Tech Stack</h2>
    <div class="grid grid-cols-1 md:grid-cols-2 gap-6">
      <div>
        <h3 class="text-xl font-medium text-gray-700 mb-2">Cloud Platforms</h3>
        <p class="text-gray-600">AWS (Lambda, S3, EKS, RDS, SageMaker, etc.), Azure (AKS, CosmosDB, etc.)</p>
      </div>
      <div>
        <h3 class="text-xl font-medium text-gray-700 mb-2">DevOps & IaC</h3>
        <p class="text-gray-600">Terraform, CloudFormation, Docker, Kubernetes, Jenkins, GitHub Actions</p>
      </div>
      <div>
        <h3 class="text-xl font-medium text-gray-700 mb-2">Security & DevSecOps</h3>
        <p class="text-gray-600">GuardDuty, Security Hub, WAF, IAM, HIPAA/GDPR compliance</p>
      </div>
      <div>
        <h3 class="text-xl font-medium text-gray-700 mb-2">Data & Analytics</h3>
        <p class="text-gray-600">AWS Glue, Kinesis, Redshift, Tableau, Power BI</p>
      </div>
      <div>
        <h3 class="text-xl font-medium text-gray-700 mb-2">AI/ML</h3>
        <p class="text-gray-600">SageMaker, TensorFlow, PyTorch, Pandas, Scikit-learn</p>
      </div>
      <div>
        <h3 class="text-xl font-medium text-gray-700 mb-2">Programming</h3>
        <p class="text-gray-600">Python, Java, C#, JavaScript, Bash, PHP</p>
      </div>
    </div>
  </section>

  <!-- Community Involvement Section -->
  <section class="mb-12 bg-white rounded-lg shadow-md p-6">
    <h2 class="text-3xl font-semibold text-gray-800 mb-4">Community Involvement</h2>
    <ul class="list-disc list-inside text-gray-600 space-y-2">
      <li><strong>AWS Community Builder – Serverless (2020)</strong>: Recognized for workshops and blogs.</li>
      <li><strong>Founder & Lead – AWS User Group Wichita (2023)</strong>: Led events and webinars.</li>
      <li><strong>UIPath Community Organizer – Denver (2024)</strong>: Driving RPA adoption.</li>
      <li><strong>GitHub Open Source Contributor</strong>: Maintainer of WMS/WCS repo, contributor to OpenSearch and AWS SAM.</li>
    </ul>
  </section>

  <!-- Certifications Section -->
  <section class="mb-12">
    <h2 class="text-3xl font-semibold text-gray-800 mb-4">Certifications</h2>
    <ul class="list-disc list-inside text-gray-600 space-y-2">
      <li>AWS Certified Solutions Architect – Associate ✅</li>
      <li>AWS Certified Machine Learning – Specialty ✅</li>
      <li>AWS Certified Data Engineer Associate ✅</li>
      <li>UIPath RPA Developer Certified ✅</li>
    </ul>
    <p class="text-gray-600 mt-2">
      <a href="https://www.credly.com/users/partha-sarathi-kundu.94e53ea1" class="text-blue-600 hover:underline">View all badges on Credly</a>
    </p>
  </section>

  <!-- GitHub Stats Section -->
  <section class="mb-12 text-center">
    <h2 class="text-3xl font-semibold text-gray-800 mb-4">GitHub Stats</h2>
    <div class="flex flex-col items-center gap-4">
      <img src="https://github-readme-stats.vercel.app/api?username=pxkundu&show_icons=true&theme=gruvbox" alt="Partha's GitHub Stats" class="w-full max-w-md">
      <img src="https://github-readme-stats.vercel.app/api/top-langs/?username=pxkundu&layout=compact&theme=gruvbox" alt="Top Languages" class="w-full max-w-md">
    </div>
  </section>

  <!-- Footer -->
  <footer class="text-center text-gray-500 py-6 border-t">
    <p class="text-lg italic">“Empowering innovation through secure automation and cloud-native transformation.”</p>
    <p class="mt-2">© 2025 Partha Sarathi Kundu. All rights reserved.</p>
  </footer>
</div>
EOF


# Create Gemfile
cat > Gemfile << 'EOF'
source "https://rubygems.org"

gem "jekyll"
gem "minima"
gem "jekyll-feed"
gem "jekyll-seo-tag"
EOF

# Create assets/css/input.css
cat > assets/css/input.css << 'EOF'
@tailwind base;
@tailwind components;
@tailwind utilities;

@layer base {
  h1, h2, h3, h4, h5, h6 {
    @apply font-bold;
  }
  a {
    @apply transition-colors duration-200;
  }
}
EOF

# Create assets/css/output.css (placeholder, will be generated by Tailwind)
cat > assets/css/output.css << 'EOF'
/* This file will be generated by Tailwind CSS. Run `npx tailwindcss -i ./assets/css/input.css -o ./assets/css/output.css` to build. */
EOF

# Create .github/workflows/deploy.yml
cat > .github/workflows/deploy.yml << 'EOF'
name: Deploy Jekyll Site to GitHub Pages

on:
  push:
    branches:
      - main

permissions:
  contents: write
  pages: write
  id-token: write

jobs:
  build-and-deploy:
    runs-on: ubuntu-latest

    steps:
      # Checkout the repository
      - name: Checkout
        uses: actions/checkout@v4

      # Set up Ruby and install Jekyll dependencies
      - name: Set up Ruby
        uses: ruby/setup-ruby@v1
        with:
          ruby-version: '3.2'
          bundler-cache: true

      # Set up Node.js for Tailwind CSS
      - name: Set up Node.js
        uses: actions/setup-node@v4
        with:
          node-version: '20'
          cache: 'npm'

      # Install Node.js dependencies
      - name: Install Node.js Dependencies
        run: npm ci

      # Build Tailwind CSS
      - name: Build Tailwind CSS
        run: npx tailwindcss -i ./assets/css/input.css -o ./assets/css/output.css

      # Build the Jekyll site
      - name: Build Jekyll Site
        run: bundle exec jekyll build

      # Deploy to GitHub Pages
      - name: Deploy to GitHub Pages
        uses: peaceiris/actions-gh-pages@v4
        with:
          github_token: ${{ secrets.GITHUB_TOKEN }}
          publish_dir: ./_site
          publish_branch: gh-pages
EOF

# Create .gitignore
cat > .gitignore << 'EOF'
# Jekyll build output
_site/
.sass-cache/
.jekyll-cache/
.jekyll-metadata

# Ruby dependencies
vendor/
Gemfile.lock

# Node.js dependencies
node_modules/

# Temporary files
*.swp
*.swo
*~

# macOS files
.DS_Store

# Logs and temporary files
*.log
tmp/

# Editor and IDE files
.idea/
.vscode/
*.sublime-project
*.sublime-workspace
EOF

# Initialize Node.js project and install Tailwind CSS
if ! command -v npm &> /dev/null; then
  echo "Error: npm is not installed. Please install Node.js and npm before running this script."
  exit 1
fi

# Create package.json
cat > package.json << 'EOF'
{
  "name": "pxkundu-github-pages",
  "version": "1.0.0",
  "description": "Personal GitHub Pages site for Partha Sarathi Kundu",
  "scripts": {
    "build:css": "npx tailwindcss -i ./assets/css/input.css -o ./assets/css/output.css",
    "watch:css": "npx tailwindcss -i ./assets/css/input.css -o ./assets/css/output.css --watch"
  },
  "devDependencies": {
    "tailwindcss": "^3.4.14"
  },
  "author": "Partha Sarathi Kundu",
  "license": "MIT"
}
EOF

# Install Tailwind CSS and generate package-lock.json
npm install

# Build Tailwind CSS to ensure output.css is populated
npx tailwindcss -i ./assets/css/input.css -o ./assets/css/output.css

# Set executable permissions for the script
chmod +x "$0"

echo "Project files generated successfully!"
echo "Next steps:"
echo "1. Rename the repository to 'pxkundu.github.io' on GitHub."
echo "2. Run 'bundle install' to install Jekyll dependencies."
echo "3. Run 'npm install' to install Node.js dependencies (already done by this script)."
echo "4. Run 'bundle exec jekyll serve' to preview the site locally."
echo "5. Commit and push to GitHub (main branch)."
echo "6. Enable GitHub Pages in repository settings, set to deploy from the 'gh-pages' branch."
echo "7. Access the site at https://pxkundu.github.io"
