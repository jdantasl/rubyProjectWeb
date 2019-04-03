module Helper
    def getScreenshot(arquivo_nome, resultado)
        arquivo_caminho = "results/screenshots/test_#{resultado}"
        picture = "#{arquivo_caminho}/#{arquivo_nome}.png"
        page.save_screenshot(picture)
        embed(picture, 'image/png', 'Click here!')
    end
end

