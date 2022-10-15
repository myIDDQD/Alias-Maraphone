import Foundation

struct Rules {
    
    static let mainTitle = "Скажи Иначе"
    static let main = "В игру играют командами из одной или более человек. Задача каждого игрока команды - объяснить как можно больше слов отображаемых на экране за ограниченное время другими словами, используя, например, синонимы, антонимы и подсказки так, чтобы члены вашей команды смогли отгадать как можно больше слов прежде чем истечет время. Чем больше слов отгадала команда, тем больше она заработала балов."
    
    static let explanationTitle = "Объяснение Слов"
    static let explanation = """
При объяснении слов нельзя упоминать какую-либо часть слова. Например, слово 'кофеварка' нельзы объяснить как 'аппарат для варки кофе'. Правильный способ объяснения - 'аппаратдля варки крепкого напитка, который обычно пьют за завтраком'. Можно использовать синонимы - то есть вы можете сказать 'кипятить', но не 'варить'.
Вы можете использовать антонимы. Слово "большой" может быть объяснено как "антоним слова мягкий".
Отгаданное слово должно точно совпадать. Объясняющий игрок помогает отгадывающим найти правильную форму слова. Если слово состоит из двух частей и кто-то отгадывает первую часть, вы потом можете использовать эту часть слова в дальнейшем объяснении.
"""
    
    static let scoreTitle = "Начисление Очков"
    static let score = """
За каждое отгаданное слово команда получает одно очко, а за пропущенное или отгаданное с нарушением - штрафуется.
Eсли объясняющий игрок допускает ошибку - например, называет часть слова, указанного в карточке, слово не будет принято и команда теряет одно очко. Поэтому каждая команда должна внимательно слушать объяснения других команд. Если слово слишком сложное, его можно пропустить.
Победителем считается команда, набравшая необходимое для победы количество очков. Если на момент завершения победного раунда у команд одинаковое количество очков - проводится дополнительный раунд (овертайм).
"""
    
    static let controlTitle = "Управление Игрой"
    static let control = """
 На экране игры есть три кнопки:
 "Правильно" - нажать, если команда правильно угадала слово.
 "Пропустить" - если слово очень сложное, и вы хотите его пропустить.
 "Сбросить" - если во время объяснения была допущенна ошибка.
 """
}
