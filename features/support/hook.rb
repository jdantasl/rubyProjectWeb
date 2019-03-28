After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/','_')

    if scenario.failed?
        getScreenshot(scenario_name.downcase!,'Falha!')
    else
        getScreenshot(scenario_name.downcase!,'Sucesso!')
    end

end
