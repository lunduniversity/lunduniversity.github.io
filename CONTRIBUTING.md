# Contributing to Open Source Pages of Lund University

Welcome! This repository hosts open web pages related to education and research
at [Lund University, Sweden](https://www.lunduniversity.lu.se/). The project is
organized by contributions from university employees and the broader community.

## 🌍 For External Contributors (Students, Others)

We welcome contributions from students, alumni, and anyone who wants to improve
or add useful educational content.

### How to Contribute

1.  **Create an issue:**

    If you have noticed a typo, a broken link, or have suggestions for new
    content, you can contribute by opening an issue. Go to the
    [issue tracker](https://github.com/lunduniversity/lunduniversity.github.io/issues)
    and describe what you want to change or add. This helps us understand your
    proposal and discuss it with you.

1.  **Make a Pull Request**

    If you are familiar with Git and GitHub, you can directly create a pull
    request. This is a great way to suggest changes or improvements to the
    content.

    To create a pull request, follow these steps:

    1. **Fork the repository:**  
       Click on the "Fork" button at the top right of the repository page.

    1. **Make your changes:**  
       You can improve existing pages, fix typos, update instructions, or even
       suggest new content. See section `Tool recommendations` below for some
       practical tips.

    1. **Build the HTML:**  
       If you change or add `.md` files under `src/`, ensure there's a
       corresponding `build.sh` that uses [Pandoc](https://pandoc.org/) to
       generate the HTML. Also ensure that the `build.sh` script is included in
       the top-level `build.sh` script.

       - **Important!** Run the top-level `build.sh` script from the root
         directory to generate the HTML files. Make sure to check the generated
         HTML files to ensure everything looks correct.
       - **Important!** Do not edit any HTML files directly. Always work with
         the Markdown files in the `src/` directory. The HTML files are
         generated automatically from the Markdown files, overwriting the old
         ones.

    1. **Create a pull request:**  
       Once your changes are ready, open a pull request with a short description
       of what you’ve done and why.

## 🧑‍🏫 For Lund University Employees

If you are a teacher or employee at LU and would like to host your course or
project here:

1. **Create an issue:**  
   Go to the
   [issue tracker](https://github.com/lunduniversity/lunduniversity.github.io/issues)
   and describe:

   - Who you are (include a link to an official LU or LTH page)
   - What course or project you want to publish
   - Why you want to publish it here

2. **Discuss your proposal:**  
   We'll respond in the issue thread and guide you through the next steps. Once
   we agree on the details, we will create a new folder for your course or
   project under `src/`. This folder will be your workspace for all content
   related to your course or project.

3. **Set up your structure:**  
   Inside your course or project directory, organize your content according to
   the structure outlined in the `Page Organization` section below.

4. **Build your site:** Include your `build.sh` script in the root build script,
   so it will be built when you run the top-level `build.sh`. This will ensure
   that your course or project is included in the overall site. Include it by
   adding a line like this to the top-level `build.sh`:

   ```bash
   source src/yourcourse/build.sh
   ```

## 📄 Page Organization

Each course or content area lives in its own directory under `src/`, often
structured like this:

<pre>
src/
    yourcourse/
        index.md ← Your course content in Markdown
        build.sh ← Script to build the HTML using Pandoc
        otherfiles/ ← Any other files you need
</pre>

The root directory contains shared files like:

- `top.html`: Entry points linking to subpages
- `style.css`: Shared CSS
- `build.sh`: Top-level build script, that includes all subdirectories

## 🔧 Building Pages

Each folder should contain a `build.sh` script similar to:

```bash
#!/bin/bash
mkdir -p yourcourse
pandoc -s --toc -c ../style.css -B top.html --metadata title="KURSKOD Kurstitel" src/yourcourse/index.md -o yourcourse/index.html
```

Adjust paths as needed depending on your directory depth.

## 🛠️ Tool Recommendations

We recommend using VS Code with the following extensions for a better editing
experience:

- **Prettier**: For automatic code formatting. Set `print width` to 80 in
  settings and `wrap` to `Always` in the Prettier extension settings. See figure
  below.

  ![Prettier Settings](img/prettier-settings.png)

- **Live Server**: For live preview of your changes. This extension runs a
  minimal web server and opens your default browser to view the HTML files. It
  also supports hot reloading, which means:

  - you can edit the Markdown files in VS Code
  - save the changes
  - the Live Server will automatically refresh the browser

- **Run on Save**: This extension allows you to run a command every time you
  save a file. You can set it up to run the `build.sh` script automatically when
  you save your files. This way, you don't have to remember to run the build
  script manually. Works nicely together with the Live Server extension.

  As an example, you can add the following to your VS Code settings
  (`.vscode/settings.json`):

  ```json
  {
    "emeraldwalk.runonsave": {
      "shell": "bash",
      "commands": [
        {
          "match": ".*",
          "isAsync": true,
          "cmd": "${workspaceFolder}/build.sh"
        }
      ]
    }
  }
  ```

  This will run the `build.sh` script every time you save any file in your
  workspace.

## 📜 License and Attribution

All contributions are, unless otherwise stated, licensed under CC-BY-SA. This
means:

- You retain copyright.
- Others can reuse and adapt your content, with attribution, under the same
  license.
- By contributing, you agree to these terms.

## ✉️ Questions?

Currently, the best way to communicate with us is by opening an issue.
