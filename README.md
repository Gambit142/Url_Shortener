<a name="readme-top"></a>

<!--
HOW TO USE:
This is an example of how you may give instructions on setting up your project locally.

Modify this file to match your project and remove sections that don't apply.

REQUIRED SECTIONS:
- Table of Contents
- About the Project
  - Built With
  - Live Demo
- Getting Started
- Authors
- Future Features
- Contributing
- Show your support
- Acknowledgements
- License

After you're finished please remove all the comments and instructions!
-->

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 URL SHORTENER <a name="about-project"></a>

> Describe your project in 1 or 2 sentences.

**URL SHORTENER** is an application that that allows you to enter a long URL and receive a shortened version in return. It is convenient it looks streamlined in appearance. You can also create your custom endpoint.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

> Mainly Ruby on Rails with StimulusJS.

<details>
  <summary>Framework</summary>
  <ul>
    <li><a href="https://stimulus.hotwired.dev/">StimuusJS</a></li>
  </ul>
</details>

<details>
  <summary>Server</summary>
  <ul>
    <li><a href="https://expressjs.com/">Ruby on Rails</a></li>
  </ul>
</details>

<details>
<summary>Database</summary>
  <ul>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
  </ul>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

> Describe between 1-3 key features of the application.

- **It shortens long urls and returns a short one**
- **Users can create their custom endpoint (shortened url)**


<p align="right">(<a href="#readme-top">back to top</a>)</p>


<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

> Describe how a new developer could make use of your project.

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

+ [Node](https://kinsta.com/blog/how-to-install-node-js/)
+ [Ruby](https://learn.microsoft.com/en-us/sql/connect/ruby/step-1-configure-development-environment-for-ruby-development?view=sql-server-ver16)
+ [PostgreSQL](https://www.guru99.com/download-install-postgresql.html)
+ [Rails](https://www.guru99.com/download-install-postgresql.html)
+ [Rbenv](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-macos)

### Setup

Clone this repository to your desired folder:


```sh
  cd my-folder
  git clone git@github.com:Gambit142/Url_Shortener.git
  cd Url_Shortener
```

### Install

Install this project with:

```sh
bundle install
```

### Database creation

Next, use this command to create the databases:
```
rails db:create
```

### Run Migrations

Next, use this command to run the migration files:
```
rails db:migrate
```

### Usage

To run the project, execute the following command:

```sh
  rails server
```


<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

> Mention all of the collaborators of this project.

👤 **Author**

- GitHub: [@Gambit142](https://github.com/Gambit142)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/francis-ugorji/)



<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] **Have a way to get the metrics of most clicked links and other metrics**
- [ ] **Use CanCanCan for Authorization so that users can only see shortened urls they created**
- [ ] **Set duration for how long alink is valid**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
