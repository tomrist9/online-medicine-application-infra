kafka-topics --bootstrap-server local-confluent-kafka:9092 --delete --topic payment-request --if-exists
kafka-topics --bootstrap-server local-confluent-kafka:9092 --delete --topic payment-response --if-exists
kafka-topics --bootstrap-server local-confluent-kafka:9092 --delete --topic pharmacy-approval-request --if-exists
kafka-topics --bootstrap-server local-confluent-kafka:9092 --delete --topic pharmacy-approval-response --if-exists
kafka-topics --bootstrap-server local-confluent-kafka:9092 --delete --topic customer --if-exists


kafka-topics --bootstrap-server local-confluent-kafka:9092 --create --topic payment-request --partitions 3 --replication-factor 1 --if-not-exists
kafka-topics --bootstrap-server local-confluent-kafka:9092 --create --topic payment-response --partitions 3 --replication-factor 1 --if-not-exists
kafka-topics --bootstrap-server local-confluent-kafka:9092 --create --topic pharmacy-approval-request --partitions 3 --replication-factor 1 --if-not-exists
kafka-topics --bootstrap-server local-confluent-kafka:9092 --create --topic pharmacy-approval-response --partitions 3 --replication-factor 1 --if-not-exists
kafka-topics --bootstrap-server local-confluent-kafka:9092 --create --topic customer --partitions 3 --replication-factor 1 --if-not-exists
