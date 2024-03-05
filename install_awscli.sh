if [[ "$BREAK_PACKAGES" == "false" ]]; then
    pip3 install awscli --break-system-packages 
else 
    pip3 install awscli
fi