Active record is methods that perform sequel 
    Ruby interface for querying database
    mirrors sqL queries
    pros: less overall database access code, more convenient

What is an ActiveRecord::Relation?
    Most queries dont return Ruby objects
        instead return instances of ActiveRecord:Relation
        ActiveRecord:Relation objects are array-like
    They allow for chaining

ActiveRecord Finder Methods
    Do not return relations, instead returns Ruby objects
    Examples: find(), find_by(), first, last
        these return model instances
    Executes method immediately
    