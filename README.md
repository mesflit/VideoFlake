# VideoFlake
Videoda kullandığım flake dosyası.

# İndirme
Depoyu Klonlamayın
`nix flake init` kullanarak flake.nix dosyası oluşturabilirsiniz. 

# Kullanım
Öncelikle Flake özelliğini aktif hale getirmek gerek.
`/etc/nixos/configuration.nix` dosyasına bunu eklemeniz lazım `nix.settings.experimental-features = [ "nix-command" "flakes" ];`.
Sonra sisteminizi güncelleyin.

Belirtilen yerleri kendine göre özelleştirmelisiniz.

Aşağıdaki komutu yazarak işlemi tamamlamış olursunuz.

```
mkdir -p host/laptop/modules/
sudo cp /etc/nixos/* host/laptop/modules
```
# Nasıl güncelleme Yapılır
Öncelikle Flake.nix dosyanızın bulunduğu klasörü açıyoruz ve `nix flake update` yazıyoruz. Ve sonra `nixos-rebuild switch --flake .#hostname` yazıyoruz hostname'i kendinize göre değiştirmeyi unutmayın.
