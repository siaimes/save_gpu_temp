# save_gpu_temp
每10秒保存一次gpu温度，用于分析是否由于gpu温度过高导致宕机

# 使用方法

```
git clone https://github.com/siaimes/save_gpu_temp.git
cd save_gpu_temp
chmod +x save_gpu_temp.sh
sudo ./save_gpu_temp.sh
```
# 后台运行

```
nohup sudo ./save_gpu_temp.sh &
```

记住返回的pid，不再需要的时候可使用以下命令结束该进程
```
sudo kill -9 pid
```
