<a name="readme-top"></a>

<!-- PROJECT SHIELDS -->

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/ThomasRitaine/terminal">
    <img src="docs/image/logo.webp" alt="Logo" width="175" height="175">
  </a>

<h3 align="center">My Personal Terminal</h3>

  <p align="center">
    My crafted shell configuration, blending zsh and Starship, for a seamless and powerful command-line interface.
    <br />
    <a href="https://github.com/ThomasRitaine/terminal"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    <a href="https://thomas.ritaine.com/projects">View Demo</a>
    ·
    <a href="https://github.com/ThomasRitaine/terminal/issues">Report Bug</a>
    ·
    <a href="https://github.com/ThomasRitaine/terminal/issues">Request Feature</a>
  </p>
</div>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li><a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation-steps">Installation Steps</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a>
      <ul>
        <li><a href="#enhanced-command-line-experience">Enhanced Command Line Experience</a></li>
      </ul>
    </li>
    <li><a href="#folder-structure">Folder Structure</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## About The Project

[![A basic usage screenshot][basic-usage-screenshot]](https://thomas.ritaine.com)

My crafted shell configuration, blending zsh and Starship, for a seamless and powerful command-line interface:

- **Zsh Integration**: Utilizing the advanced features of zsh for enhanced command-line functionality.
- **Oh My Zsh Framework**: Leveraging a community-driven framework to manage zsh configurations.
- **Starship Prompt**: A modern prompt with features that enhance both the usability and appearance of the terminal.
- **Personal Touch**: My configuration, my rules – a setup that’s been tweaked to personal perfection.
- **Documentation-First Approach**: Clear and concise installation guides to help you replicate or adapt my setup with ease.

This project reflects a personal journey to create a terminal experience that feels intuitive, looks impressive, and performs brilliantly.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

### Built With

This terminal configuration is built upon a foundation of robust, open-source tools that enhance the command-line experience:

- [![Zsh][Zsh-shield]][Zsh-url]
- [![Oh My Zsh][OhMyZsh-shield]][OhMyZsh-url]
- [![Starship][Starship-shield]][Starship-url]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## Getting Started

### Prerequisites

- **Basic Shell Knowledge**: Familiarity with shell commands and terminal usage.
- **Unix-Based System**: Access to Linux or macOS, as the setup is tailored for Unix-based environments.
- **Administrative Access**: You'll need administrative rights to install necessary packages.
- **Mono NL Nerdfont**: It's important to have a Mono NL Nerdfont installed in your terminal for the proper display of the terminal interface. I recommend "JetBrainsMono Nerd Font", available at [Nerdfonts.com](https://www.nerdfonts.com/font-downloads). This specific font ensures that all icons and custom elements in the terminal are displayed correctly. But what exactly is it?
  - Mono fonts are spaced evenly for a consistent look. For example, a `i` takes as much space as a `@`.
  - NL (No Ligature) means the characters are distinct and not joined. The character set `=>` will remain as is and will not be displayed as an arrow.
  - Nerdfonts are enhanced with extra glyphs, making them ideal for coding environments.

### Installation Steps

1. **Update System**: Ensure your system is up-to-date with the latest packages.

   ```sh
   sudo apt-get update && sudo apt-get upgrade
   ```

2. **Install Zsh**: If not already installed, download and install Zsh.

   ```sh
   sudo apt install zsh -y
   ```

3. **Set Zsh as Default Shell**: Change your default shell to Zsh.

   ```sh
   chsh -s $(which zsh)
   ```

4. **Restart and Configure Shell**: Log out and log back in to initialize Zsh. Upon your return, you'll be prompted to configure `~/.zshrc`. Choose the option to populate it with the default configuration recommended by the system administrator.

5. **Install Oh My Zsh**: Utilize the Oh My Zsh framework for managing your Zsh configuration.

   ```sh
   sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
   ```

6. **Install Zsh Plugins**: Enhance your shell with additional functionality.

   ```sh
   git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
   git clone https://github.com/MichaelAquilina/zsh-you-should-use.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/you-should-use
   git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
   ```

7. **Configure Plugins**: Update your `.zshrc` file to include the new plugins.

   ```sh
   plugins=(
       aws
       zsh-autosuggestions
       you-should-use
       zsh-syntax-highlighting
   )
   ```

8. **Install Starship**: Add a modern touch to your prompt with Starship.

   ```sh
   curl -sS https://starship.rs/install.sh | sh
   ```

9. **Install JQ**: A lightweight and flexible command-line JSON processor.

   ```sh
   sudo apt install jq -y
   ```

10. **Clone the Repository**: Get my custom terminal configuration.

    ```sh
    git clone https://github.com/ThomasRitaine/terminal
    ```

11. **Integrate Configuration**: Include the setup script in your `.zshrc`.

    ```sh
    echo '
    #====================================
    #======== LOAD CUSTOM CONFIG ========
    #====================================

    # Load aliases and Starship from my personal terminal repo
    TERMINAL_REPO_DIR=~/dev-projects/terminal
    if [ -d "$TERMINAL_REPO_DIR" ]; then
        source "$TERMINAL_REPO_DIR/init.sh"
    fi
    ' >> ~/.zshrc
    ```

    Replace `~/dev-projects` with the directory where you cloned the repository.

12. **Activate New Shell Environment**: Open a new terminal window or tab. This step initializes the new shell environment, integrating all the configurations and changes made. You should now experience a customized shell interface, reflecting my personalized setup for enhanced productivity and style.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- USAGE EXAMPLES -->

## Usage

![A quick tour of the Terminal][usage-tour-gif]

My custom terminal setup, powered by Zsh and its plugins, enhances your command-line experience with numerous features. Here's how you can make the most out of it:

### Enhanced Command Line Experience

1. **Command Auto-Completion**: Courtesy of `zsh-autosuggestions`, you'll experience real-time command suggestions based on your command history. This feature accelerates your command input, making terminal usage more efficient.

2. **Syntax Highlighting**: The `zsh-syntax-highlighting` plugin adds color to your command line, highlighting commands, arguments, and file paths. This visual aid helps in identifying commands and structure at a glance.

3. **Command Reminder**: The `you-should-use` plugin gently reminds you of existing aliases for commands you type, helping you to memorize and utilize your custom shortcuts effectively.

4. **AWS Plugin**: For those working with AWS services, the `aws` plugin in Zsh provides quick access to AWS CLI commands, making it easier to manage your AWS resources.

5. **Starship Prompt**: Starship adds a sleek and informative prompt to your terminal. It displays useful information like your current directory, Git branch, and much more, all customizable to your preferences.

6. **Custom Aliases**: My `.aliases` file includes a set of personalized shortcuts for common tasks. Feel free to adapt or extend these aliases according to your workflow needs.

By integrating these plugins and configurations, the terminal becomes a more powerful tool, streamlining your command-line tasks and improving overall productivity.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FOLDER STRUCTURE AND EXPLANATIONS -->

## Folder Structure

Below is an overview of the key directories and files my Terminal project:

```
.
├── config/              # The settings directory for tailoring the terminal to personal preferences.
│   └── starship.toml    # The Starship prompt settings file to define the terminal's look and feel.
├── docs/image           # All images and gif used in that documentation.
├── utils/               # Custom utility scripts to extend terminal features.
│   └── distro.sh        # A script to identify the Linux distribution being used.
├── .aliases             # A list of shortcuts for frequently used commands.
├── init.sh              # The bootstrap script that loads all custom configurations on startup.
├── LICENSE              # The MIT License file, specifying open source permissions and limitations.
└── README.md            # The document you are reading, containing all informations about the project.
```

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ROADMAP -->

## Roadmap

This is a personal project, and its primary goal is not widespread popularity. As such, there is no formal roadmap for future features. The project will evolve based on my personal interests and the new technologies I wish to explore.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## Contributing

I welcome community involvement:

- **Issues**: Feel free to open issues to report bugs or request features.
- **Pull Requests**: Contributions via pull requests are also welcome.
- **Forking**: Feel free to fork and adapt the project as you like with proper credit.

Keep in mind that updates and new features will be implemented as per my discretion and interest in the technology.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## License

Distributed under the MIT License. See `LICENSE` for more information.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTACT -->

## Contact

Thomas Ritaine - [@ai_art_tv](https://twitter.com/ai_art_tv) - thomas@ritaine.com

Project Link: [https://github.com/ThomasRitaine/terminal](https://github.com/ThomasRitaine/terminal)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGMENTS -->

## Acknowledgments

Acknowledgments are due to these pillars of the command-line community, whose creations have made my terminal experience a delight:

- [Zsh][Zsh-url] - My chosen shell for its remarkable versatility and community support.
- [Oh My Zsh][OhMyZsh-url] - The toolkit that turns Zsh into a powerhouse with minimal effort.
- [Starship][Starship-url] - For the sleek, super-fast, and customizable prompt that elevates the terminal's aesthetics and utility.

Together, they have helped shape a terminal environment that is both functional and joyous to use.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->

[contributors-shield]: https://img.shields.io/github/contributors/ThomasRitaine/terminal.svg?style=for-the-badge
[contributors-url]: https://github.com/ThomasRitaine/terminal/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/ThomasRitaine/terminal.svg?style=for-the-badge
[forks-url]: https://github.com/ThomasRitaine/terminal/network/members
[stars-shield]: https://img.shields.io/github/stars/ThomasRitaine/terminal.svg?style=for-the-badge
[stars-url]: https://github.com/ThomasRitaine/terminal/stargazers
[issues-shield]: https://img.shields.io/github/issues/ThomasRitaine/terminal.svg?style=for-the-badge
[issues-url]: https://github.com/ThomasRitaine/terminal/issues
[license-shield]: https://img.shields.io/github/license/ThomasRitaine/terminal.svg?style=for-the-badge
[license-url]: https://github.com/ThomasRitaine/terminal/blob/master/LICENSE
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=for-the-badge&logo=linkedin&colorB=555
[linkedin-url]: https://linkedin.com/in/thomas-ritaine
[basic-usage-screenshot]: docs/image/basic-usage.webp
[usage-tour-gif]: docs/image/usage-tour.gif
[Zsh-shield]: https://img.shields.io/badge/Zsh-F15A24?logo=zsh&logoColor=fff&style=for-the-badge
[Zsh-url]: https://doc.ubuntu-fr.org/zsh
[OhMyZsh-shield]: https://img.shields.io/badge/Oh%20My%20Zsh-008080?logo=ohmyzsh&logoColor=fff&style=for-the-badge
[OhMyZsh-url]: https://ohmyz.sh/
[Starship-shield]: https://img.shields.io/badge/Starship-DD0B78?logo=starship&logoColor=fff&style=for-the-badge
[Starship-url]: https://starship.rs/
