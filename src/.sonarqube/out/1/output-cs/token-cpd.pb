�
�C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\BaseEntity.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
{ 
public 

record 

BaseEntity 
< 
Tid  
>  !
{ 
public 
Tid 
Id 
{ 
get 
; 
set  
;  !
}" #
} 
} �

�C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\EmployeeRole\Entities\EmployeeRole.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
EmployeeRole4 @
.@ A
EntitiesA I
{ 
public 

record 
EmployeeRole 
:  

BaseEntity! +
<+ ,
string, 2
>2 3
{ 
public 
EmployeeRole 
( 
string "
id# %
,% &
string' -
roleName. 6
)6 7
{ 	
Id 
= 
id 
; 
RoleName 
= 
roleName 
;  
}		 	
public 
EmployeeRole 
( 
string "
roleName# +
)+ ,
{ 	
RoleName 
= 
roleName 
;  
} 	
public 
string 
RoleName 
{  
get! $
;$ %
init& *
;* +
}, -
} 
} �
�C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\EmployeeRole\Interfaces\Repository\IEmployeeRoleRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
EmployeeRole4 @
.@ A

InterfacesA K
.K L

RepositoryL V
{ 
public 

	interface #
IEmployeeRoleRepository ,
:- .
IBaseRepository/ >
<> ?
Entities? G
.G H
EmployeeRoleH T
,T U
stringV \
>\ ]
{ 
}		 
}

 �
�C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\EmployeeRole\Interfaces\Services\IEmployeeRoleService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
EmployeeRole4 @
.@ A

InterfacesA K
.K L
ServicesL T
{ 
public 

	interface  
IEmployeeRoleService )
{ 
Task 
< 
Entities 
. 
EmployeeRole "
>" #
AddEmployeeRole$ 3
(3 4
Entities4 <
.< =
EmployeeRole= I
employeeRoleJ V
)V W
;W X
} 
}		 �
�C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\EmployeeRole\Services\EmployeeRoleService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
EmployeeRole4 @
.@ A
ServicesA I
{ 
public 

class 
EmployeeRoleService $
:% & 
IEmployeeRoleService' ;
{ 
public 
async 
Task 
< 
Entities "
." #
EmployeeRole# /
>/ 0
AddEmployeeRole1 @
(@ A
EntitiesA I
.I J
EmployeeRoleJ V
employeeRoleW c
)c d
{		 	
throw

 
new

 
System

 
.

 #
NotImplementedException

 4
(

4 5
)

5 6
;

6 7
} 	
} 
} �

�C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\EmployeeRole\Validators\EmployeeRoleValidator.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
EmployeeRole4 @
.@ A

ValidatorsA K
{ 
public 

class !
EmployeeRoleValidator &
:' (
AbstractValidator) :
<: ;
Entities; C
.C D
EmployeeRoleD P
>P Q
{ 
public !
EmployeeRoleValidator $
($ %
)% &
{ 	
RuleSet		 
(		 
$str		 
,		 
(		 
)		 
=>		  
{

 
RuleFor 
( 
e 
=> 
e 
. 
RoleName '
)' (
. 
NotEmpty 
( 
) 
. 
WithMessage  
(  !
$str! B
)B C
;C D
} 
) 
; 
} 	
} 
} �
�C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\Employee\Entities\Employee.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
Employee4 <
.< =
Entities= E
{ 
public 

record 
Employee 
: 

BaseEntity '
<' (
string( .
>. /
{ 
public 
Employee 
( 
string 
	firstName 
, 
string		 
surName		 
,		 
DateTime

 
birthday

 
,

 
bool 
active 
, 
decimal 
salary 
, 
EmployeeRole 
. 
Entities !
.! "
EmployeeRole" .
employeeRole/ ;
); <
{ 	
	FirstName 
= 
	firstName !
;! "
SurName 
= 
surName 
; 
Birthday 
= 
birthday 
;  
Active 
= 
active 
; 
Salary 
= 
salary 
; 
EmployeeRole 
= 
employeeRole '
;' (
} 	
public 
string 
	FirstName 
{  !
get" %
;% &
init' +
;+ ,
}- .
public 
string 
SurName 
{ 
get  #
;# $
init% )
;) *
}+ ,
public 
DateTime 
Birthday  
{! "
get# &
;& '
init( ,
;, -
}. /
public 
bool 
Active 
{ 
get  
;  !
init" &
;& '
}( )
public 
decimal 
Salary 
{ 
get  #
;# $
init% )
;) *
}+ ,
public!! 
EmployeeRole!! 
.!! 
Entities!! $
.!!$ %
EmployeeRole!!% 1
EmployeeRole!!2 >
{!!? @
get!!A D
;!!D E
init!!F J
;!!J K
}!!L M
}## 
}$$ �
�C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\Employee\Interfaces\Repositories\IEmployeeRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
Employee4 <
.< =

