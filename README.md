# Onboard

- SwiftUI Animation Onboard
    - анимированный onboard
    - с 1000 бликами SE: 55mb, simulator 13: 42mb

- оптимизация
    - три объекта 11mb )))
    - без .drawingGroup() меньше памяти, но зато очень лагает
    
    - .offset(on ? pointsOnCircle() : .zero)
    - с 1000 бликами
        - SE: off - 34mb, on - 47mb (скачек до 52mb)
        - simulator 13: off - 29, on - 37mb (скачек до 37mb)
    - с 500 бликами (визуально смотриться не хуже)
        - SE: off - 24mb, on - 36mb (скачек до 41mb)
        
"Модификатор .drawingGroup() сообщает SwiftUI, что он должен визуализировать содержимое представления в виде внеэкранного изображения, прежде чем вернуть его на экран как единый визуализированный вывод, что значительно быстрее. За кулисами это работает на Metal, фреймворке Apple для работы непосредственно с графическим процессором для чрезвычайно быстрой графики."

- + память + загрузка GPU + расход батареи
- но зато графика божественная

<img src="https://github.com/ihValery/AnimationForOnboard/blob/main/AnimationForOnboard.gif?raw=true"></a>
