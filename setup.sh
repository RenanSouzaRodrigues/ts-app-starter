#! bash/sh

function generate_express_application {
    echo "Generating folders from scaffold"
    cp -r ./scaffold/ts/express-app/* ./
    echo "Done!"

    echo "Removing .gitkeep files"
    rm -f ./src/domain/.gitkeep
    rm -f ./src/types/.gitkeep
    rm -f ./src/external/data/repositories/.gitkeep
    rm -f ./src/external/middlewares/.gitkeep
    rm -f ./src/types/common/.gitkeep
    rm -f ./src/types/exceptions/.gitkeep
    echo "Done!"

    echo "Installing dependencies"
    yarn install
    echo "Done!"
}

function delete_bootstrap_files {
    echo "Removing bootstrap files from the application"
    rm -rf .git
    rm -rf ./scaffold
    echo "Done!"
}

function set_git_initial_config {
    echo "Setting git configurations"
    git init
    git branch -M main
    echo "Done!"
}

if [ $1 = "express" ]; then
    generate_express_application;
    delete_bootstrap_files
    set_git_initial_config
fi

echo 'Setup process is done! Now you can start writing some code. Have fun!'

read exit_input