On submitting new form second time action goes to update method
===============================================================

Sample Rails project for issue https://github.com/rails/rails/issues/9746

Installation

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
2. Input the form fields(fields are mandatory to test) and submit(after submit the form render with validation error message for user_id in paragraph model and now the form has primary id)
3. Click on submit(goes to update action)
```
## Note:

   1. The problem only occur when we passing parameters with *content_ids*.
   
   2. Validation is running when we assinging parameter using attributes=.( But the document says validation doesn't trigger while assigning attributes to the object using attributes=)
   
   for example:

```
params = {"document"=>{"name"=>"sadfds", "sections_attributes"=>{"0"=>{"name"=>"", "content_ids"=>["1", "2"]}}}}
@document = Document.new
@document.attributes =  params #validation is running in this line
