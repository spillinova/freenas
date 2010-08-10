Index: boot/beastie.4th
===================================================================
--- sys/boot/forth/beastie.4th	(revision 208655)
+++ sys/boot/forth/beastie.4th	(working copy)
@@ -109,6 +109,23 @@
 	     at-xy ."     |____/|_____/|_____/"
 ;
 
+: freenas-logo ( x y -- )
+	2dup at-xy ."       ______" 1+
+	2dup at-xy ."      |  ____| __ ___  ___ " 1+
+	2dup at-xy ."      | |__ | '__/ _ \/ _ \" 1+
+	2dup at-xy ."      |  __|| | |  __/  __/" 1+
+	2dup at-xy ."      | |   | | |    |    |" 1+
+	2dup at-xy ."      |_|   |_|  \___|\___|" 1+
+	2dup at-xy ."       _     _   __    _____" 1+
+	2dup at-xy ."      | \   | | /  \  / ____|" 1+
+	2dup at-xy ."      |  \  | |/ /\ \|  (__" 1+
+	2dup at-xy ."      | |\\ | | |__| |\___ \" 1+
+	2dup at-xy ."      | | \\| |  __  |____) |" 1+
+	2dup at-xy ."      | |  \  | |  | |      |" 1+
+	2dup at-xy ."      |_|   \_|_|  |_|_____/" 1+ 1+
+	     at-xy ." The free network attached storage"
+;
+
 : print-logo ( x y -- )
 	s" loader_logo" getenv
 	dup -1 = if
@@ -131,6 +148,11 @@
 		beastie-logo
 		exit
 	then
+	2dup s" freenas" compare-insensitive 0= if
+		2drop
+		freenas-logo
+		exit
+	then
 	2dup s" none" compare-insensitive 0= if
 		2drop
 		\ no logo
@@ -178,11 +200,11 @@
 	clear
 	46 4 print-logo
 	42 20 2 2 box
-	13 6 at-xy ." Welcome to FreeBSD!"
-	printmenuitem ."  Boot FreeBSD [default]" bootkey !
+	13 6 at-xy ." Welcome to FreeNAS!"
+	printmenuitem ."  Boot FreeNAS [default]" bootkey !
 	s" arch-i386" environment? if
 		drop
-		printmenuitem ."  Boot FreeBSD with ACPI " bootacpikey !
+		printmenuitem ."  Boot FreeNAS with ACPI " bootacpikey !
 		acpienabled? if
 			." disabled"
 		else
@@ -191,9 +213,9 @@
 	else
 		-2 bootacpikey !
 	then
-	printmenuitem ."  Boot FreeBSD in Safe Mode" bootsafekey !
-	printmenuitem ."  Boot FreeBSD in single user mode" bootsinglekey !
-	printmenuitem ."  Boot FreeBSD with verbose logging" bootverbosekey !
+	printmenuitem ."  Boot FreeNAS in Safe Mode" bootsafekey !
+	printmenuitem ."  Boot FreeNAS in single user mode" bootsinglekey !
+	printmenuitem ."  Boot FreeNAS with verbose logging" bootverbosekey !
 	printmenuitem ."  Escape to loader prompt" escapekey !
 	printmenuitem ."  Reboot" rebootkey !
 	menuX @ 20 at-xy
