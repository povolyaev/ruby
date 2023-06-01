grades = [4, 5, 4, 4, 3, 2, 4, 5, 4, 4, 4, 4, 5, 4] # Пример входных данных

counts = Hash.new(0) # Создаем новый пустой хеш

grades.each { |grade| counts[grade] += 1 } # Считаем количество каждой оценки в массиве

File.open("output.txt", "w") do |file| # Открываем файл output.txt для записи
  counts.each do |grade, count| # Проходимся по хешу counts и записываем его в файл
    file.write("#{grade}: #{count}\n")
  end
end