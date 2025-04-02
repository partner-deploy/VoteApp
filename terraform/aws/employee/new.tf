
resource "aws_iam_user" "new-employee" {
  name = "employee-new"
}

resource "aws_iam_policy" "new_employee_policy" {
  name = "a_new_employee_policy"
  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": ["*"],
      "Resource": ["*"]
    }
  ]
}
EOF
}

resource "aws_iam_user_policy_attachment" "attachment" {
  user       = aws_iam_user.new-employee.name
  policy_arn = aws_iam_policy.new_employee_policy.arn
}
