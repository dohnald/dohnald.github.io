public:: false

- SysOps Administrator – Associate
	- https://d1.awsstatic.com/ko_KR/training-and-certification/docs-sysops-associate/AWS-Certified-SysOps-Administrator-Associate_Sample-Questions.pdf
	- Amazon EC2 인스턴스에서 웹 애플리케이션을 호스트하는 회사가 있습니다. 사용자들은 이 웹 애플리케이션이 가끔 응답하지 않는다고 보고합니다. Amazon CloudWatch 지표에는 이 시간 동안 CPU 사용률이 100%라고 나타납니다. SysOps 관리자는 이 문제를 모니터링하기 위한 솔루션을 구현해야 합니다. 이 요구 사항을 충족하는 솔루션은 무엇입니까?#card #aws-certification 
	  id:: 6602ee12-4365-40a8-95ae-92feacd2bc34
	  collapsed:: true
	  card-last-interval:: 3.58
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2024-04-01T01:21:34.899Z
	  card-last-reviewed:: 2024-03-28T12:21:34.900Z
	  card-last-score:: 5
	  ---
	  A. EC2 인스턴스에 대한 AWS CloudTrail 이벤트를 모니터링하는 CloudWatch 경보를 만든다.  
	  B. EC2 인스턴스 CPU 사용률에 대한 CloudWatch 지표를 모니터링하는 CloudWatch 경보를 만든다.  
	  C. Amazon Simple Notification Service (Amazon SNS) 주제를 만들어 EC2 인스턴스 CPU 사용률에 대한 CloudWatch 지표를 모니터링한다.  
	  D. Amazon Inspector 를 사용해 CPU 사용률의 편차를 감지하여 EC2 인스턴스에 대해 반복적인 평가 확인을 만든다.
		- B. EC2 인스턴스 CPU 사용률에 대한 CloudWatch 지표를 모니터링하는 CloudWatch 경보를 만든다.
		- Amazon CloudWatch 는 애플리케이션을 모니터링할 수 있도록 데이터와 실행 가능한 통찰력을 제공합니다. Amazon EC2 는 CloudWatch 로 지표를 보냅니다. CPUUtilization 지표는 인스턴스에서 현재 사용 중인 할당된 EC2 컴퓨팅 유닛(ECU)의 비율(%)을 나타냅니다. 인스턴스 중 하나에 대한 CPUUtilization 을 모니터링하는 [CloudWatch 경보를 생성](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-cloudwatch-createalarm.html)할 수 있습니다. 예를 들어 5 분 동안 평균 CPUUtilization 이 75%보다 크면 이메일 알림을 받을 수 있습니다.
	- 회사에 Amazon ElastiCache for Memcached 를 사용해 쿼리 응답을 캐시하여 지연 시간을 개선하는 애플리케이션이 있습니다. 그러나 이 애플리케이션의 사용자들은 응답 시간이 느리다고 보고합니다. SysOps 관리자는 Memcached 제거에 대한 Amazon CloudWatch 지표가 높다는 것을 알았습니다. 이 문제를 해결하려면 SysOps 관리자가 취해야 하는 조치는 무엇입니까? (2 개를 선택하십시오.)#card  #aws-certification
	  card-last-interval:: 3.58
	  card-repeats:: 1
	  card-ease-factor:: 2.6
	  card-next-schedule:: 2024-03-30T04:36:37.975Z
	  card-last-reviewed:: 2024-03-26T15:36:37.975Z
	  card-last-score:: 5
	  id:: 6602ee12-0b6a-4726-967e-73d990492bb1
	  ---
	  A. ElastiCache for Memcached 의 내용을 비운다.  
	  B. ConnectionOverhead 파라미터 값을 높인다.  
	  C. 클러스터 내 노드 수를 늘린다.  
	  D. 클러스터 내 노드 크기를 늘린다.  
	  E. 클러스터 내 노드 수를 줄인다.
		- C. 클러스터 내 노드 수를 늘린다.
		- D. 클러스터 내 노드 크기를 늘린다.
		- Amazon ElastiCache for Memcached 의 [제거 지표](https://docs.aws.amazon.com/AmazonElastiCache/latest/mem-ug/CacheMetrics.WhichShouldIMonitor.html#metrics-evictions)는 새 항목을 위한 공간을 제공하기 위해 캐시가 제거한 만료되지 않은 항목 수를 나타냅니다. 클러스터와 관련하여 제거가 발생하는 경우 이는 보통 추가 데이터를 수용하도록 수직적 확장(메모리 공간이 더 큰 노드 사용) 또는 수평적 확장(클러스터에 노드 추가)을 해야 한다는 신호입니다.
	- 회사에서 AWS Lambda 함수가 회사 계정의 VPC 내 리소스에 액세스할 수 있도록 해야 합니다. Lambda 함수는 인터넷을 통해서만 액세스할 수 있는 서드 파티 API 에 액세스해야 합니다.
	  id:: 6602ee12-d950-4233-a13a-818a5aee4445
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2024-04-06T23:05:40.797Z
	  card-last-reviewed:: 2024-04-02T23:05:40.799Z
	  card-last-score:: 3
	  이러한 요구 사항을 충족하려면 SysOps 관리자가 수행해야 하는 작업은 무엇입니까?#card #aws-certification   
	  ---
	  A. Lambda 함수에 탄력적 IP 주소를 연결하고 VPC 의 인터넷 게이트웨이에 대한 경로를 구성한다.  
	  B. VPC 의 가상 프라이빗 게이트웨이에 대한 경로가 있는 프라이빗 서브넷에 Lambda 함수를 연결한다.  
	  C. VPC 의 인터넷 게이트웨이에 대한 경로가 있는 퍼블릭 서브넷에 Lambda 함수를 연결한다.  
	  D. VPC 의 퍼블릭 서브넷에 배포된 NAT 게이트웨이에 대한 경로가 있는 프라이빗 서브넷에 Lambda 함수를 연결한다.
		- D. VPC 의 퍼블릭 서브넷에 배포된 NAT 게이트웨이에 대한 경로가 있는 프라이빗 서브넷에 Lambda 함수를 연결한다.
		- 기본적으로 AWS Lambda는 AWS 서비스 및 인터넷에 액세스할 수 있는 안전한 VPC 에서 함수를 실행합니다. Lambda 는 계정의 기본 VPC 에 연결되지 않은 이 VPC 를 소유합니다. [Lambda 함수를 계정의 VPC에 연결](https://docs.aws.amazon.com/lambda/latest/dg/configuration-vpc.html#vpc-internet)하여 프라이빗 리소스에 액세스할 때, VPC 가 액세스를 제공하지 않는 한 이 함수는 인터넷에 액세스할 수 없습니다. 프라이빗 서브넷에서 인터넷에 액세스하려면 네트워크 주소 변환(NAT)이 필요합니다. 함수에 인터넷에 대한 액세스 권한을 부여하려면 퍼블릭 서브넷의 NAT 게이트웨이로 아웃바운드 트래픽을 라우팅합니다.
	- 회사에서 대규모 Amazon EC2 인스턴스 집합에서 애플리케이션을 실행하여 금융 거래를 처리합니다. EC2 인스턴스는 Amazon Elastic File System (Amazon EFS) 파일 시스템을 사용하여 데이터를 공유합니다. 이 회사는 애플리케이션을 새 가용 영역에 배포하고자 하며 새 가용 영역에 새 서브넷과 탑재 대상을 만들었습니다. SysOps 관리자가 새 서브넷에 있는 새 EC2 인스턴스를 시작하지만 이 EC2 인스턴스는 파일 시스템을 탑재할 수 없습니다. 이 문제의 원인은 무엇입니까?#card  #aws-certification
	  id:: 6602ee12-5a55-4ae8-950e-57c6e673c15c
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2024-03-28T15:00:00.000Z
	  card-last-reviewed:: 2024-03-28T12:22:23.499Z
	  card-last-score:: 1
	  ---
	  A. EFS 탑재 대상이 프라이빗 서브넷에 생성되었다.  
	  B. EC2 인스턴스와 연결된 IAM 역할이 efs:MountFileSystem 작업을 허용하지 않는다.  
	  C. 라우팅 테이블이 새 가용 영역의 Amazon EFS 용 VPC 엔드포인트로 트래픽을 라우팅하도록 구성되어 있지 않다.  
	  D. 탑재 대상의 보안 그룹이 EC2 인스턴스에서 사용하는 보안 그룹에서의 인바운드 NFS 연결을 허용하지 않는다.
		- D. 탑재 대상의 보안 그룹이 EC2 인스턴스에서 사용하는 보안 그룹에서의 인바운드 NFS 연결을 허용하지 않는다.
		- [탑재 대상과 연결](https://docs.aws.amazon.com/efs/latest/ug/accessing-fs-create-security-groups.html)한 보안 그룹은 인스턴스에서 사용하는 보안 그룹에서 NFS 포트의 TCP 프로토콜에 대한 인바운드 액세스를 허용해야 합니다.
	- AWS Organizations 를 사용하여 많은 AWS 계정을 생성 및 관리하는 회사가 있습니다. 이 회사는 각 계정에 새 IAM 역할을 배포하고자 합니다. 각 조직의 계정에 새 역할을 배포하려면 SysOps 관리자는 어떤 조치를 취해야 합니까?#card  #aws-certification
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2024-03-27T15:00:00.000Z
	  card-last-reviewed:: 2024-03-26T15:37:28.534Z
	  card-last-score:: 1
	  id:: 6602ee12-8e01-475d-9bed-dce9cfa47e90
	  ---
	  A. 조직에 서비스 제어 정책(SCP)을 만들어 각 계정에 새 IAM 역할을 추가한다.  
	  B. 새 IAM 역할을 만드는 템플릿을 사용해 AWS CloudFormation 변경 세트를 조직에 배포한다.  
	  C. AWS CloudFormation StackSets 를 사용해 템플릿을 각 계정에 배포하여 새 IAM 역할을 만든다.  
	  D. AWS Config 를 사용해 조직 규칙을 만들어 각 계정에 새 IAM 역할을 추가한다.
		- C. AWS CloudFormation StackSets 를 사용해 템플릿을 각 계정에 배포하여 새 IAM 역할을 만든다.
		- AWS CloudFormation [StackSets](https://aws.amazon.com/blogs/aws/new-use-aws-cloudformation-stacksets-for-multiple-accounts-in-an-aws-organization/)를 사용하면 작업 하나로 여러 계정 및 AWS 리전에 걸쳐 스택을 생성, 업데이트 또는 삭제할 수 있습니다. AWS Organizations 관리 계정의 사용자는 조직 또는 특정 조직 단위(OU)의 계정에 스택 인스턴스를 배포하는 스택 세트를 서비스 관리형 권한으로 생성할 수 있습니다. 예를 들어 AWS CloudFormation StackSets 를 사용하여 중앙 집중식 IAM 역할을 조직의 모든 계정에 배포할 수 있습니다.
	- Amazon EC2 인스턴스에서 여러 프로덕션 워크로드를 실행하는 회사가 있습니다. SysOps 관리자는 한 프로덕션 EC2 인스턴스가 시스템 상태 확인에 실패했다는 것을 알았습니다. SysOps 관리자는 이 인스턴스를 수동으로 복구했습니다. SysOps 관리자는 EC2 인스턴스의 복구 작업을 자동화하고 시스템 상태 확인이 실패할 때마다 알림을 받고자 합니다. 회사의 프로덕션 EC2 인스턴스 모두에서 세부 모니터링이 활성화되어 있습니다.
	  id:: 6602ee12-6148-44d1-80a3-62016339ef6e
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2024-04-02T15:00:00.000Z
	  card-last-reviewed:: 2024-04-02T09:57:12.088Z
	  card-last-score:: 1
	  다음 중 이러한 요구 사항을 충족하는 가장 운영 효율적인 솔루션은 무엇입니까?#card #aws-certification   
	  ---
	  A. 각 프로덕션 EC2 인스턴스에 대해 상태 확인 실패: 시스템에 대한 Amazon CloudWatch 경보를 만든다. EC2 인스턴스를 복구하도록 경보 작업을 설정한다. Amazon Simple Notification Service(Amazon SNS) 주제에 게시되도록 경보 알림을 구성한다.  
	  B. 각 프로덕션 EC2 인스턴스에서 1 분마다 하트비트 알림을 중앙 모니터링 서버로 보내 시스템 상태를 모니터링하는 스크립트를 만든다. EC2 인스턴스가 하트비트를 보내지 못할 경우 모니터링 서버에서 스크립트를 실행해 EC2 인스턴스를 중지했다가 시작하고 알림을 Amazon Simple Notification Service(Amazon SNS) 주제에 게시한다.  
	  C. 각 프로덕션 EC2 인스턴스에서 cron 작업을 통해 네트워크 ping 을 고가용성 엔드포인트로 보내는 스크립트를 만든다. 스크립트에서 네트워크 응답 시간 초과를 감지하면 명령을 호출하여 해당 EC2 인스턴스를 재부팅한다.  
	  D. 각 프로덕션 EC2 인스턴스에서 로그를 수집하여 Amazon CloudWatch Logs 의 로그 그룹으로 로그를 보내도록 Amazon CloudWatch 에이전트를 구성한다. 오류를 추적하는 지표 필터를 기반으로 하는 CloudWatch 경보를 만든다. AWS Lambda 함수를 호출하여 해당 EC2 인스턴스를 재부팅하고 알림 이메일을 보내도록 경보를 구성한다.
		- A. 각 프로덕션 EC2 인스턴스에 대해 상태 확인 실패: 시스템에 대한 Amazon CloudWatch 경보를 만든다. EC2 인스턴스를 복구하도록 경보 작업을 설정한다. Amazon Simple Notification Service(Amazon SNS) 주제에 게시되도록 경보 알림을 구성한다.
		- Amazon CloudWatch 경보 작업을 사용하여 Amazon EC2 인스턴스를 자동으로 중지, 종료, 재부팅 또는 [복구](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/UsingAlarmActions.html#AddingRecoverActions)하는 경보를 만들 수 있습니다. 예를 들어 물리적 호스트의 하드웨어 또는 소프트웨어 문제, 네트워크 연결 중단 또는 시스템 전력 손실로 인해 인스턴스가 손상될 경우, 복구 작업을 자동으로 시작하여 인스턴스를 새 하드웨어로 마이그레이션할 수 있습니다. 복구 작업에 대한 알림을 수신하도록 Amazon Simple Notification Service (Amazon SNS) 주제에 게시될 메시지를 구성할 수도 있습니다.
	- AWS Organizations 를 사용하여 계정을 관리하는 회사가 있습니다. 프로덕션 계정에 대해 SysOps 관리자는 현재 및 향후 Amazon EC2 인스턴스와 Amazon Elastic File System (Amazon EFS) 파일 시스템에 대해 모든 데이터가 매일 백업되도록 해야 합니다. 백업은 30 일간 보존해야 합니다.
	  id:: 6602ee12-946c-49e9-b597-efd54a17b9b2
	  card-last-interval:: -1
	  card-repeats:: 1
	  card-ease-factor:: 2.5
	  card-next-schedule:: 2024-04-03T15:00:00.000Z
	  card-last-reviewed:: 2024-04-03T05:28:36.848Z
	  card-last-score:: 1
	  최소의 노력으로 이러한 요구 사항을 충족하는 솔루션은 무엇입니까?#card #aws-certification   
	  ---
	  A. AWS Backup 에 백업 계획을 만든다. 해당 계정에서 실행 중인 모든 기존 EC2 및 EFS 리소스를 선택하여 리소스 ID 별로 리소스를 할당한다. 새 리소스를 포함하도록 매일 백업 계획을 편집한다. 30 일 후 백업을 만료하는 수명 주기 정책을 사용해 매일 실행되도록 백업 계획을 예약한다.  
	  B. AWS Backup에 백업 계획을 만든다. 태그별로 리소스를 할당한다. 모든 기존 EC2 및 EFS 리소스가 올바르게 태그 지정되어 있는지 확인한다. 올바른 태그가 적용되어 있지 않으면 인스턴스 및 파일 시스템 생성을 방지하는 서비스 제어 정책(SCP)을 프로덕션 계정 OU 에 적용한다. 30 일 후 백업을 만료하는 수명 주기 정책을 사용해 매일 실행되도록 백업 계획을 예약한다.  
	  C. Amazon Data Lifecycle Manager (Amazon DLM) 에 수명 주기 정책을 만든다. 해당 계정에서 실행 중인 모든 기존 EC2 및 EFS 리소스를 선택하여 리소스 ID 별로 모든 리소스를 할당한다. 새 리소스를 포함하도록 매일 수명 주기 정책을 편집한다. 보존 기간을 30 일로 하여 매일 스냅샷을 생성하도록 수명 주기 정책을 예약한다.  
	  D. Amazon Data Lifecycle Manager (Amazon DLM) 에 수명 주기 정책을 만든다. 태그별로 모든 리소스를 할당한다. 모든 기존 EC2 및 EFS 리소스가 올바르게 태그 지정되어 있는지 확인한다. 올바른 태그가 적용되어 있지 않으면 리소스 생성을 방지하는 서비스 제어 정책(SCP)을 적용한다. 보존 기간을 30 일로 하여 매일 스냅샷을 생성하도록 수명 주기 정책을 예약한다.
		- B. AWS Backup에 백업 계획을 만든다. 태그별로 리소스를 할당한다. 모든 기존 EC2 및 EFS 리소스가 올바르게 태그 지정되어 있는지 확인한다. 올바른 태그가 적용되어 있지 않으면 인스턴스 및 파일 시스템 생성을 방지하는 서비스 제어 정책(SCP)을 프로덕션 계정 OU 에 적용한다. 30 일 후 백업을 만료하는 수명 주기 정책을 사용해 매일 실행되도록 백업 계획을 예약한다.
		- AWS Backup은 AWS 서비스 전반에 걸친 데이터 백업을 쉽게 중앙 집중화하고 자동화할 수 있는 종합 관리형 백업 서비스입니다. [태그를 사용하여 리소스를 할당](https://docs.aws.amazon.com/aws-backup/latest/devguide/assigning-resources.html)하는 것은 여러 리소스를 백업하는 간단하고 확장 가능한 방법입니다. 지정한 태그가 포함된 리소스는 백업 계획에 할당됩니다. [태그 정책](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_tag-policies.html#what-are-tag-policies)은 조직의 계정에 있는 리소스에 대해 태그를 표준화하고 적용할 수 있도록 돕는 AWS Organizations 의 일종의 서비스 제어 정책(SCP)입니다.
	- AWS CloudTrail을 사용하는 회사가 있습니다. 이 회사는 시스템 운영 관리자가 로그 파일이 삭제 또는 변경되지 않았는지 손쉽게 확인할 수 있도록 하고자 합니다.
	  id:: 6602ee12-32b6-4250-9bac-af3168841718
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2024-04-06T23:13:11.623Z
	  card-last-reviewed:: 2024-04-02T23:13:11.624Z
	  card-last-score:: 3
	  이 요구 사항을 충족하려면 SysOps 관리자가 수행해야 하는 작업은 무엇입니까?#card #aws-certification   
	  ---
	  A. 로그 파일을 암호화할 때 사용되는 AWS Key Management Service (AWS KMS) 키에 대한 액세스 권한을 관리자에게 부여한다.  
	  B. 추적이 생성되거나 업데이트될 때 CloudTrail 로그 파일 무결성 검증을 활성화한다.  
	  C. 로그 파일을 저장하는 버킷에 대해 Amazon S3 서버 액세스 로깅을 켠다.  
	  D. 로그 파일을 다른 버킷에 복제하도록 S3 버킷을 구성한다.
		- B. 추적이 생성되거나 업데이트될 때 CloudTrail 로그 파일 무결성 검증을 활성화한다.
		- AWS CloudTrail 로그 파일의 무결성을 검증하고 CloudTrail이 Amazon S3 버킷에 로그 파일을 전송한 후 해당 파일이 변경, 수정 또는 삭제되지 않았는지 감지할 수 있습니다. 검증된 로그 파일을 사용하면 로그 파일 자체가 변경되지 않았거나 특정 사용자 자격 증명이 특정 API 활동을 수행했음을 확실하게 주장할 수 있습니다. CloudTrail 로그 파일 무결성 검증 프로세스는 로그 파일이 삭제되거나 변경되었는지 여부도 알려 줍니다. 특정 기간 동안 계정으로 로그 파일이 전송되었거나 전송되지 않았음을 확실하게 주장할 수 있는 통찰력을 얻게 됩니다. 추적을 생성하거나 업데이트할 때 CloudTrail 콘솔에서 [로그 파일 무결성 검증을 활성화](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-log-file-validation-enabling.html)할 수 있습니다.
	- Amazon EC2 인스턴스에서 사용자 지정 데이터베이스를 실행하는 회사가 있습니다. 이 데이터베이스는 데이터를 Amazon Elastic Block Store (Amazon EBS) 볼륨에 저장합니다. SysOps 관리자는 EBS 볼륨에 대해 백업 전략을 설정해야 합니다.
	  id:: 6602ee12-f35f-47fd-b44a-704b14cd4205
	  이 요구 사항을 충족하려면 SysOps 관리자가 수행해야 하는 작업은 무엇입니까?#card #aws-certification   
	  ---
	  A. EBS 볼륨의 스냅샷을 생성하는 작업으로 VolumeIdleTime 지표에 대한 Amazon CloudWatch 경보를 만든다.  
	  B. AWS Data Pipeline 에 파이프라인을 만들어 반복되는 일정으로 EBS 볼륨의 스냅샷을 생성한다.  
	  C. Amazon Data Lifecycle Manager (Amazon DLM) 정책을 만들어 반복되는 일정으로 EBS 볼륨의 스냅샷을 생성한다.  
	  D. AWS DataSync 작업을 만들어 반복되는 일정으로 EBS 볼륨의 스냅샷을 생성한다.
		- C. Amazon Data Lifecycle Manager (Amazon DLM) 정책을 만들어 반복되는 일정으로 EBS 볼륨의 스냅샷을 생성한다.
		- Amazon Data Lifecycle Manager (Amazon DLM)를 사용하여 Amazon Elastic Block Store (Amazon EBS) 스냅샷의 생성, 보존 및 삭제를 자동화할 수 있습니다. 특정 태그를 포함하는 [수명 주기 정책을 만들어](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/snapshot-lifecycle.html) 지정된 일정 과 지정된 보존 기간 동안 EBS 볼륨을 백업할 수 있습니다. 예를 들어 매일 EBS 볼륨의 스냅샷을 생성하고 이 스냅샷을 30 일간 보관할 수 있습니다.
	- 회사에서 내부 부서에 대해 많은 Amazon EC2 인스턴스를 실행합니다. 이 회사는 부서별로 기존 AWS 리소스 비용을 추적해야 합니다.
	  card-last-interval:: 4
	  card-repeats:: 1
	  card-ease-factor:: 2.36
	  card-next-schedule:: 2024-03-30T15:36:02.856Z
	  card-last-reviewed:: 2024-03-26T15:36:02.858Z
	  card-last-score:: 3
	  id:: 6602ee12-d8be-4c61-97ba-f34c999ee63c
	  이 요구 사항을 충족하려면 SysOps 관리자가 수행해야 하는 작업은 무엇입니까?#card #aws-certification   
	  ---
	  A. 계정에 대해 AWS 에서 생성되는 비용 할당 태그를 모두 활성화한다.  
	  B. Tag Editor 를 통해 인스턴스에 사용자 정의 태그를 적용한다. 비용 할당을 위해 이러한 태그를 활성화한다.  
	  C. 반복되는 일정으로 EC2 사용량에 대해 AWS 요금 계산기를 실행하도록 AWS Lambda 함수를 예약한다.  
	  D. AWS Trusted Advisor 대시보드를 사용하여 EC2 비용 보고서를 내보낸다.
		- B. Tag Editor 를 통해 인스턴스에 사용자 정의 태그를 적용한다. 비용 할당을 위해 이러한 태그를 활성화한다.
		- [사용자 정의 태그](https://aws.amazon.com/blogs/aws-cost-management/cost-allocation-blog-series-2-aws-generated-vs-user-defined-cost-allocation-tag/)는 사용자가 수동으로 정의, 생성해 리소스에 적용한 태그입니다. Tag Editor를 사용하여 모든 리소스를 검색하고 리소스에 태그를 적용할 수 있습니다. 비용 할당 태그를 사용하여 AWS 비용을 자세히 추적할 수 있습니다. 비용 할당 태그를 활성화하면, AWS 는 이러한 태그를 이용해 리소스 비용을 정리하기 때문에 사용자는 쉽게 AWS 비용을 분류하고 추적할 수 있습니다. 예를 들어 부서별로 비용을 추적하려면 부서 이름과 값이 같은 "Department"라는 이름의 태그를 사용할 수 있습니다.