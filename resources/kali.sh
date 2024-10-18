echo "Install RDP"
echo "===================================="
docker pull kalilinux/kali-rolling
clear
echo "===================================="
echo "Start RDP"
echo "===================================="
echo "===================================="
echo "Username : kali"
echo "Password : kali"
echo "RDP Address:"
curl --silent --show-error http://localhost:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "Keep support CHANNEL thank you"
echo "Wait 2 minute to finish the setup then Run using RDP Address"
echo "===================================="
echo "===================================="
docker run -p 3388:3388 -t -i kalilinux/kali-rolling /bin/bash > /dev/null 2>&1
