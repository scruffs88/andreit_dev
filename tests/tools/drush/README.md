A list of Gherkin features, which help in testing drush commands.
and helps in setting the development and production environment.

If you want to test the any of the tools features, you will need to use the
 quick_start tools config file, as you can see in the following command.

$ bin/behat --config=behat.quick_start-tools.yml tools/drush/clear-flood.feature

$ bin/behat --config=behat.quick_start-tools.yml tools/drush/drush-dis-ds_ui.feature

$ bin/behat --config=behat.quick_start-tools.yml tools/drush/drush-en-ds_ui.feature



$ bin/behat --config=behat.quick_start-tools.yml tools/drush/on-development.feature

$ bin/behat --config=behat.quick_start-tools.yml tools/drush/on-production.feature
