# Contributing to Open Source Pages of Lund University

Welcome! This repository hosts open web pages related to education and research
at [Lund University, Sweden](https://www.lunduniversity.lu.se/). The project is
organized by contributions from university employees and the broader community.

## 🌍 For External Contributors (Students, Others)

We welcome contributions from students, alumni, and anyone who wants to improve
or add useful educational content. You can help by:

1. **Creating an issue:**

   If you have noticed a typo, a broken link, or have suggestions for new
   content, you can contribute by opening an issue. Go to the
   [issue tracker](https://github.com/lunduniversity/lunduniversity.github.io/issues)
   and describe what you want to change or add. This helps us understand your
   proposal and discuss it with you.

1. **Making a Pull Request**

   If you're familiar with Git and GitHub, you can contribute by **forking**
   this repository, making your changes, and submitting a **pull request (PR)**.
   This is a great way to propose improvements, fixes, or new content.

   Here’s how to do it:

   ### 🔁 Step 1: Fork the repository

   Click the **"Fork"** button in the upper right corner of this GitHub
   repository page. This will create a personal copy of the repository under
   your own GitHub account.

   ### 💻 Step 2: Clone and make your changes

   1. Clone your fork to your local machine:

      ```bash
      git clone https://github.com/<your-username>/<repo-name>.git
      cd <repo-name>
      ```

   1. Create a new branch for your changes:

      ```bash
      git checkout -b my-feature
      ```

   1. Make your changes. You can:

      - Improve existing pages
      - Fix typos or broken links
      - Update or clarify instructions
      - Suggest new content

      See the section **"Tool recommendations"** below for helpful tips and
      tools.

   ### ⚙️ Step 3: Build the HTML

   If you add or modify `.md` files under `src/`, you **must regenerate the
   corresponding HTML files** using Pandoc.

   1. Ensure there is a `build.sh` script in the relevant subdirectory that
      defines how the Markdown is built.

   1. Make sure this script is called from the **top-level `build.sh`** in the
      root directory.

   1. Run the top-level script, from the root directory:

      ```bash
      ./build.sh
      ```

   1. Review the generated `.html` files and verify they look correct.

      > **🚫 Do not edit `.html` files manually.** Always edit the Markdown
      > source files in `src/`. Because the HTML files are automatically
      > generated, they will be **overwritten**.

      > **✅ Important:** Commit both:
      >
      > - Your updated or new Markdown files
      > - The corresponding generated `.html` files

   ### 📤 Step 4: Push and create your pull request

   1. Push your branch to your GitHub fork:

      ```bash
      git push origin my-feature
      ```

   1. Visit your fork on GitHub, and GitHub will prompt you to **create a pull
      request**.

   1. In the pull request description, include:

      - A **short summary** of your changes
      - **Why** you made them
      - Any additional context that may be useful

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

If you add a new `build.sh` script, make sure to include it in the top-level
`build.sh` script. This ensures that your subdirectories are built when you run
the top-level script.

Add a line like this to the top-level `build.sh`:

```bash
source src/yourcourse/build.sh
```

## 🛠️ Tool Recommendations

For working with this repo in your own fork we recommend using VS Code, and the
following extensions for a better editing experience:

- **Prettier - Code formatter** (by _Prettier_): For automatic code formatting.
  In the VS Code settings page for Prettier, set **Print Width** to `80` and
  **Prose Wrap** to `always`. See figure below.

  ![Prettier Settings](img/prettier-settings.png)

- **Live Server** (by _Ritwick Dey_): For live preview of your changes. This
  extension runs a minimal web server and opens your default browser to view the
  HTML files. It also supports hot reloading, which means:

  - you can edit the Markdown files in VS Code
  - save the changes and run the `build.sh` script to generate the HTML files
  - the Live Server will automatically refresh the browser

- **Run on Save** (by _emeraldwalk_): This extension allows you to run a command
  every time you save a file. You can set it up to run the `build.sh` script
  automatically when you save your files. This way, you don't have to remember
  to run the build script manually. Works nicely together with the Live Server
  extension.

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

Currently, the best way to communicate with us is by
[opening an issue](https://github.com/lunduniversity/lunduniversity.github.io/issues).
