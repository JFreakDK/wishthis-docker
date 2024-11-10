FROM hiob/wishthis:stable

# Modify the entrypoint to run the update and upgrade commands
ENTRYPOINT ["sh", "-c", "sudo apt update && /usr/local/bin/entrypoint.sh"]
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]