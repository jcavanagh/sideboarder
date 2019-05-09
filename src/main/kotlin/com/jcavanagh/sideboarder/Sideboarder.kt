package com.jcavanagh.sideboarder

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class Sideboarder

fun main(args: Array<String>) {
	runApplication<Sideboarder>(*args)
}
