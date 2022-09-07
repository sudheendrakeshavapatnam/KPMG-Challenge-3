$object ='{
		   "a": {
		          "b": { 
		    	       "c": "d"          
						} 
		        }    
		 }'| ConvertFrom-Json 

[string]$key;    

function getobjVal($key){
$array = $key.Split("/")    
$tempobject = $object    
for ($i=0; $i -lt $array.Length; $i++){           
$temp= $array[$i]    
$tempobject =  $tempobject.$temp    

} 
$tempobject
}

#Output
####PS C:> getobjVal('a/b');
####
####   c
####   -
####   d
#PS C:> getobjVal('a/b/c');
#d