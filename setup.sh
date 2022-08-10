#removes the old .git folder and init a new clean git repo
echo "Starting the setup process! Please hold..."

echo "Removing bind from the old git remote repository and creating a brand new repo"
rm -rf .git
git init
echo "Done!"

#create the .gitignore file
echo "Configuring your .gitingore file"
touch .gitignore
echo 'node_modules/' > .gitignore
echo '.node_modules/' >> .gitignore
echo 'built/' >> .gitignore
echo 'dist/' >> .gitignore
echo 'coverage/' >> .gitignore
echo 'tests/cases/rwc/*' >> .gitignore
echo 'tests/cases/test262/*' >> .gitignore
echo 'tests/cases/perf/*' >> .gitignore
echo '!tests/cases/webharness/compilerToString.js' >> .gitignore
echo 'test-args.txt' >> .gitignore
echo '~*.docx' >> .gitignore
echo 'tests/baselines/local/*' >> .gitignore
echo 'tests/baselines/local.old/*' >> .gitignore
echo 'tests/services/baselines/local/*' >> .gitignore
echo 'tests/baselines/prototyping/local/*' >> .gitignore
echo 'tests/baselines/rwc/*' >> .gitignore
echo 'tests/baselines/test262/*' >> .gitignore
echo 'tests/baselines/reference/projectOutput/*' >> .gitignore
echo 'tests/baselines/local/projectOutput/*' >> .gitignore
echo 'tests/baselines/reference/testresults.tap' >> .gitignore
echo 'tests/services/baselines/prototyping/local/*' >> .gitignore
echo 'tests/services/browser/typescriptServices.js' >> .gitignore
echo 'src/harness/*.js' >> .gitignore
echo 'src/compiler/diagnosticInformationMap.generated.ts' >> .gitignore
echo 'src/compiler/diagnosticMessages.generated.json' >> .gitignore
echo 'src/parser/diagnosticInformationMap.generated.ts' >> .gitignore
echo 'src/parser/diagnosticMessages.generated.json' >> .gitignore
echo 'rwc-report.html' >> .gitignore
echo '*.swp' >> .gitignore
echo 'build.json' >> .gitignore
echo '*.actual' >> .gitignore
echo 'tests/webTestServer.js' >> .gitignore
echo 'tests/webTestServer.js.map' >> .gitignore
echo 'tests/webhost/*.d.ts' >> .gitignore
echo 'tests/webhost/webtsc.js' >> .gitignore
echo 'tests/cases/**/*.js' >> .gitignore
echo '!tests/cases/docker/*.js/' >> .gitignore
echo 'tests/cases/**/*.js.map' >> .gitignore
echo '*.config' >> .gitignore
echo 'scripts/eslint/built/' >> .gitignore
echo 'scripts/debug.bat' >> .gitignore
echo 'scripts/run.bat' >> .gitignore
echo 'scripts/word2md.js' >> .gitignore
echo 'scripts/buildProtocol.js' >> .gitignore
echo 'scripts/ior.js' >> .gitignore
echo 'scripts/authors.js' >> .gitignore
echo 'scripts/configurePrerelease.js' >> .gitignore
echo 'scripts/configureLanguageServiceBuild.js' >> .gitignore
echo 'scripts/open-user-pr.js' >> .gitignore
echo 'scripts/open-cherry-pick-pr.js' >> .gitignore
echo 'scripts/processDiagnosticMessages.d.ts' >> .gitignore
echo 'scripts/processDiagnosticMessages.js' >> .gitignore
echo 'scripts/produceLKG.js' >> .gitignore
echo 'scripts/importDefinitelyTypedTests/importDefinitelyTypedTests.js' >> .gitignore
echo 'scripts/generateLocalizedDiagnosticMessages.js' >> .gitignore
echo 'scripts/request-pr-review.js' >> .gitignore
echo 'scripts/*.js.map' >> .gitignore
echo 'scripts/typings/' >> .gitignore
echo 'coverage/' >> .gitignore
echo 'internal/' >> .gitignore
echo '**/.DS_Store' >> .gitignore
echo '.settings' >> .gitignore
echo '**/.vs' >> .gitignore
echo '**/.vscode/*' >> .gitignore
echo '!**/.vscode/tasks.json' >> .gitignore
echo '!**/.vscode/settings.template.json' >> .gitignore
echo '!**/.vscode/launch.template.json' >> .gitignore
echo '!**/.vscode/extensions.json' >> .gitignore
echo '.idea' >> .gitignore
echo 'yarn.lock' >> .gitignore
echo 'yarn-error.log' >> .gitignore
echo '.parallelperf.*' >> .gitignore
echo '.failed-tests' >> .gitignore
echo 'TEST-results.xml' >> .gitignore
echo 'package-lock.json' >> .gitignore
echo '.eslintcache' >> .gitignore
echo '*.env' >> .gitignore
echo "Done!"

