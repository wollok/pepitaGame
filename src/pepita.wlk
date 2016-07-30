object pepita {
	var energia = 100
	
	method energia() = energia
	
	method volar(kms) {
		energia -= kms + 10
	}
	
	method comer(gramos) {
		energia += 4 * gramos
	}
}