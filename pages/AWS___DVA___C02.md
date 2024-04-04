public:: false

- https://d1.awsstatic.com/ko_KR/training-and-certification/docs-dev-associate/AWS-Certified-Developer-Associate_Sample-Questions.pdf
- AWS Certified Developer - Associate (DVA-C02)
	- 한 회사에서 레거시 애플리케이션을 Amazon EC2 인스턴스로 마이그레이션하고 있습니다. 애플리케이션은 소스 코드에 저장된 사용자 이름과 암호를 사용하여 MySQL 데이터베이스에 연결합니다. 회사는 데이터베이스를 Amazon RDS for MySQL DB 인스턴스로 마이그레이션할 예정입니다. 마이그레이션 절차의 일부로 이 회사는 데이터베이스 자격 증명을 저장하고 자동으로 교체하는 안전한 방법을 구현해야 합니다.
	  card-last-score:: 3
	  card-repeats:: 1
	  card-next-schedule:: 2024-03-31T11:56:27.741Z
	  card-last-interval:: 4
	  id:: 6602ee13-cdcc-45d1-93c1-1ba2099008cf
	  card-ease-factor:: 2.36
	  card-last-reviewed:: 2024-03-27T11:56:27.741Z
	  다음 중 이러한 요구 사항을 충족하는 솔루션은 무엇입니까?#card #aws-certification
	     
	  A) 데이터베이스 자격 증명을 Amazon Machine Image(AMI)의 환경 변수에 저장합니다. AMI 를 교체하여 자격 증명을 교체합니다.  
	  B) 데이터베이스 자격 증명을 AWS Systems Manager Parameter Store 에 저장합니다. 자격 증명을 자동으로 교체하도록 Parameter Store 를 구성합니다.  
	  C) 데이터베이스 자격 증명을 EC2 인스턴스의 환경 변수에 저장합니다. EC2 인스턴스를 다시 시작하여 자격 증명을 교체합니다.  
	  D) 데이터베이스 자격 증명을 AWS Secrets Manager 에 저장합니다. 자격 증명을 자동으로 교체하도록 Secrets Manager 를 구성합니다.
		- D) 데이터베이스 자격 증명을 AWS Secrets Manager 에 저장합니다. 자격 증명을 자동으로 교체하도록 Secrets Manager 를 구성합니다.
		- [AWS Secrets Manager](https://aws.amazon.com/secrets-manager/)는 데이터베이스, 애플리케이션, 서비스 및 기타 IT 리소스 액세스에 필요한 자격 증명을 보호하는 데 도움이 됩니다. Secrets Manager 를 통해 수명 주기 동안 데이터베이스 자격 증명, API 키 및 기타 보안 암호를 교체, 관리 및 검색할 수 있습니다. 사용자와 애플리케이션은 Secrets Manager API 호출을 수행하여 보안 암호를 검색하므로 민감한 정보를 일반 텍스트로 하드 코딩할 필요가 없습니다. Secrets Manager 는 Amazon RDS, Amazon Redshift, Amazon DocumentDB(MongoDB 호환)에 대한 기본 통합과 함께 [보안 암호 교체](https://docs.aws.amazon.com/secretsmanager/latest/userguide/rotate-secrets_turn-on-for-db.html) 기능을 제공합니다.
	- 한 개발자가 사용자가 거의 실시간으로 댓글을 게시하고 피드백을 받을 수 있는 기능이 있는 웹 애플리케이션을 개발하고 있습니다. 다음 중 이러한 요구 사항을 충족하는 솔루션은 무엇입니까? (2 개 선택.)#card #aws-certification
	  id:: 6602ee13-e679-415d-af9f-88bada21d31b
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2024-04-03T15:00:00.000Z
	  card-last-reviewed:: 2024-04-02T23:01:21.101Z
	  card-last-score:: 1
	  
	  A) AWS AppSync 스키마와 해당 API를 생성합니다. Amazon DynamoDB 테이블을 데이터 스토어로 사용합니다.  
	  B) Amazon API Gateway에서 WebSocket API를 생성합니다. AWS Lambda 함수를 백엔드로 사용합니다. Amazon DynamoDB 테이블을 데이터 스토어로 사용합니다.  
	  C) Amazon RDS 데이터베이스가 지원하는 AWS Elastic Beanstalk 애플리케이션을 생성합니다. 수명이 긴 TCP/IP 소켓을 허용하도록 애플리케이션을 구성합니다.  
	  D) Amazon API Gateway 에서 GraphQL 엔드포인트를 생성합니다. Amazon DynamoDB 테이블을 데이터 스토어로 사용합니다.  
	  E) Amazon CloudFront 에 대한 WebSocket 연결을 설정합니다. AWS Lambda 함수를 CloudFront 배포의 오리진으로 사용합니다. Amazon Aurora DB 클러스터를 데이터 스토어로 사용합니다.
		- A) AWS AppSync 스키마와 해당 API를 생성합니다. Amazon DynamoDB 테이블을 데이터 스토어로 사용합니다.
		- B) Amazon API Gateway 에서 WebSocket API를 생성합니다. AWS Lambda 함수를 백엔드로 사용합니다. Amazon DynamoDB 테이블을 데이터 스토어로 사용합니다.
		- [AWS AppSync](https://aws.amazon.com/appsync/)는 사용자에게 하나 이상의 데이터 원본에서 데이터를 안전하게 액세스, 조작 및 결합하기 위한 유연한 API를 생성할 수 있는 능력을 부여하여 애플리케이션 개발을 간소화합니다. AWS AppSync는 GraphQL을 사용하여 애플리케이션이 필요한 데이터를 정확하게 가져올 수 있도록 지원하는 관리형 서비스입니다. AWS AppSync를 사용하여 Amazon DynamoDB를 비롯한 다양한 데이터 원본에서 실시간 업데이트가 필요한 확장 가능한 애플리케이션을 구축할 수 있습니다.
		- [Amazon API Gateway](https://aws.amazon.com/api-gateway/)에서 AWS 서비스(예: AWS Lambda, DynamoDB) 또는 HTTP 엔드포인트용 스테이트풀 프런트엔드로 [WebSocket API](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-websocket-api.html)를 생성할 수 있습니다. WebSocket API는 API가 클라이언트 애플리케이션에서 수신하는 메시지의 내용을 바탕으로 백엔드를 호출합니다. 요청을 수신하고 응답하는 REST API 와 달리, WebSocket API는 클라이언트 애플리케이션과 백엔드 간의 양방향 통신을 지원합니다.
	- 한 개발자가 애플리케이션에 회원 가입 및 로그인 기능을 추가하고 있습니다. 애플리케이션은 사용자 로그인 이벤트를 로깅하도록 사용자 지정 분석 솔루션에 API 호출을 수행해야 합니다. 이러한 요구 사항을 충족하기 위해 개발자는 다음 중 어떤 조합의 작업을 수행해야 합니까? (2 개 선택.)#card #aws-certification
	  id:: 6602ee13-4109-41f5-9117-1fc185b39c93
	  
	  A) Amazon Cognito 를 사용하여 회원 가입 및 로그인 기능을 제공합니다.  
	  B) AWS Identity and Access Management(IAM)를 사용하여 회원 가입 및 로그인 기능을 제공합니다.  
	  C) AWS Config 규칙을 구성하여 사용자가 인증되면 API 호출을 수행합니다.  
	  D) Amazon API Gateway 메서드를 호출하여 사용자가 인증되면 API 호출을 수행합니다.  
	  E) AWS Lambda 함수를 호출하여 사용자가 인증되면 API 호출을 수행합니다.
		- A) Amazon Cognito 를 사용하여 회원 가입 및 로그인 기능을 제공합니다.
		- E) AWS Lambda 함수를 호출하여 사용자가 인증되면 API 호출을 수행합니다.
		- [Amazon Cognito](https://aws.amazon.com/cognito/)는 웹과 모바일 애플리케이션에 사용자 회원 가입, 로그인 및 액세스 제어 기능을 추가합니다. 또한 AWS Lambda 함수를 생성하여 사용자 지정 분석 솔루션에 대한 API 호출을 수행한 다음, Amazon Cognito 사후 인증 트리거를 사용하여 해당 함수를 호출할 수 있습니다.
	- 한 회사에서 AWS 계정에서 REST API 호출을 위해 Amazon API Gateway 를 사용하고 있습니다. 개발자는 다른 AWS 계정의 IAM 사용자에게만 API 에 대한 액세스를 허용하려고 합니다.
	  id:: 6602ee13-6df2-4a03-91fe-31ba6fb3f0dd
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2024-04-03T15:00:00.000Z
	  card-last-reviewed:: 2024-04-02T23:16:44.910Z
	  card-last-score:: 1
	  이러한 요구 사항을 충족하기 위해 개발자는 다음 중 어떤 조합의 단계를 수행해야 합니까? (2 개 선택.)#card #aws-certification
	  
	  A) IAM 권한 정책을 생성합니다. 정책을 각 IAM 사용자에게 연결합니다. API 에 대한 메서드 권한 부여 유형을 AWS_IAM 으로 설정합니다. Signature Version 4 를 사용하여 API 요청에 서명합니다.  
	  B) Amazon Cognito 사용자 풀을 생성합니다. 각 IAM 사용자를 사용자 풀에 추가합니다. API 에 대한 메서드 권한 부여 유형을 COGNITO_USER_POOLS 로 설정합니다. Amazon Cognito 에서 IAM 자격 증명을 사용하여 인증합니다. ID 토큰을 요청 헤더에 추가합니다.  
	  C) Amazon Cognito 자격 증명 풀을 생성합니다. 각 IAM 사용자를 자격 증명 풀에 추가합니다. API에 대한 메서드 권한 부여 유형을 COGNITO_USER_POOLS 로 설정합니다. Amazon Cognito 에서 IAM 자격 증명을 사용하여 인증합니다. 액세스 토큰을 요청 헤더에 추가합니다.  
	  D) API 에 대한 리소스 정책을 생성하여 각 IAM 사용자에게만 액세스를 허용합니다.  
	  E) API 에 대한 Amazon Cognito 권한 부여자를 생성하여 각 IAM 사용자에게만 액세스를 허용합니다. API 에 대한 메서드 권한 부여 유형을 COGNITO_USER_POOLS 로 설정합니다.
		- A) IAM 권한 정책을 생성합니다. 정책을 각 IAM 사용자에게 연결합니다. API 에 대한 메서드 권한 부여 유형을 AWS_IAM 으로 설정합니다. Signature Version 4 를 사용하여 API 요청에 서명합니다.
		- D) API 에 대한 리소스 정책을 생성하여 각 IAM 사용자에게만 액세스를 허용합니다.
		- [리소스 정책](https://docs.aws.amazon.com/apigateway/latest/developerguide/apigateway-resource-policies-examples.html#apigateway-resource-policies-cross-account-example)은 [Signature Version 4](https://docs.aws.amazon.com/general/latest/gr/sigv4_signing.html)(SigV4) 프로토콜을 사용하여 AWS 계정의 API 액세스를 다른 AWS 계정의 사용자에게 부여할 수 있습니다.
	- 한 개발자가 텍스트 파일을 .pdf 파일로 변환하는 새 애플리케이션을 구축하고 있습니다. 별도의 애플리케이션이 텍스트 파일을 소스 Amazon S3 버킷에 작성합니다. 새 애플리케이션은 Amazon S3에 도착하는 파일을 읽고 AWS Lambda 함수를 사용하여 파일을 .pdf 파일로 변환해야 합니다. 개발자는 IAM 정책을 작성하여 Amazon S3 및 Amazon CloudWatch Logs 에 대한 액세스를 허용했습니다.
	  id:: 6602ee13-1700-4d51-ad30-e6cb430197e3
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2024-03-27T15:00:00.000Z
	  card-last-reviewed:: 2024-03-27T11:54:30.134Z
	  card-last-score:: 1
	  Lambda 함수에 올바른 권한이 있는지 확인하려면 개발자는 어떻게 해야 합니까?#card #aws-certification
	  
	  A) AWS Identity and Access Management(IAM)를 사용하여 Lambda 실행 역할을 생성합니다. IAM 정책을 역할에 연결합니다. Lambda 실행 역할을 Lambda 함수에 할당합니다.  
	  B) AWS Identity and Access Management(IAM)를 사용하여 Lambda 실행 사용자를 생성합니다. IAM 정책을 사용자에게 연결합니다. Lambda 실행 사용자를 Lambda 함수에 할당합니다.  
	  C) AWS Identity and Access Management(IAM)를 사용하여 Lambda 실행 역할을 생성합니다. IAM 정책을 역할에 연결합니다. IAM 역할을 Lambda 함수의 환경 변수로 저장합니다.  
	  D) AWS Identity and Access Management(IAM)를 사용하여 Lambda 실행 사용자를 생성합니다. IAM 정책을 사용자에게 연결합니다. IAM 사용자 자격 증명을 Lambda 함수의 환경 변수로 저장합니다.
		- A) AWS Identity and Access Management(IAM)를 사용하여 Lambda 실행 역할을 생성합니다. IAM 정책을 역할에 연결합니다. Lambda 실행 역할을 Lambda 함수에 할당합니다.
		- AWS Lambda 함수의 [실행 역할](https://docs.aws.amazon.com/lambda/latest/dg/lambda-intro-execution-role.html)은 Lambda 함수에 AWS 서비스 및 리소스에 액세스할 수 있는 권한을 부여합니다. 함수를 생성할 때 이 역할을 제공하며, 함수가 호출될 때 Lambda 가 역할을 취합니다.
		- 어렵다 hard 2023/10/13
	- 한 개발자가 데이터베이스에 중요한 기밀 데이터를 저장하는 애플리케이션을 개발하고 있습니다. 개발자는 봉투 암호화와 함께 AWS Key Management Service(AWS KMS)를 사용하여 데이터를 보호해야 합니다.
	  id:: 6602ee13-d098-4c49-8973-b3323d4a5ed3
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2024-04-03T15:00:00.000Z
	  card-last-reviewed:: 2024-04-02T23:08:43.903Z
	  card-last-score:: 1
	  이러한 요구 사항을 충족하려면 개발자는 어떻게 데이터 암호화를 구성해야 합니까?#card #aws-certification
	  
	  A) KMS 키를 사용하여 데이터를 암호화합니다. 암호화된 데이터를 데이터베이스에 저장합니다.  
	  B) 생성된 데이터 키를 사용하여 데이터를 암호화합니다. 암호화된 데이터를 데이터베이스에 저장합니다.  
	  C) 생성된 데이터 키를 사용하여 데이터를 암호화합니다. 암호화된 데이터와 데이터 키 ID를 데이터베이스에 저장합니다.  
	  D) 생성된 데이터 키를 사용하여 데이터를 암호화합니다. 암호화된 데이터와 암호화된 데이터 키를 데이터베이스에 저장합니다.
		- D) 생성된 데이터 키를 사용하여 데이터를 암호화합니다. 암호화된 데이터와 암호화된 데이터 키를 데이터베이스에 저장합니다.
		- [봉투 암호화](https://docs.aws.amazon.com/kms/latest/developerguide/concepts.html#enveloping)는 데이터 키를 사용하여 일반 텍스트 데이터를 암호화한 다음 다른 키에서 데이터 키를 암호화하는 방법입니다. 데이터 키를 사용하여 데이터베이스의 암호화된 데이터를 해독할 수 있도록 암호화된 형식의 데이터 키를 저장해야 합니다.
	- 한 개발자가 회사의 기존 레코드 스토리지 애플리케이션에 Amazon ElastiCache for Memcached를 추가하고 있습니다. 개발자는 일반적인 레코드 처리 패턴을 분석한 결과에 따라 지연 로드를 사용하기로 결정했습니다.
	  id:: 6602ee13-1888-4256-9734-83e1dfd172f4
	  다음 예시 중 지연 로드를 올바르게 구현하는 의사코드는 무엇입니까?#card #aws-certification
	  
	  A)   
	  ```java
	  record_value = db.query("UPDATE Records SET Details = {1} WHERE ID == {0}",
	                          record_key, record_value)
	    cache.set (record_key, record_value)
	  ```
	  B)   
	  ```java
	  record_value = cache.get(record_key)
	  if (record_value == NULL)
	  	record_value = db.query("SELECT Details FROM Records WHERE ID == {0}",
	  							record_key)
	    cache.set(record_key, record_value)
	  ```
	  C)   
	  ```java
	  record_value = cache.get (record_key)
	  db.query("UPDATE Records SET Details = {1} WHERE ID == {0}", 
	           record_key, record_value)
	  ```
	  D)   
	  ```java
	  record_value = db.query("SELECT Details FROM Records WHERE ID == {0}",
	                          record_key)
	  if (record_value != NULL)
	    cache.set(record_key, record_value)
	  ```
		- B) 
		  ```java
		  record_value = cache.get(record_key)
		  if (record_value == NULL)
		  	record_value = db.query("SELECT Details FROM Records WHERE ID == {0}",
		  							record_key)
		    cache.set(record_key, record_value)
		  ```
		- [지연 로드](https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/Strategies.html#Strategies.LazyLoading.CodeExample)는 레코드가 필요할 때까지 레코드가 로드되지 않는 캐싱 전략입니다. 지연 로드를 구현하면 애플리케이션이 먼저 캐시에 레코드가 있는지 확인합니다. 레코드가 없는 경우 애플리케이션은 데이터베이스에서 레코드를 검색하여 캐시에 해당 레코드를 저장합니다.
		- lazy loading 캐싱 전략은 무엇인가? #card #aws-certification
		  id:: 66041c53-ab49-417c-8239-ef16eaf69092
		  card-last-interval:: 3.58
		  card-repeats:: 1
		  card-ease-factor:: 2.6
		  card-next-schedule:: 2024-04-01T01:21:53.536Z
		  card-last-reviewed:: 2024-03-28T12:21:53.536Z
		  card-last-score:: 5
			- 데이터가 필요할 때까지 저장하지 않는 캐싱 전략
			- 캐시에서 데이터를 확인한 후 없으면 db에서 조회 후 캐싱한다.
	- 한 개발자가 Amazon API Gateway 를 사용하는 웹 애플리케이션을 구축하고 있습니다. 개발자는 개발 워크로드와 프로덕션 워크로드에 대해 서로 다른 환경을 유지 관리하려고 합니다. API 는 개발과 프로덕션에 각각 하나씩 두 개의 별칭이 있는 AWS Lambda 함수가 지원합니다.
	  id:: 6602ee13-c800-4f98-9e08-8633b0f374ab
	  최소한의 구성으로 이러한 환경을 유지 관리하려면 개발자는 어떻게 해야 합니까?#card #aws-certification
	  
	  A) 각 환경에 대한 REST API 를 생성합니다. API 를 Lambda 함수의 해당 개발 및 프로덕션 별칭과 통합합니다. API 를 각 단계에 배포합니다. 단계 URL 을 사용하여 API 에 액세스합니다.  
	  B) REST API 하나를 생성합니다. 별칭 대신 단계 변수를 사용하여 API 를 Lambda 함수와 통합합니다. API 를 개발과 프로덕션 두 단계에 배포합니다. 각 단계에서 서로 다른 별칭 값을 사용하여 단계 변수를 생성합니다. 다른 단계 URL 을 사용하여 API 에 액세스합니다.  
	  C) REST API 하나를 생성합니다. API 를 Lambda 함수의 개발 별칭과 통합합니다. API 를 개발 환경에 배포합니다. canary 가 Lambda 프로덕션 별칭과 통합되는 프로덕션 환경에 대해 canary 릴리스 배포를 구성합니다.  
	  D) REST API 하나를 생성합니다. API 를 Lambda 함수의 프로덕션 별칭과 통합합니다. API 를 프로덕션 환경에 배포합니다. canary 가 Lambda 개발 별칭과 통합되는 개발 환경에 대해 canary 릴리스 배포를 구성합니다.
		- B) REST API 하나를 생성합니다. 별칭 대신 단계 변수를 사용하여 API 를 Lambda 함수와 통합합니다. API 를 개발과 프로덕션 두 단계에 배포합니다. 각 단계에서 서로 다른 별칭 값을 사용하여 단계 변수를 생성합니다. 다른 단계 URL 을 사용하여 API 에 액세스합니다.
		- Amazon API Gateway 의 배포 단계를 통해 각 API 에 대한 여러 릴리스 단계를 관리할 수 있습니다. API 배포 단계가 서로 다른 백엔드 엔드포인트와 상호 작용할 수 있도록 [단계 변수](https://docs.aws.amazon.com/apigateway/latest/developerguide/stage-variables.html)를 구성할 수 있습니다. API Gateway 단계 변수를 사용하여 여러 버전 및 별칭이 있는 [단일 AWS Lambda 함수를 참조](https://docs.aws.amazon.com/apigateway/latest/developerguide/amazon-api-gateway-using-stage-variables.html)할 수 있습니다.
	- 한 개발자가 Amazon EC2 인스턴스 플릿에서 실행되는 애플리케이션의 성능을 추적하려고 합니다. 개발자는 플릿 전체에서 평균 요청 지연 시간 및 최대 요청 지연 시간과 같은 통계를 확인하고 추적하려고 합니다. 이 개발자는 평균 응답 시간이 임계값을 초과할 경우 즉시 알림을 받고자 합니다. 다음 중 이러한 요구 사항을 충족하는 솔루션은 무엇입니까?#card #aws-certification
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2024-03-27T15:00:00.000Z
	  card-last-reviewed:: 2024-03-26T15:35:17.946Z
	  card-last-score:: 1
	  id:: 6602ee13-c20b-4968-9ab1-95d889d7d270
	  
	  A) 각 EC2 인스턴스에서 크론(cron) 작업을 구성하여 응답 시간을 측정하고 Amazon S3 버킷에 저장된 로그 파일을 1 분마다 업데이트합니다. Amazon S3 이벤트 알림을 사용하여 로그 파일을 읽고 새 항목을 Amazon OpenSearch Service 클러스터에 작성하는 AWS Lambda 함수를 호출합니다. OpenSearch 대시보드에 결과를 시각화합니다. 응답 시간이 임계값을 초과하면 Amazon Simple Notification Service(Amazon SNS) 주제에 알림을 보내도록 OpenSearch Service 를 구성합니다.  
	  B) 시스템 로그에 응답 시간을 작성하도록 애플리케이션을 구성합니다. EC2 인스턴스에 Amazon Inspector 에이전트를 설치 및 구성하여 로그를 지속적으로 읽고 응답 시간을 Amazon EventBridge(Amazon CloudWatch Events)에 전송합니다. EventBridge(CloudWatch Events) 콘솔에서 지표 그래프를 확인합니다. 평균 응답 시간 지표가 임계값을 초과하면 Amazon Simple Notification Service(Amazon SNS) 알림을 보내도록 EventBridge(CloudWatch Events) 사용자 지정 규칙을 구성합니다.  
	  C) 로그 파일에 응답 시간을 작성하도록 애플리케이션을 구성합니다. EC2 인스턴스에 Amazon CloudWatch 에이전트를 설치 및 구성하여 애플리케이션 로그를 CloudWatch Logs 에 스트리밍합니다. 로그에서 응답 시간의 지표 필터를 생성합니다. CloudWatch 콘솔에서 지표 그래프를 확인합니다. 평균 응답 시간 지표가 임계값을 초과하면 Amazon Simple Notification Service(Amazon SNS) 알림을 보내도록 CloudWatch 경보를 생성합니다.  
	  D) EC2 인스턴스에 AWS Systems Manager Agent(SSM Agent)를 설치 및 구성하여 응답 시간을 모니터링하고 응답 시간을 Amazon CloudWatch 에 사용자 지정 지표로 전송합니다. Amazon QuickSight 에서 지표 그래프를 확인합니다. 평균 응답 시간 지표가 임계값을 초과하면 Amazon Simple Notification Service(Amazon SNS) 알림을 보내도록 CloudWatch 경보를 생성합니다.
		- C) 로그 파일에 응답 시간을 작성하도록 애플리케이션을 구성합니다. EC2 인스턴스에 Amazon CloudWatch 에이전트를 설치 및 구성하여 애플리케이션 로그를 CloudWatch Logs 에 스트리밍합니다. 로그에서 응답 시간의 지표 필터를 생성합니다. CloudWatch 콘솔에서 지표 그래프를 확인합니다. 평균 응답 시간 지표가 임계값을 초과하면 Amazon Simple Notification Service(Amazon SNS) 알림을 보내도록 CloudWatch 경보를 생성합니다.
		- [Amazon CloudWatch 에이전트](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/Install-CloudWatch-Agent.html)를 구성하여 로그와 지표를 CloudWatch 에 스트리밍할 수 있습니다. CloudWatch Logs에 저장된 로그에서 [지표 필터](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/MonitoringLogData.html)를 생성할 수도 있습니다.
		- hard 2023/10/13
	- 한 개발자가 로컬에서 애플리케이션을 테스트하고 있으며, 애플리케이션을 AWS Lambda 함수에 배포했습니다. 개발자는 배포 패키지 크기 할당량을 초과하지 않도록 배포 파일에 종속 항목을 포함하지 않았습니다. 개발자가 애플리케이션을 원격으로 테스트할 때 누락된 종속 항목으로 인해 Lambda 함수가 실행되지 않습니다.
	  id:: 6602ee13-f6c9-4996-84af-e96240a16952
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2024-04-06T23:11:42.998Z
	  card-last-reviewed:: 2024-04-02T23:11:43.001Z
	  card-last-score:: 3
	  다음 중 이 문제를 해결할 수 있는 솔루션은 무엇입니까?#card #aws-certification
	  
	  A) Lambda 콘솔 편집기를 사용하여 코드를 업데이트하고 누락된 종속 항목을 포함합니다.  
	  B) 누락된 종속 항목이 포함된 추가 .zip 파일을 생성합니다. 원본 Lambda 배포 패키지에 .zip 파일을 포함합니다.  
	  C) Lambda 함수의 환경 변수에 누락된 종속 항목에 대한 참조를 추가합니다.  
	  D) 누락된 종속 항목이 포함된 계층을 생성합니다. 계층을 Lambda 함수에 연결합니다.
		- D) 누락된 종속 항목이 포함된 계층을 생성합니다. 계층을 Lambda 함수에 연결합니다.
			- AWS Lambda 함수를 구성하여 추가 코드와 콘텐츠를 [계층](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html)의 형태로 가져올 수 있습니다. 계층은 라이브러리, 사용자 지정 런타임 또는 기타 종속 항목을 포함하는 .zip 파일 아카이브입니다. 계층을 통해 배포 패키지에 라이브러리를 포함하지 않고도 Lambda 함수에서 라이브러리를 사용할 수 있습니다.