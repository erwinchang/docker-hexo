## Docker App Create

### Hexo Docker


build image hexo-user
```
make build
```

docker run
```
make start
```

### 使用方式

1-1 download github blog source
第一次下載github source內部node_modules是空的，因此需要重新建立

```
git clone git@xxx/git-blog.git
hexo init blog-tmp
mv blog-tmp/node_modules git-blog
npm install
```

1-2 start web service

```
cd git-blog
hexo generate
hexo server -p 8000
```
