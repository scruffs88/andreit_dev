# quick_start Gherkin features
# List of features in step 1
# Initialization of tests

* [Feature: Create default testing users.](/tests/features/quick_start/step1-init-tests/01-create-default-testing-users.feature)  
```
test_authenticated: { email: 'authenticated.test@drupalcoders.com', password: 'LetMe.in1234' }
test_editor: { email: 'editor.test@drupalcoders.com', password: 'LetMe.in1234' }
test_content_admin: { email: 'content.admin.test@drupalcoders.com', password: 'LetMe.in1234' }
test_seo_admin: { email: 'seo.admin.test@drupalcoders.com', password: 'LetMe.in1234' }
test_site_admin: { email: 'site.admin.test@drupalcoders.com', password: 'LetMe.in1234' }
test_super_admin: { email: 'super.admin.test@drupalcoders.com', password: 'LetMe.in1234' }
```

* [Feature: Add Arabic language if we do not have it to languages in the system.](/tests/features/quick_start/step1-init-tests/02-add-arabic.feature)
