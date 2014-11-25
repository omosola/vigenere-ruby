Ruby Implementation of Vigenere Cipher
=================

http://en.wikipedia.org/wiki/Vigen%C3%A8re_cipher

Usage:

vigenere = Vigenere.new "LEMON"
plaintext = "TESTSTRING"
ciphertext = vigenere.encrypt plaintext
decrypted_text = vigenere.decrypt ciphertext

Note:

Current version built to handle only A-Z characters. Could be easily fixed to handle other types of characters, but traditional Vigenere ciphers used A-Z characters primarily.
