if [ "$BREAK_PACKAGES" = true ]; then
    pip3 install awscli --break-system-packages 
else 
    pip3 install awscli
fi