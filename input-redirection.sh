cat <<EOF > show-info.sh
#!/bin/bash
cat -e << EOF2
The current directory is: $PWD
The default paths are: $PATH
The current user is: $USERNAME
EOF2
EOF
