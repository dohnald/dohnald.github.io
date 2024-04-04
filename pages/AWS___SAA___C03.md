public:: false

- ## Solutions Architect - Associate (SAA-C03) #AWS
	- | 도메인 | 시험 비율(%) |
	  | 도메인 1: 보안 아키텍처 설계 | 30% |
	  | 도메인 2: 복원력을 갖춘 아키텍처 설계 | 26% | 
	  | 도메인 3: 고성능 아키텍처 설계 | 24% |
	  | 도메인 4: 비용에 최적화된 아키텍처 설계 | 20% |
	  | | 합계 100% |
	- https://d1.awsstatic.com/ko_KR/training-and-certification/docs-sa-assoc/AWS-Certified-Solutions-Architect-Associate_Sample-Questions.pdf
	- https://www.examtopics.com/exams/amazon/aws-certified-solutions-architect-associate-saa-c03/view/
	- 한 회사가 여러 가용 영역에 걸쳐 VPC 에서 퍼블릭 3 티어 웹 애플리케이션을 실행합니다. 프라이빗 서브넷에서 실행되는 애플리케이션 티어의 Amazon EC2 인스턴스는 인터넷에서 소프트웨어 패치를 다운로드해야 합니다. 하지만 EC2 인스턴스는 인터넷에서 직접 액세스할 수 없습니다.
	  card-last-score:: 1
	  card-repeats:: 1
	  card-next-schedule:: 2023-11-01T15:00:00.000Z
	  card-last-interval:: -1
	  card-ease-factor:: 2.36
	  card-last-reviewed:: 2023-11-01T02:31:41.512Z
	  id:: 65a790ed-7d3e-4afd-bee3-fd7fb618a920
	  EC2 인스턴스가 필요한 패치를 다운로드할 수 있도록 하려면 어떤 작업을 수행해야 합니까? (2개 선택)#card #aws-certification 
	  ----
	  A) 퍼블릭 서브넷에서 NAT 게이트웨이를 구성합니다.
	  B) 인터넷 트래픽에 대한 NAT 게이트웨이 경로가 있는 사용자 지정 라우팅 테이블을 정의하고 이를 애플리케이션 티어의 프라이빗 서브넷과 연결합니다.
	  C) EC2 인스턴스에 탄력적 IP 주소를 할당합니다.
	  D) 인터넷 트래픽에 대한 인터넷 게이트웨이 경로가 있는 사용자 지정 라우팅 테이블을 정의하고 이를 애플리케이션 티어의 프라이빗 서브넷과 연결합니다.
	  E) 프라이빗 서브넷에서 NAT 인스턴스를 구성합니다.
		- A) 퍼블릭 서브넷에서 NAT 게이트웨이를 구성합니다.
		- B) 인터넷 트래픽에 대한 NAT 게이트웨이 경로가 있는 사용자 지정 라우팅 테이블을 정의하고 이를 애플리케이션 티어의 프라이빗 서브넷과 연결합니다.
		- [NAT 게이트웨이](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-nat-gateway.html)는 프라이빗 서브넷의 EC2 인스턴스에서 인터넷 또는 기타 AWS 서비스로 트래픽을 전달한 다음 인스턴스에 다시 응답을 보냅니다. NAT 게이트웨이가 생성된 후 인터넷 트래픽이 NAT 게이트웨이를 가리키도록 프라이빗 서브넷의 라우팅 테이블을 업데이트해야 합니다.
	- 한 솔루션스 아키텍트가 2 주간의 회사 폐쇄 기간 중에 실행할 필요가 없는 Amazon EC2 인스턴스의 비용을 절감하기 위한 솔루션을 설계하려고 합니다. EC2 인스턴스에서 실행되는 애플리케이션은 인스턴스가 작동을 재개할 때 존재해야 하는 인스턴스 메모리에 데이터를 저장합니다.
	  card-last-interval:: 3.71
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2023-10-15T20:46:54.046Z
	  card-last-reviewed:: 2023-10-12T03:46:54.046Z
	  card-last-score:: 3
	  id:: 65a790ed-7fcc-4681-8cc5-f9fc193618a3
	  이 솔루션스 아키텍트는 EC2 인스턴스를 종료하고 재개하기 위해 어떤 접근 방식을 제안해야 합니까?#card#aws-certification
	  ----
	  A) 인스턴스 스토어 볼륨에 데이터를 저장하도록 애플리케이션을 수정합니다. EC2 인스턴스를 다시 시작하는 동안 볼륨을 다시 연결합니다.
	  B) EC2 인스턴스를 중지하기 전에 EC2 인스턴스의 스냅샷을 생성합니다. 인스턴스를 다시 시작한 후 스냅샷을 복원합니다.
	  C) 절전 모드가 활성화된 EC2 인스턴스에서 애플리케이션을 실행합니다. 2 주 동안 회사를 폐쇄하기 전에 인스턴스를 절전 모드로 전환합니다.
	  D) EC2 인스턴스를 중지하기 전에 각 EC2 인스턴스의 가용 영역을 기록해 둡니다. 2 주간의 회사 폐쇄가 끝나면 동일한 가용 영역에서 인스턴스를 다시 시작합니다.
		- C) 절전 모드가 활성화된 EC2 인스턴스에서 애플리케이션을 실행합니다. 2 주 동안 회사를 폐쇄하기 전에 인스턴스를 절전 모드로 전환합니다.
		- EC2 인스턴스를 [절전 모드로 전환](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Hibernate.html#enabling-hibernation)하면 인스턴스 메모리의 콘텐츠가 Amazon Elastic Block Store(Amazon EBS) 루트 볼륨에 저장됩니다. 인스턴스가 다시 시작되면 인스턴스 메모리 콘텐츠가 다시 로드됩니다.
	- 한 회사가 VPC에서 Amazon EC2 인스턴스에 대한 모니터링 애플리케이션을 실행할 계획입니다. 인스턴스의 프라이빗 IPv4 주소를 사용하여 EC2 인스턴스에 연결됩니다. 솔루션스 아키텍트는 애플리케이션에 장애가 발생하여 연결할 수 없는 경우 트래픽을 대기 EC2 인스턴스로 신속하게 보낼 수 있는 솔루션을 설계해야 합니다.
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2023-11-09T15:00:00.000Z
	  card-last-reviewed:: 2023-11-08T22:40:18.513Z
	  card-last-score:: 1
	  id:: 65a790ed-c1f1-4737-9435-27c268959b51
	  이러한 요구 사항을 충족할 수 있는 방법은 무엇입니까?#card #aws-certification
	  ----
	  A) 사설 IP 주소에 대한 리스너로 구성된 Application Load Balancer를 배포하고 로드 밸런서에 프라이머리 EC2 인스턴스를 등록합니다. 실패 시 인스턴스를 등록 취소하고 대기 EC2 인스턴스를 등록합니다.
	  B) 사용자 지정 DHCP 옵션 세트를 구성합니다. 프라이머리 EC2 인스턴스에 장애가 발생할 경우 대기 EC2 인스턴스에 동일한 사설 IP 주소를 할당하도록 DHCP를 구성합니다.
	  C) 사설 IP 주소로 구성된 EC2 인스턴스에 세컨더리 탄력적 네트워크 인터페이스를 연결합니다. 프라이머리 EC2 인스턴스에 연결할 수 없는 경우 네트워크 인터페이스를 대기 EC2 인스턴스로 이동합니다.
	  D) 탄력적 IP 주소를 프라이머리 EC2 인스턴스의 네트워크 인터페이스와 연결합니다. 실패 시 프라이머리 인스턴스에서 탄력적 IP 를 분리하고 이를 대기 EC2 인스턴스와 연결합니다.
		- C) 사설 IP 주소로 구성된 EC2 인스턴스에 세컨더리 탄력적 네트워크 인터페이스를 연결합니다. 프라이머리 EC2 인스턴스에 연결할 수 없는 경우 네트워크 인터페이스를 대기 EC2 인스턴스로 이동합니다.
		- [세컨더리 탄력적 네트워크 인터페이스](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-eni.html#scenarios-enis)를 EC2 인스턴스에 추가할 수 있습니다. 프라이머리 네트워크 인터페이스는 인스턴스에서 분리할 수 없지만 세컨더리 네트워크 인터페이스는 분리하여 다른 EC2 인스턴스에 연결할 수 있습니다
	- 한 분석 회사가 사용자에게 웹 분석 서비스를 제공할 계획입니다. 이 서비스를 사용하면 사용자의 웹페이지에 회사의 Amazon S3 버킷에 인증된 GET 요청을 보내는 JavaScript 스크립트를 포함해야 합니다.
	  card-last-interval:: 4
	  card-repeats:: 2
	  card-ease-factor:: 2.22
	  card-next-schedule:: 2023-11-05T09:39:03.307Z
	  card-last-reviewed:: 2023-11-01T09:39:03.308Z
	  card-last-score:: 3
	  id:: 65a790ed-81a7-416f-bad7-bd8afd986ff5
	  collapsed:: true
	  솔루션스 아키텍트는 스크립트가 성공적으로 실행되도록 하기 위해 무엇을 해야 합니까? #card#aws-certification
	  ----
	  A) S3 버킷에 교차 출처 리소스 공유(CORS)를 활성화합니다.
	  B) S3 버킷에 S3 버전 관리를 활성화합니다.
	  C) 사용자에게 스크립트의 서명된 URL을 제공합니다.
	  D) 퍼블릭 실행 권한을 허용하도록 S3 버킷 정책을 구성합니다.
		- A) S3 버킷에 교차 출처 리소스 공유(CORS)를 활성화합니다.
		- 웹 브라우저는 웹페이지와 다른 도메인 이름을 가진 서버에서 시작되는 스크립트 실행을 차단합니다. 스크립트 실행을 허용하는 HTTP 헤더를 전송하도록 [CORS를 사용하여 Amazon S3 를 구성할 수 있습니다](https://docs.aws.amazon.com/AmazonS3/latest/dev/cors.html)
	- 한 회사의 보안 팀이 클라우드에 저장된 모든 데이터를 온프레미스에 저장된 암호화 키를 사용하여 항상 암호화된 상태로 저장할 것을 요구합니다.
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2023-10-25T15:00:00.000Z
	  card-last-reviewed:: 2023-10-24T22:50:20.192Z
	  card-last-score:: 1
	  id:: 65a790ed-6ed8-4688-bdaa-ee19d4452ef9
	  collapsed:: true
	  이러한 요구 사항을 충족하는 암호화 옵션은 무엇입니까? (2 개 선택)#card #aws-certification
	  ----
	  A) Amazon S3 관리형 암호화 키를 이용하는 서버 측 암호화(SSE-S3)를 사용합니다.
	  B) AWS KMS 관리형 암호화 키를 이용하는 서버 측 암호화(SSE-KMS)를 사용합니다.
	  C) 고객 제공 암호화 키를 이용하는 서버 측 암호화(SSE-C)를 사용합니다.
	  D) 미사용 데이터 암호화를 제공하기 위해 클라이언트 측 암호화를 사용합니다.
	  E) 고객의 키를 사용하여 데이터를 암호화하기 위해 Amazon S3 이벤트에 의해 호출된 AWS Lambda 함수를 사용합니다.
		- C) 고객 제공 암호화 키를 이용하는 서버 측 암호화(SSE-C)를 사용합니다.
		- D) 미사용 데이터 암호화를 제공하기 위해 클라이언트 측 암호화를 사용합니다.
		- [고객 제공 키를 이용하는 서버 측 암호화(SSE-C)](https://docs.aws.amazon.com/AmazonS3/latest/userguide/ServerSideEncryptionCustomerKeys.html)를 사용하면 Amazon S3 가 PUT 요청에 제공된 암호화 키를 사용하여 서버 측 객체를 암호화할 수 있습니다. Amazon S3 가 객체의 암호를 해독할 수 있도록 GET 요청에 동일한 키를 제공해야 합니다. 또한 고객은 Amazon S3 에 데이터를 업로드하기 전에 클라이언트 측에서 데이터를 암호화할 수 있으며, 그런 다음 데이터를 다운로드한 후에 데이터의 암호를 해독할 수 있습니다. AWS software development kits(SDKs)는 프로세스를 간소화하는 S3 암호화 클라이언트를 제공합니다.
	- 한 회사가 데이터 처리 워크로드를 실행하기 위해 Amazon EC2 예약형 인스턴스를 사용합니다. 야간 작업은 일반적으로 실행하는 데 7 시간이 걸리며 10 시간 내에 완료되어야 합니다. 이 회사는 매월 말에 일시적인 수요 증가로 인해 현재 리소스 용량으로는 시간 제한을 초과하여 작업이 실행될 것으로 예상합니다. 처리 작업은 시작되고 나면 완료 전에 중단할 수 없습니다. 이 회사는 가능한 한 비용 효율적으로 증가된 리소스 용량을 제공하는 솔루션을 구현하고자 합니다.
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-10-16T03:46:10.607Z
	  card-last-reviewed:: 2023-10-12T03:46:10.607Z
	  card-last-score:: 5
	  id:: 65a790ed-53c2-436e-896a-11c49a833c7c
	  collapsed:: true
	  솔루션스 아키텍트는 이를 달성하기 위해 무엇을 해야 합니까?#card #aws-certification
	  ----
	  A) 수요가 많은 기간에 온디맨드 인스턴스를 배포합니다.
	  B) 추가 인스턴스에 대한 두 번째 EC2 예약을 생성합니다.
	  C) 수요가 많은 기간에 스팟 인스턴스를 배포합니다.
	  D) EC2 예약에서 EC2 인스턴스 크기를 늘려 증가된 워크로드를 지원합니다.
		- A) 수요가 많은 기간에 온디맨드 인스턴스를 배포합니다.
		- [스팟 인스턴스](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-spot-instances.html)는 비용이 가장 적게 드는 옵션이지만 중단할 수 없거나 특정 기간 내에 완료해야 하는 작업에는 적합하지 않습니다. [온디맨드 인스턴스](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-on-demand-instances.html)는 실행 중인 시간(초) 만큼 비용이 청구됩니다.
	- 한 회사가 주간 라이브 TV 프로그램을 위해 온라인 투표 시스템을 운영합니다. 방송 중에 사용자는 Auto Scaling 그룹에서 실행되는 Amazon EC2 인스턴스의 프런트 엔드 플릿에 몇 분 내에 수십만 개의 투표를 제출합니다. EC2 인스턴스는 Amazon RDS 데이터베이스에 투표를 기록합니다. 그러나 데이터베이스는 EC2 인스턴스에서 오는 요청을 모두 처리할 수 없습니다. 솔루션스 아키텍트는 다운타임 없이 가장 효율적인 방식으로 투표를 처리하는 솔루션을 설계해야 합니다.
	  card-last-interval:: 4
	  card-repeats:: 2
	  card-ease-factor:: 2.7
	  card-next-schedule:: 2023-11-06T22:32:03.357Z
	  card-last-reviewed:: 2023-11-02T22:32:03.357Z
	  card-last-score:: 5
	  id:: 65a790ed-3837-43a7-a228-3ae8b3ea3939
	  collapsed:: true
	  이러한 요구 사항을 충족하는 솔루션은 무엇입니까?#card #aws-certification
	  ----
	  A) 프런트 엔드 애플리케이션을 AWS Lambda 로 마이그레이션합니다. Amazon API Gateway 를 사용하여 사용자 요청을 Lambda 함수로 라우팅합니다.
	  B) 데이터베이스를 다중 AZ 배포로 변환하여 수평적으로 크기를 조정합니다. 프라이머리 DB 인스턴스와 세컨더리 DB 인스턴스 모두에 기록하도록 프런트 엔드 애플리케이션을 구성합니다.
	  C) Amazon Simple Queue Service(Amazon SQS) 대기열에 투표를 보내도록 프런트 엔드 애플리케이션을 구성합니다. SQS 대기열을 읽고 데이터베이스에 투표 정보를 기록하도록 작업자 인스턴스를 프로비저닝합니다.
	  D) Amazon EventBridge(Amazon CloudWatch Events)를 통해 예약된 이벤트를 생성하여 투표 기간 동안 더 큰 메모리 최적화 인스턴스로 데이터베이스를 다시 프로비저닝합니다. 투표가 종료되면 더 작은 인스턴스를 사용하도록 데이터베이스를 다시 프로비저닝합니다.
		- C) Amazon Simple Queue Service(Amazon SQS) 대기열에 투표를 보내도록 프런트 엔드 애플리케이션을 구성합니다. SQS 대기열을 읽고 데이터베이스에 투표 정보를 기록하도록 작업자 인스턴스를 프로비저닝합니다.
		- 데이터베이스에서 투표 데이터 흡수를 [분리](https://aws.amazon.com/sqs/#:~:text=SQS%20lets%20you%20decouple%20application,they%20are%20available%20whenever%20needed.)하면 투표 시스템이 데이터베이스 쓰기를 기다리지 않고 투표를 계속 처리할 수 있습니다. [SQS 대기열](https://docs.aws.amazon.com/AWSSimpleQueueService/latest/SQSDeveloperGuide/welcome.html)에서 읽을 전용 작업자를 추가하면 제어 가능한 속도로 데이터베이스에 투표를 입력할 수 있습니다. 투표는 데이터베이스가 처리할 수 있을 만큼의 속도로 데이터베이스에 추가되며 손실되지 않습니다.
	- 한 회사가 퍼블릭 및 프라이빗 서브넷에서 실행되는 2 티어 애플리케이션 아키텍처를 보유하고 있습니다. 웹 애플리케이션을 실행하는 Amazon EC2 인스턴스는 퍼블릭 서브넷에 있고 데이터베이스의 EC2 인스턴스는 프라이빗 서브넷에서 실행됩니다. 웹 애플리케이션 인스턴스와 데이터베이스는 단일 가용 영역(AZ)에서 실행됩니다.
	  card-last-interval:: 3.71
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2023-10-15T20:51:22.966Z
	  card-last-reviewed:: 2023-10-12T03:51:22.966Z
	  card-last-score:: 3
	  id:: 65a790ed-c226-4043-8d2c-949cc1153376
	  collapsed:: true
	  이 아키텍처에 고가용성을 제공하기 위해 솔루션스 아키텍트가 수행해야 하는 단계는 무엇입니까? (2개 선택)#card #aws-certification
	  ----
	  A) 동일한 AZ 에 퍼블릭 서브넷과 프라이빗 서브넷을 새로 생성합니다.
	  B) 웹 애플리케이션 인스턴스에 대해 다중 AZ 에 걸쳐 Amazon EC2 Auto Scaling 그룹 및 Application Load Balancer 를 생성합니다.
	  C) 기존 웹 애플리케이션 인스턴스를 Application Load Balancer 뒤에 있는 Auto Scaling 그룹에 추가합니다.
	  D) 새 AZ 에 퍼블릭 서브넷과 프라이빗 서브넷을 새로 생성합니다. 새 AZ 의 퍼블릭 서브넷에 있는 EC2 인스턴스를 사용하여 데이터베이스를 생성합니다. 이전 데이터베이스 콘텐츠를 새 데이터베이스로 마이그레이션합니다.
	  E) 동일한 VPC 에서 퍼블릭 서브넷과 프라이빗 서브넷을 각각 새 AZ 에 새로 생성합니다. 프라이빗 서브넷에서 Amazon RDS 다중 AZ DB 인스턴스를 생성합니다. 이전 데이터베이스 콘텐츠를 새 DB 인스턴스로 마이그레이션합니다.
		- B) 웹 애플리케이션 인스턴스에 대해 다중 AZ 에 걸쳐 Amazon EC2 Auto Scaling 그룹 및 Application Load Balancer 를 생성합니다.
		- E) 동일한 VPC 에서 퍼블릭 서브넷과 프라이빗 서브넷을 각각 새 AZ 에 새로 생성합니다. 프라이빗 서브넷에서 Amazon RDS 다중 AZ DB 인스턴스를 생성합니다. 이전 데이터베이스 콘텐츠를 새 DB 인스턴스로 마이그레이션합니다.
		- 새 가용 영역(AZ)에 새 서브넷을 생성하여 중복 네트워크를 제공합니다. [로드 밸런서 뒤에 있는 두 AZ에 인스턴스가 포함된 Auto Scaling 그룹](https://docs.aws.amazon.com/autoscaling/ec2/userguide/autoscaling-load-balancer.html)을 생성하여 웹 애플리케이션의 고가용성을 보장하고 두 퍼블릭 AZ 간에 웹 트래픽을 재배포합니다. 두 프라이빗 서브넷에 RDS DB 인스턴스를 생성하여 [데이터베이스 티어도 고가용성으로 만듭니다](https://aws.amazon.com/rds/features/multi-az/).
	- 한 웹사이트에서 매일 정오에 급증하는 트래픽을 수신하는 사용자 지정 웹 애플리케이션을 실행합니다. 사용자는 매일 새 사진과 콘텐츠를 업로드하지만 시간 초과에 대해 불평하고 있습니다. 아키텍처는 Amazon EC2 Auto Scaling 그룹을 사용하며, 애플리케이션은 부팅 시 사용자 요청에 응답하기 전에 시작하는 데 1분이 걸립니다.
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-10-16T03:48:50.874Z
	  card-last-reviewed:: 2023-10-12T03:48:50.875Z
	  card-last-score:: 5
	  id:: 65a790ed-6d98-4ac8-b4b1-56e8cabc1804
	  collapsed:: true
	  솔루션스 아키텍트는 변화하는 트래픽에 더 잘 대응하기 위해 아키텍처를 어떻게 재설계해야 합니까?#card #aws-certification
	  ----
	  A) 느린 시작 구성으로 Network Load Balancer 를 구성합니다.
	  B) EC2 인스턴스의 직접 요청을 오프로드하도록 Amazon ElastiCache for Redis 를 구성합니다.
	  C) EC2 인스턴스 웜 업 조건을 사용하여 Auto Scaling 단계별 크기 조정 정책을 구성합니다.
	  D) Application Load Balancer 를 출처로 사용하도록 Amazon CloudFront 를 구성합니다.
		- C) EC2 인스턴스 웜 업 조건을 사용하여 Auto Scaling 단계별 크기 조정 정책을 구성합니다.
		- 현재 구성에서는 새 EC2 인스턴스가 트랜잭션에 응답하기 전에 새 EC2 인스턴스를 사용하기 시작합니다. 이로 인해 인스턴스가 과도하게 조정될 수도 있습니다. [단계별 크기 조정 정책](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html)을 사용하면 새로 시작된 인스턴스가 웜 업되는 데 걸리는 시간(초)을 지정할 수 있습니다. [웜 업](https://docs.aws.amazon.com/autoscaling/ec2/userguide/as-scaling-simple-step.html#as-step-scaling-warmup) 시간이 만료될 때까지 EC2 인스턴스는 Auto Scaling 그룹의 집계된 지표에 포함되지 않습니다. 스케일 아웃 중에는 Auto Scaling 로직은 웜 업 중인 EC2 인스턴스를 Auto Scaling 그룹의 현재 용량으로 간주하지 않습니다. 따라서 여러 개의 경보 위반이 동일한 단계 조절 범위에 해당하는 경우 단일 크기 조정 작업이 이루어집니다. 이를 통해 필요 이상으로 인스턴스를 추가하지 않게 됩니다.
	- AWS 에서 실행되는 한 애플리케이션이 데이터베이스에 Amazon Aurora 다중 AZ DB 클러스터 배포를 사용합니다. 성능 지표를 평가할 때 솔루션스 아키텍트는 데이터베이스 읽기로 인해 I/O 가 크게 발생하고 데이터베이스에 대한 쓰기 요청에 대기 시간이 추가된다는 사실을 발견했습니다.
	  card-last-interval:: 3.71
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2023-10-15T14:59:15.257Z
	  card-last-reviewed:: 2023-10-11T21:59:15.259Z
	  card-last-score:: 3
	  id:: 65a790ed-1b25-4d34-9db1-f51f90e0a5b6
	  collapsed:: true
	  솔루션스 아키텍트는 읽기 요청과 쓰기 요청을 분리하기 위해 무엇을 해야 합니까?#card #aws-certification
	  ----
	  A) Aurora 데이터베이스에 연속 읽기 캐싱을 활성화합니다.
	  B) 다중 AZ 대기 인스턴스에서 읽기를 수행하도록 애플리케이션을 업데이트합니다.
	  C) 적절한 엔드포인트를 사용하도록 Aurora 복제본을 생성하고 애플리케이션을 수정합니다.
	  D) 두 번째 Aurora 데이터베이스를 생성하고 프라이머리 데이터베이스에 읽기 전용 복제본으로 연결합니다.
		- C) 적절한 엔드포인트를 사용하도록 Aurora 복제본을 생성하고 애플리케이션을 수정합니다.
		- [Aurora 복제본](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Replication.html#Aurora.Replication.Replicas)은 읽기 트래픽을 오프로드하는 방법을 제공합니다. Aurora 복제본은 주 데이터베이스와 동일한 [기본 스토리지](https://docs.aws.amazon.com/AmazonRDS/latest/AuroraUserGuide/Aurora.Overview.StorageReliability.html#Aurora.Overview.Storage)를 공유하므로 일반적으로 지연 시간이 매우 짧습니다. Aurora 복제본에는 자체 엔드포인트가 있으므로 읽기 트래픽을 새 엔드포인트로 보내도록 애플리케이션을 구성해야 합니다.
	- EC2 인스턴스를r4.large에서 r4.4xlarge로 스케일링하는 것을 {{cloze 수직 스케일링}}이라 합니다. #card#aws-certification
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-10-18T04:16:07.953Z
	  card-last-reviewed:: 2023-10-14T04:16:07.954Z
	  card-last-score:: 5
	  id:: 65a790ed-ec88-487f-964f-24fcba7ea31d
	  collapsed:: true
		- 수직 스케일링
	- EC2 인스턴스 수를 스케일링 및 축소하는 오토 스케일링 그룹 (ASG)에서 애플리케이션을 실행하는 것을 {{cloze 수평 스케일링}}라고 합니다. #card#aws-certification
	  card-last-interval:: 3.71
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2023-10-29T01:39:25.912Z
	  card-last-reviewed:: 2023-10-25T08:39:25.912Z
	  card-last-score:: 3
	  id:: 65a790ed-0216-499e-9916-3d07a9dc06df
	  collapsed:: true
		- 수평 스케일링
	- ELB는 {{cloze static DNS Name}}를 제공합니다. #card#aws-certification
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-10-29T08:39:40.429Z
	  card-last-reviewed:: 2023-10-25T08:39:40.429Z
	  card-last-score:: 5
	  id:: 65a790ed-b7a1-41ec-a208-5f4fe2bf7a2e
	  collapsed:: true
	  A. static IPv4
	  B. static DNS Name
	  C. static IPv6
		- B. static DNS Name
		- ELB는 인프라가 변경되더라도 statis endpoint로서 DNS를 제공합니다.
	- 여러분은 ELB 하나에 EC2 인스턴스 10개로 웹 사이트를 실행 중 입니다. 사용자들로부터 페이지 사이를 이동할 때 마다 재인증을 해야하는 것에 대해서 컴플레인이 들어오고 있습니다. 한 개의 EC2 인스턴스가 있는 개발 환경과 컴퓨터에서 웹페이지는 정상적으로 작동하기 때문에 여러분은 혼란에 빠졌습니다. 이 현상의 발생 이유는 무엇일까요? #card#aws-certification
	  card-last-interval:: 3.71
	  card-repeats:: 2
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2023-11-05T01:24:44.962Z
	  card-last-reviewed:: 2023-11-01T08:24:44.963Z
	  card-last-score:: 3
	  id:: 65a790ed-e4bd-4533-a661-ef0bf6ed63bd
	  collapsed:: true
		- ELB에 [Sticky Session](https://docs.aws.amazon.com/ko_kr/elasticloadbalancing/latest/application/sticky-sessions.html)이 활성화되어 있지 않습니다.
	- 여러분은 ALB를 사용하여 EC2 인스턴스에서 호스팅되는 웹 사이트의 트래픽을 분산하고 있고 웹 사이트는 실제로 ALB의 IP 주소인 프라이빗 IPv4 주소에서 오는 트래픽만 인식하는 것으로 나타났습니다. 이때 웹사이트에 연결된 클라이언트의 IP 주소를 얻으려면 어떻게 해야 할까요? #card#aws-certification
	  card-last-interval:: 3.71
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2023-11-04T15:45:47.026Z
	  card-last-reviewed:: 2023-10-31T22:45:47.031Z
	  card-last-score:: 3
	  id:: 65a790ed-eec0-4c65-9d0c-339d07da056c
	  collapsed:: true
		- XFF(X-Forwarded-For) 헤더에서 클라이언트 IP 주소를 가져오도록 백엔드를 수정합니다.
	- 여러분은 ELB 하나와 EC2 인스턴스 집합으로 애플리케이션을 호스팅하였습니다. 일주일 후, 유저들은 애플리케이션이 간헐적으로 작동을 멈춘다고 컴플레인을 하기 시작합니다. 조사 결과, 일부 EC2 인스턴스가 때때로 충돌하는 것을 발견했습니다. 이때 사용자가 충돌하는 EC2 인스턴스에 연결하지 못하도록 보호하려면 어떻게 해야 할까요? #card#aws-certification
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-10-23T07:44:30.136Z
	  card-last-reviewed:: 2023-10-19T07:44:30.137Z
	  card-last-score:: 5
	  id:: 65a790ed-8d4c-4b70-b4c5-1d62561f2d64
	  collapsed:: true
		- ELB Health CHecks를 활성화하여 비정상(충돌)인 EC2 인스턴스로 트래픽을 보내지 않도록 합니다.
	- 여러분은 솔루션 아키텍트로써 초당 수백만 건의 요청을 수신할 고성능, 저지연 시간 애플리케이션을 위한 아키텍처를 설계하려 합니다. 이때 어떤 유형의 ELB를 선택해야 할까요? #card#aws-certification
	  card-last-interval:: 4
	  card-repeats:: 2
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-11-05T05:23:38.830Z
	  card-last-reviewed:: 2023-11-01T05:23:38.831Z
	  card-last-score:: 5
	  id:: 65a790ed-b3ab-4286-a6b9-1ff7f6490026
	  collapsed:: true
	  A. ALB
	  B. CLB
	  C. NLB
		- C. NLB
		- NLB는 ELB 중에서 최고의 성능과 가장 낮은 지연시간을 제공합니다.
	- ALB가 지원하는 프로토콜이 아닌 것은? #card #aws-certification
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2023-11-01T15:00:00.000Z
	  card-last-reviewed:: 2023-11-01T02:28:16.824Z
	  card-last-score:: 1
	  id:: 65a790ed-555b-40ae-8431-600804f39991
	  collapsed:: true
	  A. HTTP
	  B. HTTPS
	  C. TCP
	  D. WebSocket
		- C. TCP
		- ALB는 Layer7에 해당하며 HTTP/HTTPS/Websocket을 제공합니다. TCP는 Layer4를 지원하는 CLB, NLB에 해당합니다.
	- ALB는 일정 기준에 따라 트래픽을 다른 대상 그룹으로 라우팅할 수 있습니다. 이 기준에 해당하지 않는 것은? #card #aws-certification
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2023-11-01T15:00:00.000Z
	  card-last-reviewed:: 2023-11-01T02:25:43.067Z
	  card-last-score:: 1
	  id:: 65a790ed-b3ee-422c-8184-d5f21a627340
	  collapsed:: true
	  A. Client 위치(지역)
	  B. 호스트명
	  C. request URL path
	  D. source IP address
		- A. Client 위치(지역)
		- ALB는 URL 경로, 호스트 이름, HTTP 헤더 및 쿼리 문자열을 기반으로 트래픽을 다른 대상 그룹으로 라우팅할 수 있습니다.
		- forgotten [[2023/10/13]]
	- ALB의 대상 그룹에 등록된 대상이 아닌 것은? #card#aws-certification
	  card-last-interval:: 3.71
	  card-repeats:: 2
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2023-11-05T01:26:22.204Z
	  card-last-reviewed:: 2023-11-01T08:26:22.205Z
	  card-last-score:: 3
	  id:: 65a790ed-f122-4c59-9560-faa493812414
	  collapsed:: true
	  A. EC2
	  B. NLB
	  C. Private IP
	  D. Lamda Function
		- B. NLB
		- NLB의 TG에 ALB에 등록이 가능하지만 ALB의 TG에는 다른 LB를 등록할 수 없다.
	- 여러분은 규정 준수를 위해 최종 사용자에게 고정 IP 주소를 노출하여 규제 기관에서 승인한 안정적인 방화벽 규칙을 작성하도록 하려 합니다. 어떤 유형의 ELB를 선택하시겠습니까? #card #aws-certification
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-10-16T12:54:29.646Z
	  card-last-reviewed:: 2023-10-12T12:54:29.646Z
	  card-last-score:: 5
	  id:: 65a790ed-de11-42a9-b9b1-aa95fca171dd
	  collapsed:: true
	  A. Elastic IP가 연결된 ALB
	  B. NLB
	  C. CLB
		- B. NLB
		- NLB에는 AZ당 고정 IP 주소가 있으며 Elatic IP를 연결할 수 있습니다. ALB, CLB는 static DNS 이름으로 사용합니다.
	- 다음 중 애플리케이션 로드 밸런서 (ALB)에서 사용자 지정 애플리케이션 기반 쿠키를 생성 시 쿠키 이름으로 사용할 수 있는 것은 무엇일까요? #card #aws-certification
	  card-last-interval:: 4.14
	  card-repeats:: 2
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-11-05T08:24:58.174Z
	  card-last-reviewed:: 2023-11-01T05:24:58.174Z
	  card-last-score:: 5
	  id:: 65a790ed-887e-4569-b127-133de878c67a
	  collapsed:: true
	  A. AWSALBAPP
	  B. APPUSERC
	  C. AWSALBTG
	  D. AWSALB
		- B. APPUSERC
		- AWSALBAPP, AWSALBTG, AWSALB 모두 ELB에서 사용하는 쿠키 이름입니다.
	- 여러분은 us-east-1의 EC2 인스턴스 세트에 트래픽을 분산하는 네트워크 로드 밸런서 (NLB)가 있습니다. us-east-1b AZ에 2개의 EC2 인스턴스와 us-east-1e AZ에 5개의 EC2 인스턴스가 있습니다. us-east-1b AZ의 EC2 인스턴스에서 CPU 사용률이 더 높다는 것을 확인했습니다. 추가 조사 후 트래픽이 두 AZ에 균등하게 분산되어 있음을 알 수 있습니다. 이 문제를 어떻게 해결하시겠습니까? #card #aws-certification
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-10-17T10:17:48.396Z
	  card-last-reviewed:: 2023-10-13T10:17:48.397Z
	  card-last-score:: 5
	  id:: 65a790ed-8bee-4eac-919a-9d60fcae1ea3
	  collapsed:: true
	  A. Cross-Zone Load Balancing 활성화
	  B. sticky session 활성화
	  C. ELB health check 활성화
	  D. SSL termination 활성화
		- A. Cross-Zone Load Balancing 활성화
		- Cross-Zone Load Balancing 기능은 모든 AZ의 등록된 모든 EC2 인스턴스에 트래픽을 고르게 분산합니다.
	- 애플리케이션 로드 밸런서 (ALB)와 네트워크 로드 밸런서 (NLB)의 어떤 기능을 통해 하나의 리스너에서 여러 SSL 인증서를 로드할 수 있을까요? #card #aws-certification
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2023-11-01T15:00:00.000Z
	  card-last-reviewed:: 2023-11-01T05:23:26.810Z
	  card-last-score:: 1
	  id:: 65a790ed-4479-4a39-84e8-3755972b0325
	  collapsed:: true
	  A. TLS Termination
	  B. SNI
	  C. SSL Security Policies
	  D. Host Headers
		- B. SNI
		  https://aws.amazon.com/ko/blogs/korea/application-load-balancers-now-support-multiple-tls-certificates-with-smart-selection-using-sni/
		  https://aws.amazon.com/ko/about-aws/whats-new/2019/09/elastic-load-balancing-network-load-balancers-now-supports-multiple-tls-certificates-using-server-name-indication/
	- 여러분은 다음 호스트 이름을 기반으로 트래픽을 3개의 대상 그룹으로 리디렉션하도록 구성된 애플리케이션 로드 밸런서 (ALB)가 있습니다: users.example.com, api.external.example.com 및 checkout.example.com. 이러한 각 호스트 이름에 대해 HTTPS를 구성하려고 합니다. 이 작업을 수행하려면 ALB를 어떻게 구성해야 할까요? #card #aws-certification
	  card-last-interval:: 3.71
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2023-10-18T15:47:36.002Z
	  card-last-reviewed:: 2023-10-14T22:47:36.003Z
	  card-last-score:: 3
	  id:: 65a790ed-7536-462d-be16-98e120ce8811
	  collapsed:: true
	  A. HTTP -> HTTPS 리다이렉션 규칙 사용
	  B. 보안그룹 SSL 인증서 사용
	  C. SNI 사용
		- C. SNI 사용
		- [SNI](https://aws.amazon.com/ko/blogs/korea/application-load-balancers-now-support-multiple-tls-certificates-with-smart-selection-using-sni/)를 사용하면 여러 HTTPS 어플리케이션을 노출할 수 있습니다.
	- 여러분은 원하는 용량과 최대 용량을 모두 3으로 구성한 오토 스케일링 그룹 (ASG)에서 관리하는 EC2 인스턴스 세트에서 호스팅되는 애플리케이션이 있습니다. 또한 CPU 사용률이 60%에 도달하면 ASG를 스케일링하도록 구성된 CloudWatch 경보를 생성했습니다. 여러분의 애플리케이션은 갑자기 엄청난 트래픽을 수신했고 현재 80% CPU 사용률로 실행되고 있습니다. 이제 무슨 일이 일어날까요? #card#aws-certification
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-10-17T10:55:09.256Z
	  card-last-reviewed:: 2023-10-13T10:55:09.256Z
	  card-last-score:: 5
	  id:: 65a790ed-25c1-47cb-a576-ae5f51bf76bd
	  collapsed:: true
	  A. 아무일도 일어나지 않음
	  B. desired capacity 4, maximum capacity 3
	  C. desired capacity 4, maximum capacity 4
		- A. 아무일도 일어나지 않음
		- ASG는 설정한 maximum capacity를 초과할 수 없습니다.
	- 여러분은 애플리케이션 로드 밸런서 (ALB)가 전면에 있는 오토 스케일링 그룹이 있습니다. ALB 상태 확인을 사용하도록 ASG를 구성했는데 하나의 EC2 인스턴스가 비정상으로 보고되었습니다. 이 EC2 인스턴스는 어떻게 될까요? #card #aws-certification
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-10-17T10:19:44.595Z
	  card-last-reviewed:: 2023-10-13T10:19:44.596Z
	  card-last-score:: 5
	  id:: 65a790ed-1f72-442c-b0e5-0d2aa86f761d
	  collapsed:: true
	  A. ASG는 인스턴스를 계속 실행하고 어플리케이션을 재시작
	  B. ASG는 EC2 인스턴스를 분리하고 계속 실행
	  C. ASG는 EC2 인스턴스를 종료
		- C. ASG는 EC2 인스턴스를 종료
		- ALB의 EC2 인스턴스에 대한 healthcheck가 실패하면 비정상으로 표시하고 ASG는 기존 인스턴스를 종료하고 새 인스턴스를 실행합니다. ASG는 인스턴스를 제어하지만 어플리케이션은 제어하지 않습니다.
	- 여러분의 상사는 애플리케이션이 데이터베이스에 대해 수행하는 분당 요청 수를 기반으로 오토 스케일링 그룹을 스케일링하도록 요청했습니다. 어떻게 해야 할까요? #card #aws-certification
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-11-04T22:47:19.192Z
	  card-last-reviewed:: 2023-10-31T22:47:19.194Z
	  card-last-score:: 5
	  id:: 65a790ed-c945-4e28-a97f-65e80432b3c3
	  collapsed:: true
	  A. CloudWatch 사용자 지정 지표를 생성한 다음 이 지표에 대한 CloudWatch 경보를 생성하여 ASG를 스케일링
	  B. 정중하게 불가능하다고 답변
	  C. 세부 모니터링을 활성화한 다음 CloudWatch 경보를 생성하여 ASG를 스케일링
		- A. CloudWatch 사용자 지정 지표를 생성한 다음 이 지표에 대한 CloudWatch 경보를 생성하여 ASG를 스케일링
		- app -> database 분당 요청 수는 CloudWatch 지표에 없기 때문에 사용자 지정 지표를 생성해야 합니다.
	- 오토 스케일링 그룹 (ASG)에서 관리하는 EC2 인스턴스 플릿이 호스팅하는 웹 애플리케이션이 있습니다. 여러분은 애플리케이션 로드 밸런서 (ALB)를 통해 이 애플리케이션을 노출하고 있습니다. EC2 인스턴스와 ALB는 모두 다음 CIDR 192.168.0.0/18을 사용하여 VPC에 배포됩니다. ALB만 포트 80에서 액세스할 수 있도록 EC2 인스턴스의 보안 그룹을 구성하려면 어떻게 해야 할까요? #card #aws-certification
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2023-11-01T15:00:00.000Z
	  card-last-reviewed:: 2023-11-01T08:25:32.013Z
	  card-last-score:: 1
	  id:: 65a790ed-618d-412c-9e9c-c2375a7d451f
	  collapsed:: true
	  A. 포트 80, 0.0.0.0/0 소스 인바운드 규칙 추가
	  B. 포트 80, 192.168.0.0./18 소스 인바운드 규칙 추가
	  C. 포트 80, ALB SG 소스 인바운드 규칙 추가
	  D. ALB에서 SSL 인증서 로드
		- C. 포트 80, ALB SG 소스 인바운드 규칙 추가
		- 강력한 보안정책은 특정 보안그룹을 소스 인바운드로 사용하는 것입니다.
	- eu-west-2 리전에서 실행 중인 오토 스케일링 Configured가 있으며 eu-west-2a 및 eu-west-2b 가용 영역 두 개를 생성하도록 구성되어 있습니다. 현재 eu-west-2a에서 EC2 인스턴스 3개와 eu-west-2b에서 EC2 인스턴스 4개가 실행 중입니다. ASG가 곧 축소됩니다. 어떤 EC2 인스턴스가 종료될까요? #card #aws-certification
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-10-29T08:39:00.868Z
	  card-last-reviewed:: 2023-10-25T08:39:00.869Z
	  card-last-score:: 5
	  id:: 65a790ed-2b46-465f-a800-64d3ef1045b9
	  collapsed:: true
	  A. 임의의 eu-wast-2a 인스턴스
	  B. 가장 오래된 LT 버전의 eu-wast-2a 인스턴스
	  C. 임의의 eu-wast-2b 인스턴스
	  D. 가장 오래된 LT 버전의 eu-wast-2b 인스턴스
		- B. 가장 오래된 LT 버전의 eu-wast-2a 인스턴스
		- ASG는 많은 인스턴스가 있는 AZ 내에서 가장 오래된 LT 버전의 인스턴스를 먼저 종료합니다.
	- 애플리케이션은 애플리케이션 로드 밸런서 (ALB) 및 오토 스케일링 그룹과 함께 배포됩니다. 현재 ASG를 수동으로 스케일링하고 EC2 인스턴스에 대한 평균 연결 수가 약 1000개인지 확인하는 스케일링 정책을 정의하려고 합니다. 어떤 스케일링 정책을 사용해야 할까요? #card #aws-certification
	  card-last-interval:: 4
	  card-repeats:: 2
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-11-05T02:04:53.401Z
	  card-last-reviewed:: 2023-11-01T02:04:53.402Z
	  card-last-score:: 5
	  id:: 65a790ed-ec4e-411c-b8da-f54789457760
	  collapsed:: true
	  A. 단순 스케일링 정책
	  B. 단계 스케일링 정책
	  C. 대상 추적 정책
	  D. 예약 스케일링 정책
		- C. 대상 추적 정책
		- EC2 인스턴스에 대한 평균적인 지표를 기준으로 사용하는 정책은 [대상 추적정책](https://docs.aws.amazon.com/ko_kr/autoscaling/ec2/userguide/as-scaling-target-tracking.html)입니다.
	- 오토 스케일링 그룹 (ASG)가 관리하는 EC2 인스턴스에서 호스팅되는 애플리케이션이 갑자기 트래픽 급증을 수신하여 ASG가 스케일링되고 새 EC2 인스턴스가 시작되었습니다. 트래픽은 지속적으로 증가하지만 ASG는 새 EC2 인스턴스를 즉시 시작하지 않고 5분 후에 시작합니다. 이 동작이 가능한 원인은 무엇일까요? #card #aws-certification
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-10-16T12:54:07.740Z
	  card-last-reviewed:: 2023-10-12T12:54:07.741Z
	  card-last-score:: 5
	  id:: 65a790ed-d064-489b-9c25-c2c20068ba82
	  collapsed:: true
	  ----
	  A. 쿨다운 기간
	  B. 수명주기 후크
	  C. 대상추적 정책
	  D. Launch Template
		- A. 쿨다운 기간
		- ASG는 스케일링 직후 쿨다운 기간이 있으며 이 기간 동안에는 EC2 인스턴스를 시작하거나 종료하지 않으며 메트릭이 안정화될 시간을 제공합니다.
	- 여러분의 회사에는 지난 달에 임의의 EC2 인스턴스가 갑자기 충돌한 오토 스케일링 그룹 (ASG)이 있습니다. ASG가 비정상 EC2 인스턴스를 종료하고 새 EC2 인스턴스로 교체할 때, EC2 인스턴스가 충돌하는 이유를 알아낼 수 없었습니다. 문제를 해결하고 비정상 인스턴스가 ASG에 의해 종료되는 것을 방지하기 위해 어떻게 해야할까요? #card #aws-certification
	  card-last-interval:: 3.71
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2023-10-17T03:21:37.094Z
	  card-last-reviewed:: 2023-10-13T10:21:37.094Z
	  card-last-score:: 3
	  id:: 65a790ed-fde9-47c3-8455-e31dea81cef7
	  collapsed:: true
	  ----
	  A. 종료하기 전에 Lambda를 사용하여 EC2 인스턴스 일시 중지
	  B. ASG 라이프사이클 훅을 사용하여 종료 중 상태의 EC2 인스턴스를 일시 중지
	  C. CloudWatch Logs를 사용하여 문제 해결
		- B. ASG 라이프사이클 훅을 사용하여 종료 중 상태의 EC2 인스턴스를 일시 중지
		- [EC2 Auto Scaling 라이프사이클 훅](https://docs.aws.amazon.com/ko_kr/autoscaling/ec2/userguide/lifecycle-hooks.html)을 사용하면 인스턴스가 종료되기 전에 특정 작업을 추가할 수 있습니다.
		- https://brunch.co.kr/@alden/65
	- A company collects data for temperature, humidity, and atmospheric pressure in cities across multiple continents. The average volume of data that the company collects from each site daily is 500 GB. Each site has a high-speed Internet connection.
	  card-last-interval:: 3.71
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2023-11-04T18:59:49.177Z
	  card-last-reviewed:: 2023-11-01T01:59:49.178Z
	  card-last-score:: 3
	  id:: 65a790ed-6ae0-4aeb-b8eb-5edbcbb26732
	  collapsed:: true
	  The company wants to aggregate the data from all these global sites as quickly as possible in a single Amazon S3 bucket. The solution must minimize operational complexity.
	  Which solution meets these requirements? #card#aws-certification
	  ----
	  A. Turn on S3 Transfer Acceleration on the destination S3 bucket. Use multipart uploads to directly upload site data to the destination S3 bucket.
	  B. Upload the data from each site to an S3 bucket in the closest Region. Use S3 Cross-Region Replication to copy objects to the destination S3 bucket. Then remove the data from the origin S3 bucket.
	  C. Schedule AWS Snowball Edge Storage Optimized device jobs daily to transfer data from each site to the closest Region. Use S3 Cross-Region Replication to copy objects to the destination S3 bucket.
	  D. Upload the data from each site to an Amazon EC2 instance in the closest Region. Store the data in an Amazon Elastic Block Store (Amazon EBS) volume. At regular intervals, take an EBS snapshot and copy it to the Region that contains the destination S3 bucket. Restore the EBS volume in that Region.
		- A. Turn on S3 Transfer Acceleration on the destination S3 bucket. Use multipart uploads to directly upload site data to the destination S3 bucket.
	- A company needs the ability to analyze the log files of its proprietary application. The logs are stored in JSON format in an Amazon S3 bucket. Queries will be simple and will run on-demand. A solutions architect needs to perform the analysis with minimal changes to the existing architecture.
	  card-last-interval:: 3.72
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-10-20T23:30:02.242Z
	  card-last-reviewed:: 2023-10-17T06:30:02.242Z
	  card-last-score:: 5
	  id:: 65a790ed-3e39-45b1-9276-636bea63ba91
	  collapsed:: true
	  What should the solutions architect do to meet these requirements with the LEAST amount of operational overhead? #card#aws-certification
	  A. Use Amazon Redshift to load all the content into one place and run the SQL queries as needed.
	  B. Use Amazon CloudWatch Logs to store the logs. Run SQL queries as needed from the Amazon CloudWatch console.
	  C. Use Amazon Athena directly with Amazon S3 to run the queries as needed.
	  D. Use AWS Glue to catalog the logs. Use a transient Apache Spark cluster on Amazon EMR to run the SQL queries as needed.
		- C. Use Amazon Athena directly with Amazon S3 to run the queries as needed.
	- A company uses AWS Organizations to manage multiple AWS accounts for different departments. The management account has an Amazon S3 bucket that contains project reports. The company wants to limit access to this S3 bucket to only users of accounts within the organization in AWS Organizations.
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2023-11-09T15:00:00.000Z
	  card-last-reviewed:: 2023-11-08T22:38:59.022Z
	  card-last-score:: 1
	  id:: 65a790ed-884a-44f5-a01c-fd0de871d9e1
	  collapsed:: true
	  Which solution meets these requirements with the LEAST amount of operational overhead? #card#aws-certification
	  A. Add the aws PrincipalOrgID global condition key with a reference to the organization ID to the S3 bucket policy.
	  B. Create an organizational unit (OU) for each department. Add the aws:PrincipalOrgPaths global condition key to the S3 bucket policy.
	  C. Use AWS CloudTrail to monitor the CreateAccount, InviteAccountToOrganization, LeaveOrganization, and RemoveAccountFromOrganization events. Update the S3 bucket policy accordingly.
	  D. Tag each user that needs access to the S3 bucket. Add the aws:PrincipalTag global condition key to the S3 bucket policy.
		- A. Add the aws PrincipalOrgID global condition key with a reference to the organization ID to the S3 bucket policy.
	- An application runs on an Amazon EC2 instance in a VPC. The application processes logs that are stored in an Amazon S3 bucket. The EC2 instance needs to access the S3 bucket without connectivity to the internet.
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-10-18T04:14:53.926Z
	  card-last-reviewed:: 2023-10-14T04:14:53.928Z
	  card-last-score:: 5
	  id:: 65a790ed-758d-4a5b-8bf7-d4135bf636c7
	  collapsed:: true
	  Which solution will provide private network connectivity to Amazon S3? #card #aws-certification
	  A. Create a gateway VPC endpoint to the S3 bucket.
	  B. Stream the logs to Amazon CloudWatch Logs. Export the logs to the S3 bucket.
	  C. Create an instance profile on Amazon EC2 to allow S3 access.
	  D. Create an Amazon API Gateway API with a private link to access the S3 endpoint.
		- A. Create a gateway VPC endpoint to the S3 bucket.
	- A company is hosting a web application on AWS using a single Amazon EC2 instance that stores user-uploaded documents in an Amazon EBS volume. For better scalability and availability, the company duplicated the architecture and created a second EC2 instance and EBS volume in another Availability Zone, placing both behind an Application Load Balancer. After completing this change, users reported that, each time they refreshed the website, they could see one subset of their documents or the other, but never all of the documents at the same time.
	  card-last-interval:: 3.92
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2023-10-21T04:31:23.070Z
	  card-last-reviewed:: 2023-10-17T06:31:23.070Z
	  card-last-score:: 3
	  id:: 65a790ed-e73b-42cd-b0d1-99c2f28075ae
	  collapsed:: true
	  What should a solutions architect propose to ensure users see all of their documents at once? #card #aws-certification
	  A. Copy the data so both EBS volumes contain all the documents
	  B. Configure the Application Load Balancer to direct a user to the server with the documents
	  C. Copy the data from both EBS volumes to Amazon EFS. Modify the application to save new documents to Amazon EFS
	  D. Configure the Application Load Balancer to send the request to both servers. Return each document from the correct server
		- C. Copy the data from both EBS volumes to Amazon EFS. Modify the application to save new documents to Amazon EFS
	- A company uses NFS to store large video files in on-premises network attached storage. Each video file ranges in size from 1 MB to 500 GB. The total storage is 70 TB and is no longer growing. The company decides to migrate the video files to Amazon S3. The company must migrate the video files as soon as possible while using the least possible network bandwidth.
	  card-last-interval:: 3.71
	  card-repeats:: 2
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2023-11-04T22:23:14.257Z
	  card-last-reviewed:: 2023-11-01T05:23:14.258Z
	  card-last-score:: 3
	  id:: 65a790ed-8295-4491-8b8c-db6699bcafde
	  collapsed:: true
	  Which solution will meet these requirements? #card #aws-certification
	  A. Create an S3 bucket. Create an IAM role that has permissions to write to the S3 bucket. Use the AWS CLI to copy all files locally to the S3 bucket.
	  B. Create an AWS Snowball Edge job. Receive a Snowball Edge device on premises. Use the Snowball Edge client to transfer data to the device. Return the device so that AWS can import the data into Amazon S3.
	  C. Deploy an S3 File Gateway on premises. Create a public service endpoint to connect to the S3 File Gateway. Create an S3 bucket. Create a new NFS file share on the S3 File Gateway. Point the new file share to the S3 bucket. Transfer the data from the existing NFS file share to the S3 File Gateway.
	  D. Set up an AWS Direct Connect connection between the on-premises network and AWS. Deploy an S3 File Gateway on premises. Create a public virtual interface (VIF) to connect to the S3 File Gateway. Create an S3 bucket. Create a new NFS file share on the S3 File Gateway. Point the new file share to the S3 bucket. Transfer the data from the existing NFS file share to the S3 File Gateway.
		- B. Create an AWS Snowball Edge job. Receive a Snowball Edge device on premises. Use the Snowball Edge client to transfer data to the device. Return the device so that AWS can import the data into Amazon S3.
	- A company has an application that ingests incoming messages. Dozens of other applications and microservices then quickly consume these messages. The number of messages varies drastically and sometimes increases suddenly to 100,000 each second. The company wants to decouple the solution and increase scalability.
	  card-last-score:: 5
	  card-repeats:: 1
	  card-next-schedule:: 2023-10-29T08:40:57.055Z
	  card-last-interval:: 4
	  id:: 65a790ed-89bf-4a4f-a134-10680f895018
	  card-ease-factor:: 2.6
	  card-last-reviewed:: 2023-10-25T08:40:57.056Z
	  Which solution meets these requirements? #card#aws-certification
	  A. Persist the messages to Amazon Kinesis Data Analytics. Configure the consumer applications to read and process the messages.
	  B. Deploy the ingestion application on Amazon EC2 instances in an Auto Scaling group to scale the number of EC2 instances based on CPU metrics.
	  C. Write the messages to Amazon Kinesis Data Streams with a single shard. Use an AWS Lambda function to preprocess messages and store them in Amazon DynamoDB. Configure the consumer applications to read from DynamoDB to process the messages.
	  D. Publish the messages to an Amazon Simple Notification Service (Amazon SNS) topic with multiple Amazon Simple Queue Service (Amazon SOS) subscriptions. Configure the consumer applications to process the messages from the queues.
		- D. Publish the messages to an Amazon Simple Notification Service (Amazon SNS) topic with multiple Amazon Simple Queue Service (Amazon SOS) subscriptions. Configure the consumer applications to process the messages from the queues.
	- A company is migrating a distributed application to AWS. The application serves variable workloads. The legacy platform consists of a primary server that coordinates jobs across multiple compute nodes. The company wants to modernize the application with a solution that maximizes resiliency and scalability.
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2023-11-01T15:00:00.000Z
	  card-last-reviewed:: 2023-11-01T08:24:04.324Z
	  card-last-score:: 1
	  id:: 65a790ed-c629-414e-8587-fa0281ab4299
	  collapsed:: true
	  How should a solutions architect design the architecture to meet these requirements? #card #aws-certification
	  A. Configure an Amazon Simple Queue Service (Amazon SQS) queue as a destination for the jobs. Implement the compute nodes with Amazon EC2 instances that are managed in an Auto Scaling group. Configure EC2 Auto Scaling to use scheduled scaling.
	  B. Configure an Amazon Simple Queue Service (Amazon SQS) queue as a destination for the jobs. Implement the compute nodes with Amazon EC2 instances that are managed in an Auto Scaling group. Configure EC2 Auto Scaling based on the size of the queue.
	  C. Implement the primary server and the compute nodes with Amazon EC2 instances that are managed in an Auto Scaling group. Configure AWS CloudTrail as a destination for the jobs. Configure EC2 Auto Scaling based on the load on the primary server.
	  D. Implement the primary server and the compute nodes with Amazon EC2 instances that are managed in an Auto Scaling group. Configure Amazon EventBridge (Amazon CloudWatch Events) as a destination for the jobs. Configure EC2 Auto Scaling based on the load on the compute nodes.
		- B. Configure an Amazon Simple Queue Service (Amazon SQS) queue as a destination for the jobs. Implement the compute nodes with Amazon EC2 instances that are managed in an Auto Scaling group. Configure EC2 Auto Scaling based on the size of the queue.
	- A company is running an SMB file server in its data center. The file server stores large files that are accessed frequently for the first few days after the files are created. After 7 days the files are rarely accessed.
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2023-10-18T22:49:14.008Z
	  card-last-reviewed:: 2023-10-14T22:49:14.009Z
	  card-last-score:: 5
	  id:: 65a790ed-4cb7-4abb-9176-3541b29fe9d7
	  collapsed:: true
	  The total data size is increasing and is close to the company's total storage capacity. A solutions architect must increase the company's available storage space without losing low-latency access to the most recently accessed files. The solutions architect must also provide file lifecycle management to avoid future storage issues.
	  Which solution will meet these requirements? #card #aws-certification
	  A. Use AWS DataSync to copy data that is older than 7 days from the SMB file server to AWS.
	  B. Create an Amazon S3 File Gateway to extend the company's storage space. Create an S3 Lifecycle policy to transition the data to S3 Glacier Deep Archive after 7 days.
	  C. Create an Amazon FSx for Windows File Server file system to extend the company's storage space.
	  D. Install a utility on each user's computer to access Amazon S3. Create an S3 Lifecycle policy to transition the data to S3 Glacier Flexible Retrieval after 7 days.
		- B. Create an Amazon S3 File Gateway to extend the company's storage space. Create an S3 Lifecycle policy to transition the data to S3 Glacier Deep Archive after 7 days.
	- A company is building an ecommerce web application on AWS. The application sends information about new orders to an Amazon API Gateway REST API to process. The company wants to ensure that orders are processed in the order that they are received.
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2023-10-25T15:00:00.000Z
	  card-last-reviewed:: 2023-10-25T08:43:11.184Z
	  card-last-score:: 1
	  id:: 65a790ed-da56-4290-99eb-b35a8809a0d5
	  collapsed:: true
	  Which solution will meet these requirements? #card #aws-certification
	  A. Use an API Gateway integration to publish a message to an Amazon Simple Notification Service (Amazon SNS) topic when the application receives an order. Subscribe an AWS Lambda function to the topic to perform processing.
	  B. Use an API Gateway integration to send a message to an Amazon Simple Queue Service (Amazon SQS) FIFO queue when the application receives an order. Configure the SQS FIFO queue to invoke an AWS Lambda function for processing.
	  C. Use an API Gateway authorizer to block any requests while the application processes an order.
	  D. Use an API Gateway integration to send a message to an Amazon Simple Queue Service (Amazon SQS) standard queue when the application receives an order. Configure the SQS standard queue to invoke an AWS Lambda function for processing.
		- B. Use an API Gateway integration to send a message to an Amazon Simple Queue Service (Amazon SQS) FIFO queue when the application receives an order. Configure the SQS FIFO queue to invoke an AWS Lambda function for processing.