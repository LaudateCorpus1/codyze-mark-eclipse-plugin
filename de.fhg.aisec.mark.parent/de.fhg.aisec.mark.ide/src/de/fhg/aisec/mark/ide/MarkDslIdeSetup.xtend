/*
 * generated by Xtext 2.14.0
 */
package de.fhg.aisec.mark.ide

import com.google.inject.Guice
import de.fhg.aisec.mark.MarkDslRuntimeModule
import de.fhg.aisec.mark.MarkDslStandaloneSetup
import org.eclipse.xtext.util.Modules2

/**
 * Initialization support for running Xtext languages as language servers.
 */
class MarkDslIdeSetup extends MarkDslStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new MarkDslRuntimeModule, new MarkDslIdeModule))
	}
	
}