package com.mike.kmp_tutorial

interface Platform {
    val name: String
}

expect fun getPlatform(): Platform