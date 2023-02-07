# vim-fcitx2en

用于linux系统，fcitx输入法环境，在退出insert模式时，自动切换至英文

# 使用

```plaintext
  -- packer
  use { 'yaocccc/vim-fcitx2en', event = 'InsertLeavePre' }
```

## 配置，如果你希望其他情况也自动切换至英文

e.g.

```plaintext
  -- packer
  use {
    'yaocccc/vim-fcitx2en',
    setup = function()
      vim.g.fcitx_on_events = 'InsertLeave,InsertEnter'
    end,
    event = { 'InsertLeave', 'InsertEnter' }
  }
```

## Support

<a href="https://www.buymeacoffee.com/yaocccc" target="_blank">
  <img src="https://github.com/yaocccc/yaocccc/raw/master/qr.png">
</a>

<br>

<a href="https://www.buymeacoffee.com/yaocccc" target="_blank">
  <img src="https://cdn.buymeacoffee.com/buttons/v2/default-violet.png" alt="Buy Me A Coffee" style="height: 60px !important;width: 200px !important;" >
</a>
