# Cách cài đặt zsh và zsh-autosuggestions trên Ubuntu

### Cài đặt zsh
    
Cài đặt trực tiếp zsh thông qua apt-get như sau:

    $ sudo apt-get install zsh -y

Kiểm tra xem đã cài đặt thành công chưa:
    
    $ which zsh
    /usr/bin/zsh

### Cài đặt oh-my-zsh

    $ sudo curl -L http://install.ohmyz.sh | sh

chạy zsh để bắt đầu bật và dùng, để set nó làm mặc định, bạn chạy lệnh sau:

    chsh -s $(which zsh)

### Cài đặt zsh-autosuggestions
Cài đặt plugin zsh-autosuggestions, giúp tự động suggetions các lệnh mà mình đã dùng:

    $ git clone git://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

kích hoạt plugin bằng lệnh sau: 

    plugins=(zsh-autosuggestions)

Cách giải quyết đó là bạn thêm dòng sau vào cuối file ~/.zshrc để kích hoạt plugin zsh-autosuggtestions lên:

    ~ vi ~/.zshrc
    ...
    # Example aliases
    # alias zshconfig="mate ~/.zshrc"
    # alias ohmyzsh="mate ~/.oh-my-zsh"

    source ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 


