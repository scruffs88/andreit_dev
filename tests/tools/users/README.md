A list of Gherkin features, which help in adding and deleting of the default
testing users. so that they will be used on the full testing features.

If you want to test the any of the tools features, you will need to use the
 quick_start tools config file, as you can see in the following command.

$ bin/behat --config=behat.tools.yml tools/users/create-default-testing-users.feature

$ bin/behat --config=behat.quick_start-tools.yml tools/users/delete-default-testing-users.feature
