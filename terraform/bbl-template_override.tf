

resource "aws_lb_listener" "concourse_lb_8443" {
  load_balancer_arn = "${aws_lb.concourse_lb.arn}"
  protocol          = "TCP"
  port              = 8443

  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.concourse_lb_8443.arn}"
  }
}

resource "aws_lb_target_group" "concourse_lb_8443" {
  name     = "${var.short_env_id}-concourse8443"
  port     = 8443
  protocol = "TCP"
  vpc_id   = "${local.vpc_id}"
}


resource "aws_lb_listener" "concourse_lb_8844" {
  load_balancer_arn = "${aws_lb.concourse_lb.arn}"
  protocol          = "TCP"
  port              = 8844

  default_action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.concourse_lb_8844.arn}"
  }
}

resource "aws_lb_target_group" "concourse_lb_8844" {
  name     = "${var.short_env_id}-concourse8844"
  port     = 8844
  protocol = "TCP"
  vpc_id   = "${local.vpc_id}"
}



output "concourse_lb_target_groups" {
  value = ["${aws_lb_target_group.concourse_lb_80.name}", 
  "${aws_lb_target_group.concourse_lb_443.name}", 
  "${aws_lb_target_group.concourse_lb_2222.name}",
  "${aws_lb_target_group.concourse_lb_8443.name}",
  "${aws_lb_target_group.concourse_lb_8844.name}"]
}

output "concourse_lb_name" {
  value = "${aws_lb.concourse_lb.name}"
}

output "concourse_lb_url" {
  value = "${aws_lb.concourse_lb.dns_name}"
}
