#! bash/sh

function delete_bootstrap_files {
    echo "Removing bootstrap files from the application"
    rm -rf .git
    rm -rf ./scaffold
    echo "Done!"
}

function generate_express_application {
    echo "Generating folders from scaffold"
    cp -r ./scaffold/ts/express-app/* ./
    echo "Done!"

    echo "Removing .gitkeep files"
    rm -f ./src/app/.gitkeep
    rm -f ./src/exceptions/.gitkeep
    rm -f ./src/types/.gitkeep
    echo "Done!"

    echo "Installing dependencies"
    yarn install
    echo "Done!"
}

function set_git_initial_config {
    echo "Setting git configs"
    git init
    git remote add origin $2
    echo "Done!"
}

if [ $1 = "express" ]; then
    generate_express_application;
    delete_bootstrap_files
    set_git_initial_config
fi

echo 'Setup process is done! Now you can start writing some code. Have fun!'

read exit_input