Interfaces= G
.G H
RepositoriesH T
{ 
public 

	interface 
IEmployeeRepository (
:) *
IBaseRepository+ :
<: ;
Entities; C
.C D
EmployeeD L
,L M
stringN T
>T U
{ 
} 
}		 �
�C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\Employee\Interfaces\Services\IEmployeeService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
Employee4 <
.< =

Interfaces= G
.G H
ServicesH P
{ 
public 

	interface 
IEmployeeService %
{ 
Task 
< 
Entities 
. 
Employee 
> 
AddEmployee  +
(+ ,
Entities, 4
.4 5
Employee5 =
employee> F
)F G
;G H
} 
}		 �
�C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\Employee\Services\EmployeeService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
Employee4 <
.< =
Services= E
{ 
public 

class 
EmployeeService  
:! "
IEmployeeService# 3
{ 
public		 
async		 
Task		 
<		 
Entities		 "
.		" #
Employee		# +
>		+ ,
AddEmployee		- 8
(		8 9
Entities		9 A
.		A B
Employee		B J
employee		K S
)		S T
{

 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
} 
} �
�C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Aggregates\Employee\Validators\EmployeeValidator.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )

Aggregates) 3
.3 4
Employee4 <
.< =

Validators= G
{ 
public 

class 
EmployeeValidator "
:# $
AbstractValidator% 6
<6 7
Entities7 ?
.? @
Employee@ H
>H I
{ 
public 
EmployeeValidator  
(  !
)! "
{		 	
RuleSet

 
(

 
$str

 
,

 
(

 
)

 
=>

  
{ 
RuleFor 
( 
e 
=> 
e 
. 
	FirstName (
)( )
. 
NotEmpty 
( 
) 
. 
WithMessage 
( 
$str >
)> ?
;? @
RuleFor 
( 
e 
=> 
e 
. 
SurName &
)& '
. 
NotEmpty 
( 
) 
. 
WithMessage 
( 
$str >
)> ?
;? @
RuleFor 
( 
e 
=> 
e 
. 
EmployeeRole +
)+ ,
. 
SetValidator 
( 
new !!
EmployeeRoleValidator" 7
(7 8
)8 9
)9 :
;: ;
} 
) 
; 
} 	
} 
} �
�C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Base\MongoDB\IMogoDBContext.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
Base) -
.- .
MongoDB. 5
{ 
public 

	interface 
IMogoDBContext #
{ 
IMongoCollection 
< 
TEntity  
>  !
GetColletion" .
<. /
TEntity/ 6
>6 7
(7 8
string8 >

collection? I
)I J
;J K
} 
}		 �
�C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Domain\Base\Repository\IBaseRepository.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Domain" (
.( )
Base) -
.- .

Repository. 8
{ 
public 

	interface 
IBaseRepository $
<$ %
TEntity% ,
,, -
Tid. 1
>1 2
where 
TEntity 
: 

BaseEntity "
<" #
Tid# &
>& '
{ 
Task		 
<		 
TEntity		 
>		 
Add		 
(		 
TEntity		 !
entity		" (
)		( )
;		) *
Task 
< 
TEntity 
> 
FindById 
( 
Tid "
id# %
)% &
;& '
} 
} 