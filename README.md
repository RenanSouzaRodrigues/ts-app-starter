# TypeScript Application Starter

This script aims to help you structure your applications using TypeScript in a faster and easier way.
All you need to do is run the command below and the script will do the rest.

```
yarn setup express [git remote url]
```
This script will create a brand new TypeScript Express application following the Clean Architecture design patterns and principles.

<img src="https://blog.cleancoder.com/uncle-bob/images/2012-08-13-the-clean-architecture/CleanArchitecture.jpg">

If you want to know more about Clean Architecture, please visit this <a href="https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html">link</a>.

You can also provide a git remote url and the script will configure a git repo for you and set this to the provided remote url.

Like this:
```
yarn setup express https://github.com/youraccount/yourrepo.git
````
### Colaboration
If you find any bugs, feel free to open a new Issue on this repo and I will provide a fix for it as soon as possible. 

You can also provide the solution for bugs and new improvements, but there is some rules for that.

How to colaborate:
- Fork this project
- Create a new branch following GitFlow best practices (<a href="https://datasift.github.io/gitflow/index.html">HubFlow</a> is recommend)
- Submit the PR with the changes and don't forget to add then on the CHANGELOG.md file following the best <a href="https://keepachangelog.com/en/1.0.0/">practices</a>

If the PR got the approval, It's ready to go!