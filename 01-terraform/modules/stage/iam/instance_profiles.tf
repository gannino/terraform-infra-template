resource "aws_iam_instance_profile" "instance_profile" {
    name = "iamprofile-${var.role_name}-${var.vpc_env}"
    roles = [ "${aws_iam_role.role.name}" ]
}

output "instance_profile_id" {
  value = "${aws_iam_instance_profile.instance_profile.id}"
} 

output "instance_profile_arn" {
  value = "${aws_iam_instance_profile.instance_profile.arn}"
} 

output "instance_profile_path" {
  value = "${aws_iam_instance_profile.instance_profile.path}"
} 
