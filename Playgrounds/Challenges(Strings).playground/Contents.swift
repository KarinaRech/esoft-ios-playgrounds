/*
  1. Are the letters unique?

  Напишите функцию, которая принимает String в качестве параметра и возвращает true, если строка содержит только уникальные символы.

  Hint #1: Попробуйте работать со срокой input как с массивом, который содержит элементы типа Characters - [Characters]().
  Hint #2: Можно использовать массив из временных значений, чтобы хранить элементы, которые были проверенны, но это не обязательно.
  Hint #3: Set похожи на массивы, за исключением того, что они не могут содержать дубликатов.
  Hint #4: Можно создавать Set из массиовов и массивы из Set. Обе струткуры содержат свойство count.
 */

func challenge1(input: String) -> Bool {
  let uniqueChars = Set(input)
  return uniqueChars.count == input.count
}

assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed")

/*
  2. Count the characters?

  Напишите функцию, которая принимает String и возвращает количество вхождений символа в переданную строку.

  Tip: Если задача кажется слишком легкой, попробуйте решить ее без for-in цикла
  Hint #1: Помните, что String и Character - разные типы.
  Hint #2: Не бойтесь решить задачу в лоб перебором, используя for-in цикл.
  Hint #3: Можно решить эту задачу, используя reduce().
  Hint #4: Можно решить эту задачу, используя NSCountedSet.
 */

func challenge2(input: String, count: Character) -> Int {
  var occurances = 0
  input.forEach { char in
    if char == count {
      occurances = occurances + 1
    }
  }
  return occurances
}

assert(challenge2(input: "The rain in Spain", count: "a") == 2, "Challenge 2 failed")
assert(challenge2(input: "Mississippi", count: "i") == 4, "Challenge 2 failed")

/*
 3. Reverse the words in a string

 Напишите функцию, которая возвращает строку, где каждое слово отражено, но с сохранением изначального порядка слов, без использования for-in циклов.

 Hint #1: Начните с конвертации строки в массив, разделив слова в строке по пробелам.
 Hint #2: Можно отразить символы в строке используюя reversed().
 Hint #3: Можно создать строку из массива Character.
 Hint #4: for-in цикл можно заменить методом map().
 Hint #5: Как только у вас будет массив отраженных строк, можно преобразовать его в одну строку, используя joined().
*/

func challenge3(input: String) -> String {
  return input.split(separator: " ").map { word in
    return String(word.reversed())
  }.joined(separator: " ")
}

assert(challenge3(input: "Swift Coding Challenge") == "tfiwS gnidoC egnellahC", "Challenge 3 failed")
assert(challenge3(input: "The quick brown fox") == "ehT kciuq nworb xof", "Challenge 3 failed")

