class Vigenere
      attr_reader :key
      ALPHA_BASE ||= "A".ord
      ALPHABET_SIZE ||= 26
      private_constant :ALPHABET_SIZE, :ALPHA_BASE

      def initialize(key_string)
      	  @key = string_to_int_array key_string
      end

      def encrypt(plaintext)
      	  plaintext_int_array = string_to_int_array plaintext
	  encrypted_int_array = []
	  plaintext_int_array.each_with_index do | int, i|
	  	encrypted_int = (int + @key[i % @key.size]) % ALPHABET_SIZE + ALPHA_BASE
	  	encrypted_int_array << encrypted_int
	  end
	  int_array_to_string encrypted_int_array
      end

      def decrypt(ciphertext)
      	  ciphertext_int_array = string_to_int_array ciphertext
	  decrypted_int_array = []
	  ciphertext_int_array.each_with_index do | int, i |
	  	decrypted_int = (int - @key[i % @key.size]) % ALPHABET_SIZE + ALPHA_BASE
		decrypted_int_array << decrypted_int
	  end
	  int_array_to_string decrypted_int_array
      end

      private

      def string_to_int_array(string)
      	  string.chars.map { |char| char.ord }
      end

      def int_array_to_string(int_array)
      	  int_array.map { |int| int.chr }.join
      end
end