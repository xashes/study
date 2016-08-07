word_frequency = dict()

sentence = 'Chicka, chicka, boom, boom'

for word in sentence.split(', '):
    word_frequency[word.lower()] = word_frequency.get(word.lower(), 0) + 1

print(word_frequency)
