# Script: tong_hop.sh

# Tac gia: Nguyễn Minh Quân	

# Ngay tao: 04/11/2026

echo "Dang tao bao cao..."


echo "=== BAO CAO SU CO WEBSITE ===" > logs/tong_hop.txt

cat logs/visit.log | grep "status=404" >> logs/tong_hop.txt

cat logs/visit.log | grep "status=500" | WC - l >> logs/tong_hop.txt

echo "Hoan thanh!"