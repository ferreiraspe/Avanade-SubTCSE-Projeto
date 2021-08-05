Ò
»C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Application\AutoMapperConfig\Profiles\EmployeeRole\EmployeeRoleProfile.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Application" -
.- .
AutoMapperConfig. >
.> ?
Profiles? G
.G H
EmployeeRoleH T
{ 
public 

class 
EmployeeRoleProfile $
:% &
Profile' .
{ 
public 
EmployeeRoleProfile "
(" #
)# $
{ 	
	CreateMap		 
<		 
Dtos		 
.		 
EmployeeRole		 '
.		' (
EmployeeRoleDto		( 7
,		7 8
Domain		9 ?
.		? @

Aggregates		@ J
.		J K
EmployeeRole		K W
.		W X
Entities		X `
.		` a
EmployeeRole		a m
>		m n
(		n o
)		o p
.

 
ForCtorParam

 
(

 
$str

 (
,

( )
opt

* -
=>

. 0
opt

1 4
.

4 5
MapFrom

5 <
(

< =
src

= @
=>

A C
src

D G
.

G H
Cargo

H M
)

M N
)

N O
;

O P
	CreateMap 
< 
Domain 
. 

Aggregates '
.' (
EmployeeRole( 4
.4 5
Entities5 =
.= >
EmployeeRole> J
,J K
DtosL P
.P Q
EmployeeRoleQ ]
.] ^
EmployeeRoleDto^ m
>m n
(n o
)o p
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
Identificador( 5
,5 6
opt7 :
=>; =
opt> A
.A B
MapFromB I
(I J
srcJ M
=>N P
srcQ T
.T U
IdU W
)W X
)X Y
. 
	ForMember 
( 
dest 
=>  "
dest# '
.' (
Cargo( -
,- .
opt/ 2
=>3 5
opt6 9
.9 :
MapFrom: A
(A B
srcB E
=>F H
srcI L
.L M
RoleNameM U
)U V
)V W
. 
ForAllOtherMembers #
(# $
i$ %
=>& (
i) *
.* +
Ignore+ 1
(1 2
)2 3
)3 4
;4 5
} 	
} 
} ú-
³C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Application\AutoMapperConfig\Profiles\Employee\EmployeeProfile.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Application" -
.- .
AutoMapperConfig. >
.> ?
Profiles? G
.G H
EmployeeH P
{ 
public 

class 
EmployeeProfile  
:! "
Profile# *
{ 
public 
EmployeeProfile 
( 
)  
{ 	
	CreateMap		 
<		 
Dtos		 
.		 
Employee		 #
.		# $
EmployeeDto		$ /
,		/ 0
Domain		1 7
.		7 8

Aggregates		8 B
.		B C
Employee		C K
.		K L
Entities		L T
.		T U
Employee		U ]
>		] ^
(		^ _
)		_ `
.

 
ConstructUsing

 
(

  
(

  !
ctor

! %
,

% &
res

' *
)

* +
=>

, .
{ 
return 
new 
Domain %
.% &

Aggregates& 0
.0 1
Employee1 9
.9 :
Entities: B
.B C
EmployeeC K
(K L
	firstName !
:! "
ctor# '
.' (
PrimeiroNome( 4
,4 5
surName 
:  
ctor! %
.% &
	SobreNome& /
,/ 0
birthday  
:  !
ctor" &
.& '
Aniversario' 2
,2 3
active 
: 
ctor  $
.$ %
Ativo% *
,* +
salary 
: 
ctor  $
.$ %
Salario% ,
,, -
employeeRole $
:$ %
res& )
.) *
Mapper* 0
.0 1
Map1 4
<4 5
Domain5 ;
.; <

Aggregates< F
.F G
EmployeeRoleG S
.S T
EntitiesT \
.\ ]
EmployeeRole] i
>i j
(j k
ctork o
.o p
Cargop u
)u v
)v w
;w x
} 
) 
. 
ForAllOtherMembers #
(# $
i$ %
=>& (
i) *
.* +
Ignore+ 1
(1 2
)2 3
)3 4
;4 5
	CreateMap 
< 
Domain  
.  !

Aggregates! +
.+ ,
Employee, 4
.4 5
Entities5 =
.= >
Employee> F
,F G
DtosH L
.L M
EmployeeM U
.U V
EmployeeDtoV a
>a b
(b c
)c d
. 
	ForMember 
( 
dest #
=>$ &
dest' +
.+ ,
Identificador, 9
,9 :
opt; >
=>? A
optB E
.E F
MapFromF M
(M N
srcN Q
=>R T
srcU X
.X Y
IdY [
)[ \
)\ ]
. 
	ForMember 
( 
dest #
=>$ &
dest' +
.+ ,
PrimeiroNome, 8
,8 9
opt: =
=>> @
optA D
.D E
MapFromE L
(L M
srcM P
=>Q S
srcT W
.W X
	FirstNameX a
)a b
)b c
. 
	ForMember 
( 
dest #
=>$ &
dest' +
.+ ,
	SobreNome, 5
,5 6
opt7 :
=>; =
opt> A
.A B
MapFromB I
(I J
srcJ M
=>N P
srcQ T
.T U
SurNameU \
)\ ]
)] ^
. 
	ForMember 
( 
dest #
=>$ &
dest' +
.+ ,
Aniversario, 7
,7 8
opt9 <
=>= ?
opt@ C
.C D
MapFromD K
(K L
srcL O
=>P R
srcS V
.V W
BirthdayW _
)_ `
)` a
. 
	ForMember 
( 
dest #
=>$ &
dest' +
.+ ,
Ativo, 1
,1 2
opt3 6
=>7 9
opt: =
.= >
MapFrom> E
(E F
srcF I
=>J L
srcM P
.P Q
ActiveQ W
)W X
)X Y
. 
	ForMember 
( 
dest #
=>$ &
dest' +
.+ ,
Salario, 3
,3 4
opt5 8
=>9 ;
opt< ?
.? @
MapFrom@ G
(G H
srcH K
=>L N
srcO R
.R S
SalaryS Y
)Y Z
)Z [
. 
	ForMember 
( 
dest #
=>$ &
dest' +
.+ ,
Cargo, 1
,1 2
opt3 6
=>7 9
opt: =
.= >
MapFrom> E
(E F
srcF I
=>J L
srcM P
.P Q
EmployeeRoleQ ]
)] ^
)^ _
. 
ForAllOtherMembers '
(' (
i( )
=>* ,
i- .
.. /
Ignore/ 5
(5 6
)6 7
)7 8
;8 9
} 	
}   
}!! ™
’C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Application\Dtos\Base\BaseDto.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Application" -
.- .
Dtos. 2
.2 3
Base3 7
{ 
public 

abstract 
class 
BaseDto !
{ 
public 
int 
Identificador  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} Â
¢C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Application\Dtos\EmployeeRole\EmployeeRoleDto.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Application" -
.- .
Dtos. 2
.2 3
EmployeeRole3 ?
{ 
public 

class 
EmployeeRoleDto  
:! "
BaseDto# *
{ 
public 
string 
Cargo 
{ 
get !
;! "
set# &
;& '
}( )
}		 
}

 õ
šC:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Application\Dtos\Employee\EmployeeDto.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Application" -
.- .
Dtos. 2
.2 3
Employee3 ;
{ 
public 

class 
EmployeeDto 
: 
BaseDto &
{ 
public 
string 
PrimeiroNome "
{# $
get% (
;( )
set* -
;- .
}/ 0
public

 
string

 
	SobreNome

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
public 
DateTime 
Aniversario #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 
Ativo 
{ 
get 
;  
set! $
;$ %
}& '
public 
decimal 
Salario 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
EmployeeRole 
. 
EmployeeRoleDto +
Cargo, 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
} 
} ö
°C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Application\Interfaces\EmployeeRole\IEmployeeRoleAppService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Application" -
.- .

Interfaces. 8
.8 9
EmployeeRole9 E
{ 
public 

	interface #
IEmployeeRoleAppService ,
{ 
Task 
< 
EmployeeRoleDto 
> 
AddEmployeeRole -
(- .
EmployeeRoleDto. =
employeeRoleDto> M
)M N
;N O
}		 
}

 Ö
¨C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Application\Interfaces\Employee\IEmployeeAppService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Application" -
.- .

Interfaces. 8
.8 9
Employee9 A
{ 
public 

	interface 
IEmployeeAppService (
{ 
Task 
< 
EmployeeDto 
> 
AddEmployee %
(% &
EmployeeDto& 1
employeeDto2 =
)= >
;> ?
}		 
}

 Ü
­C:\Users\edson.da.silva\Documents\Estudos\Avanade Treinamento\Avanade-SubTCSE-Projeto\src\Avanade.SubTCSE.Projeto.Application\Services\EmployeeRole\EmployeeRoleAppService.cs
	namespace 	
Avanade
 
. 
SubTCSE 
. 
Projeto !
.! "
Application" -
.- .
Services. 6
.6 7
EmployeeRole7 C
{ 
public 

class "
EmployeeRoleAppService '
:( )#
IEmployeeRoleAppService* A
{ 
public		 
Task		 
<		 
EmployeeRoleDto		 #
>		# $
AddEmployeeRole		% 4
(		4 5
EmployeeRoleDto		5 D
employeeRoleDto		E T
)		T U
{

 	
throw 
new 
System 
. #
NotImplementedException 4
(4 5
)5 6
;6 7
} 	
} 
} 