# testovoe

A new Flutter project.

Приложение не идеальное, можно сделать гораздо лучше. Не сделал лучше потому, что хотел продемонстрировать навыки в общем, а эти детали заняли бы время

Из того, что можно улучшить:
1) Создать класс с цветами приложения. Если бы это был ThemeData от Material, то там можно было бы установить их в параметры. Так же можно было поступить со стилями текста. Можно было создать extension для более удобного доступа к стилям и цветам
2) Роутам можно было дать имя и сохранить в классе. Далее использовать `pushNamed()`
3) Мною намерено были где-то упущены некоторые аспекты чистой архитектуры (слой domain, entities, interactors, repository interfaces) в угоду скорости. Так же не вижу смылса доводить до идеала тестовое задание - оно нужно для быстрой оценки навыков. В коммерческом коде это, конечно будет 