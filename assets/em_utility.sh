#!/bin/bash

## declare an array variable
declare -a array=("ctools"
"config_update"
"config_filter"
"config_split"
"config_ignore"
"config_perms"
"chosen"
"environment_indicator"
"token"
"layout_builder_restrictions"
"block_style_plugins"
"layout_builder_styles"
"layout_builder_modal"
"entity_reference_layout"
"paragraphs_edit"
"views_bootstrap"
"field_group"
"smart_trim"
"block_class"
"menu_block"
"entity"
"ultimate_cron"
"persistent_login"
"userprotect"
"betterlogin"
"admin_toolbar"
"adminimal_admin_toolbar"
"admin_toolbar_tools"
"coffee"
"webform"
"better_normalizers"
"rabbit_hole"
"masquerade"
"menu_admin_per_menu"
"libraries_ui"
"username_enumeration_prevention"
"password_policy"
"seckit"
"honeypot"
"shield"
"captcha"
"recaptcha"
"mailsystem"
"smtp"
"menu_position"
"taxonomy_access_fix"
"better_exposed_filters"
"autocomplete_deluxe"
"extlink"
"link_attributes"
"entity_reference_revisions"
"viewsreference"
"libraries"
"radix_layouts"
"components"
"varbase_editor"
"varbase_media"
"varbase_seo"
"varbase_email"
)

# get length of an array
arraylength=${#array[@]}

# use for loop to read all values and indexes
for (( i=1; i<${arraylength}+1; i++ ));
do
  echo $i " / " ${arraylength} " : " ${array[$i-1]}
  drush en -y ${array[$i-1]}
done
