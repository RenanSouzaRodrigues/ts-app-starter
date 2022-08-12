function delete_bootstrap_files {
    rm -rf .git
    git init
    rm -rf ./scaffold
    rm -f LICENSE
}

function generate_express_application {
    echo "Generating folder from scaffold"
    cp -r ./scaffold/TypeScript/express-app ./src
    echo "Done!"

    echo "Removing .gitkeep files"
    rm -f ./src/app/.gitkeep
    rm -f ./src/exceptions/.gitkeep
    rm -f ./src/types/.gitkeep
}

if [ $1 = "express" ]; then
    generate_express_application;
fi

delete_bootstrap_files

echo 'Setup process is done! Now you can start writing some code. Have fun!'