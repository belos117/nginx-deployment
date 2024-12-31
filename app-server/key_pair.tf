resource "aws_key_pair" "tf_key" {
  key_name   = var.key_pair_name
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDUg6EErF30CVSdB3kDVuN1q8gnBKn4wagFarqXstLYEEXVT/rRtYE2Qnj8VjVGVPEuXxkSOADTVy/hF6kv+2gZncWwQzvMM+YA9a+ftlok8+RRW5/NO07zfWlerUKPyBs4pJ8HYbabb8wPlrRTRihf/Rt4SbWLoc9lE7ynHPpgpGFfAPR9neoeD3J/vNS1+zIu+jw4o45FheDdRkLR5P0We9beuOQ+d70n1ZFvXmDVJhQTbUxR8AYwbU7t+CBackG326Dl6qw790O9bfr2FvgGFKUA8jfBdP/f9sU6BrKAllRt/jpC0VtJev0jzxfs04P/LTeTBZ0B3Ivenubg2enWdj+kaKQ7yiXJ+93JwvMVt3MCogRSiO0KYOBOFo+qKx811wUllpjA1AN8FyWbRJTsIebzPlpiluE/qaaTIBVG6pQIXRdIFtJ1MTx8NkwplStuj6LsJhl1OkpO8iAWZUkgYxRYRWfKtu5CsTcORvCZKO/8f+zJZB3cIeqUQ7sQNRq0iOtpNOneBrw6m2myy484w4wRxtqoeVsrp8kK0Mm5vqtVyM5UE6jqO1wEEXHYlmi/YS7ZUNhHXUPNW3xuprTWgnrwAWz9tb6B/+K31TzTS1CyzvHcNnvW2T9OHkpVkBkcL8t+qNiVkJ8MIWXg+yexuvCyqNhjieAIUGW6w/0iVQ== mykey"
}