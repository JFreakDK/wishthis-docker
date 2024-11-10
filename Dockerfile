FROM wishthis:latest

# Modify the entrypoint to run the update and upgrade commands
ENTRYPOINT ["sh", "-c", "apt update && apt upgrade -y && /usr/local/bin/entrypoint.sh"]
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]