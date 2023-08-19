本项目是模拟烟花爆炸效果的动画程序，烟花可以爆炸变为指定的mesh形状

./execution:<br>
项目可执行文件和运行时依赖文件<br>
命令行使用说明：> .\renderer.exe [spawn_rate] [emitter_num] [obj_file_list]<br>
后三项分别为，每个发射器的粒子每秒发射数量，发射器数量，模型文件列表<br>
它们默认的参数为：spawn_rate=20000, emitter_num=5, obj_file_list = "robot.obj snow.obj tiger.obj"<br>
模型文件路径为"runtime/model/"，自定义的模型可放于此处<br>
使用实例：<br>
> .\renderer.exe<br>
> .\renderer.exe 1000<br>
> .\renderer.exe 1000 10<br>
> .\renderer.exe 1000 10 unit-box.obj snow.obj

3d场景内漫游请使用鼠标左键以及"WASD"键<br>
帧率显示在窗口标题栏

效果：<br>
![2023-08-19 11-31-55 00_00_00-00_00_30](https://github.com/DarkSleeper/Animation-Particle-Release/assets/48831197/8e0fd92e-c0e9-494a-a609-0380c88f481e)
