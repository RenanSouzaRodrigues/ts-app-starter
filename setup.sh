#removes the old .git folder and init a new clean git repo
echo "Starting the setup process! Please hold..."

echo "Removing bind from the old git remote repository and creating a brand new repo"
rm -rf .git
git init
echo "Done!"

#create the .gitignore file
echo "Configuring your .gitingore file"
cp ./scaffold/scaffold.gitignore ./.gitignore
echo "Done!"

#create the tsconfig.json file
echo "Creating your tsconfig.json file with some configs"
cp ./scaffold/scaffold.tsconfig.json ./tsconfig.json
echo "Done!"

#create the jest.config.js file
echo "Creating your jest.config.js file and configuring it for you"
cp ./scaffold/scaffold.jest.config.js ./jest.config.js
echo "Done!"

#setup the initial boilerplate structure
echo "Creating the boiler plate folder structure"
mkdir src/
mkdir src/app/
mkdir src/external/
mkdir src/types/
mkdir src/exceptions/
touch src/app.ts
echo 'console.log("My Application v1.0.0");' > src/app.ts
echo "Done!"

#delete scaffold folder
rm -rf ./scaffold

#update the initial readme
echo "Updating your README file"
echo '# My TypeScript Application v1.0.0' > README.md
echo 'This is the default readme information of my application' >> README.md
echo "Done!"

echo 'Setup process is done! Now you can start writing some code. Have fun!'