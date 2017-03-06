#bin/bash
echo "------------> Building Configuration Server -------------"
cd ./server/Server_Configuration
./gradlew build
echo "------------> Building Eureka Service Discovery Server -------------"
cd ../Server_Eureka
./gradlew build
echo "------------> Building Order Service-------------"
cd ../../services/Service_Order
./gradlew build
echo "------------> Building Product Service-------------"
cd ../Service_Product
./gradlew build
echo "------------> Building Product Service-------------"
cd ../Service_Tracking
./gradlew build