#create the tsconfig.json file
echo "Creating your tsconfig.json file with some configs"
touch tsconfig.json
echo '{'                                                                > tsconfig.json
echo '  "compilerOptions": {'                                           >> tsconfig.json
echo '      "target": "es2017",'                                        >> tsconfig.json            
echo '      "module": "commonjs",'                                      >> tsconfig.json
echo '      "rootDir": ".",'                                            >> tsconfig.json
echo '      "lib": ["es2017", "es7", "es6", "dom"],'                    >> tsconfig.json
echo '      "baseUrl": "./",'                                           >> tsconfig.json
echo '      "outDir": "./dist",'                                        >> tsconfig.json
echo '      "declaration": true,'                                       >> tsconfig.json
echo '      "declarationDir": "./dist/types",'                          >> tsconfig.json    
echo '      "paths": {'                                                 >> tsconfig.json
echo '            "@/*": ["./src/*"]'                                   >> tsconfig.json
echo '        },'                                                       >> tsconfig.json
echo '        "composite": true,'                                       >> tsconfig.json
echo '        "esModuleInterop": true,'                                 >> tsconfig.json    
echo '        "plugins": ['                                             >> tsconfig.json    
echo '            {'                                                    >> tsconfig.json
echo '                "transform": "typescript-transform-paths"'        >> tsconfig.json    
echo '            }'                                                    >> tsconfig.json
echo '        ],'                                                       >> tsconfig.json
echo '        "typeRoots": ["./src/types", "./node_modules/@types"],'   >> tsconfig.json
echo '        "emitDecoratorMetadata": true,'                           >> tsconfig.json
echo '        "experimentalDecorators": true'                           >> tsconfig.json
echo '    },'                                                           >> tsconfig.json
echo '    "parserOptions": {'                                           >> tsconfig.json
echo '        "project": "./tsconfig.json"'                             >> tsconfig.json
echo '    },'                                                           >> tsconfig.json    
echo '    "exclude": ["node_modules", "dist"]'                          >> tsconfig.json
echo '}'                                                                >> tsconfig.json
echo "Done!"

#create the jest.config.js file
echo "Creating your jest.config.js file and configuring it for you"
touch jest.config.js
echo 'module.exports = {'                                   > jest.config.js
echo '    rootDir: "./",'                                   >> jest.config.js
echo '    roots: ["<rootDir>"],'                            >> jest.config.js
echo '    testEnvironment: "node",'                         >> jest.config.js
echo '    setupFiles: [],'                                  >> jest.config.js
echo '    globals: {'                                       >> jest.config.js
echo '        "ts-jest": { '                                >> jest.config.js
echo '            isolatedModules: true, '                  >> jest.config.js
echo '        },'                                           >> jest.config.js
echo '    },'                                               >> jest.config.js
echo '    collectCoverage: true,'                           >> jest.config.js
echo '    transform: {'                                     >> jest.config.js
echo '        ".+\\.ts$": "ts-jest",'                       >> jest.config.js
echo '    },'                                               >> jest.config.js
echo '    moduleNameMapper: {'                              >> jest.config.js
echo '        "@/(.*)": "<rootDir>/src/$1",'                >> jest.config.js
echo '    },'                                               >> jest.config.js
echo '    modulePathIgnorePatterns: ["<rootDir>/dist"],'    >> jest.config.js
echo '    testTimeout: 30000,'                              >> jest.config.js
echo '};'                                                   >> jest.config.js
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

#update the initial readme
echo "Updating your README file"
echo '# My TypeScript Application v1.0.0' > README.md
echo 'This is the default readme information of my application' >> README.md
echo "Done!"

echo 'Setup process is done! Now you can start writing some code. Have fun!'