node default {

  file { '/tmp/hello.txt':
    content => "hello world!",
  }  
	
}
