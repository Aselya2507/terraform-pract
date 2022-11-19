resource "aws_iam_user" "andrew" {
  name = "andrew"
}

resource "aws_iam_user_login_profile" "andrew" {
  user    = aws_iam_user.andrew.name
  password_length = 46
}





resource "aws_iam_group" "devops" {
  name = "devops"
}

resource "aws_iam_user_group_membership" "devops-members" {
  user = aws_iam_user.andrew.name

  groups = [
    aws_iam_group.devops.name
  ]
}