#exit in bash
#!/usr/bin/env bash
 
on_exit(){
  echo "Your script ended now"
}
 
trap 'on_exit' EXIT
 
echo "Hello world"