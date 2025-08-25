# CloudLite Free Tier Infrastructure

## 🎯 Project Achievement
Built a complete, production-ready AWS infrastructure using only Free Tier services, demonstrating enterprise-grade cloud architecture while maintaining $0 operational costs.

## 🏗️ Architecture Components

### **Core Infrastructure**
- **EC2 t2.micro** with **20GB root volume** (critical breakthrough for disk space)
- **Custom VPC** with public subnets and Internet Gateway
- **Security Groups** restricting HTTP/HTTPS and SSH access
- **IAM Roles** with least privilege access policies

### **Application & DevOps**
- **Docker containerization** with multi-stage builds
- **Amazon ECR** for secure container registry (500MB Free Tier)
- **GitHub Actions CI/CD** for automated deployment pipeline
- **Infrastructure as Code** with complete Terraform automation

### **Monitoring & Compliance**
- **CloudWatch Agent** streaming system logs (`/var/log/messages`)
- **CPU Utilization Alarm** triggering at >70% for 10 minutes
- **Custom Metrics** for memory and disk usage monitoring
- **CloudTrail Audit Logging** for API call compliance
- **AWS Budget Alerts** for cost control at $1 threshold

### **Storage & Database**
- **S3 Bucket** with 7-day lifecycle management for cost optimization
- **SQLite Database** hosted on EC2 (avoiding RDS costs)
- **Automated Cleanup** policies preventing storage cost accumulation

## 💰 Strategic Cost-Saving Decisions

1. **Avoided Application Load Balancer** - Used EC2 public IP ($18/month saved)
2. **Skipped NAT Gateway** - Public subnets only ($45/month saved)
3. **No RDS Database** - SQLite on EC2 instance ($15/month saved)
4. **No Route 53** - Direct IP access (DNS costs avoided)
5. **Lifecycle Policies** - Auto-delete S3 objects after 7 days
6. **20GB Root Volume** - Solved CloudWatch agent installation failures
7. **Free Tier Optimization** - All services strategically within limits

**Total Monthly Savings: $78+ while maintaining enterprise capabilities**

## 🔒 Security Architecture

- **VPC Network Isolation** with custom security group configurations
- **IAM Roles** implementing least privilege access principles
- **SSH Access Restriction** limited to source IP addresses only
- **Container Security** with ECR private repository
- **Audit Trail** comprehensive logging via CloudTrail
- **Encrypted Communication** HTTPS for all web traffic

## 📊 Monitoring & Observability

- **Real-time Log Streaming** from EC2 to CloudWatch Logs
- **Proactive Alerting** CPU utilization monitoring with thresholds
- **Custom Metrics Collection** memory and disk usage visibility
- **API Audit Logging** complete CloudTrail integration
- **Cost Monitoring** budget alerts preventing unexpected charges
- **Performance Metrics** comprehensive infrastructure visibility

## 🚀 Technical Breakthrough

The **20GB root volume** was the critical architectural decision that eliminated the original 8GB disk space constraints, enabling:

✅ **CloudWatch Agent Success** - Installation completed without failures  
✅ **Complete Monitoring Stack** - Logs, metrics, and alerting operational  
✅ **Production Readiness** - Enterprise-grade infrastructure capabilities  
✅ **Assignment Fulfillment** - All requirements achieved within Free Tier limits

## 🏆 Professional Skills Demonstrated

This CloudLite infrastructure showcases enterprise-level AWS capabilities:

1. **Cloud Architecture Design** - Secure, scalable, cost-optimized solutions
2. **DevOps Implementation** - Infrastructure as Code and CI/CD automation
3. **Security Best Practices** - IAM roles, VPC isolation, audit compliance
4. **Monitoring & Observability** - Comprehensive logging and alerting systems
5. **Cost Optimization** - Strategic Free Tier utilization maximizing value
6. **Problem Solving** - Root volume breakthrough solving critical constraints

## 📈 Results Summary

**Infrastructure Deployment:** ✅ Complete  
**Application Hosting:** ✅ Containerized React/Express app operational  
**CI/CD Pipeline:** ✅ GitHub Actions automated deployment working  
**Security & Compliance:** ✅ IAM roles, VPC isolation, audit logging active  
**Monitoring & Alerting:** ✅ CloudWatch logs, metrics, and CPU alarms functional  
**Cost Management:** ✅ All services within Free Tier, $1 budget alerts configured  
**Operational Cost:** ✅ **$0.00** while maintaining enterprise-grade capabilities
