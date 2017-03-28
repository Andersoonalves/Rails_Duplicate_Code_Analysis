# Rails Duplicate Code Analysis

This experiment examines the amount of code duplication generated by the Rails Scaffold technology.
Each unit experimental process a domain model scenario for a web application. The code is separated into two parts, according to the domain model that generated it: entities or properties. After that, the generated and separated code parsed by [Flay], reporting a quantity of code duplication for the View and Controller layers.

## Scenarios

Each scenario kind has a id (A, B, C and so on) and a variable. For example, scenario kind A has a N variable that sets the number of entities in each scenario. This scenario kind can originate the scenarios A(2), A(3), A(4), and so on, where scenario A(2) has two entities, A(3) has three entities, etc. These scenarios are separated by branches and tags in this repository. For example, the branch scenario_A. 

| ID | Parent | Description
| ------ | ------ | ------ |
| A | - | N entities without fields |
| B | A | N entities with 1 distinct field |
| C | A | Repeat field name |
| D | A | Repeat field type |
| E | C,D | Repeat field type and name |
| F | B | Two entities with M distinct fields |

 - N number of entities
 - M number of fields

## To reproduce

Have the environment set up to create [Rails] applications.

To create each type of scenario we use Rails scaffold. For example, to create scenario kind B you must execute the following command:

```sh
$ rails generate scaffold EntityName field:string
```

To create scenario kind B(2) you must execute the following command:
```sh
$ rails generate scaffold EntityName field:string
$ rails generate scaffold NewEntityName field:boolean
```
Exemple to create scenario kind F:
```sh
$ rails generate scaffold EntityName field:string field2:boolean
```

##### Running

Install [Flay] running:
```sh
$ sudo gem install flay
```

To improve the execution of the experiment we use the [main.sh] script that is in the `scripts` branch. It separates the generated code into two parts (entities and property) and analyzes it separately.


Run the script by passing the hash of the last commit of each scenario. For example, to analyze scenario B:
```sh
$ . main.sh f7e63f2915dbe7208f4eaeaff64e5280c1e5bc7a
```

License
----

MIT


[//]: # (These are reference links used in the body of this note)

   [Flay]: <https://github.com/joemccann/dillinger>
   [Rails]: <http://rubyonrails.org/>
   [main.sh]: <https://github.com/Andersoonalves/Rails_Duplicate_Code_Analysis/blob/scripts/main.sh>

