#!/bin/bash
yum update -y
amazon-linux-extras install nginx1 -y
systemctl enable nginx
systemctl start nginx

cat > /usr/share/nginx/html/index.html <<'HTML'
<!DOCTYPE html>
<html>
<head>
  <title>Terraform AWS ALB + ASG Project</title>
  <style>
    body {
      margin: 0;
      font-family: Arial, sans-serif;
      background: linear-gradient(135deg, #0f172a, #1e3a8a);
      color: white;
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      text-align: center;
    }

    .card {
      background: rgba(255, 255, 255, 0.1);
      padding: 40px;
      border-radius: 16px;
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3);
      max-width: 700px;
    }

    h1 {
      font-size: 36px;
      margin-bottom: 16px;
    }

    p {
      font-size: 18px;
      line-height: 1.6;
      margin-bottom: 12px;
    }

    .badge {
      display: inline-block;
      margin-top: 20px;
      padding: 10px 18px;
      border-radius: 999px;
      background: #22c55e;
      color: #052e16;
      font-weight: bold;
    }
  </style>
</head>
<body>
  <div class="card">
    <h1>Terraform AWS ALB + Auto Scaling Project</h1>
    <p>This application is deployed on EC2 instances managed by an Auto Scaling Group.</p>
    <p>Traffic is distributed through an AWS Application Load Balancer.</p>
    <p>Infrastructure was provisioned using modular Terraform and validated through GitHub Actions CI.</p>
    <div class="badge">Deployment Successful</div>
  </div>
</body>
</html>
HTML