On submitting new form second time action goes to update method
===============================================================

Sample Rails project for issue https://github.com/rails/rails/issues/9746

## Installation

Install the gems:

```
bundle install
```


Rake db setup task:

```
rake db:create
rake db:migrate
```

Steps to reproduce:

```
1. Go to new document form by clicking "New Document" link.
2. Input the form fields and submit(after submit the form render with validation error message for user_id in paragraph model and now the form has primary id)
3. Click on submit(goes to update action)
```
note:
   This only occur when we passing parameters with content_ids.
   
   validation is running when we assinging parameter hash using attributes=.(the document says validation doesn't trigger while assigning attributes to the object using attributes=)
   
   for example

```
params = {"document"=>{"name"=>"sadfds", "sections_attributes"=>{"0"=>{"name"=>"", "content_ids"=>["1", "2"]}}}}
@document = Document.new
@document.attributes =  params #validation is running in this line
