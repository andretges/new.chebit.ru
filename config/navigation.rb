# -*- coding: utf-8 -*-
SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    primary.item :conferences, 'Конференции', conferences_url
    primary.item :conferences, 'Доклады', presentations_url
    primary.dom_class = 'nav'
    # You can turn off auto highlighting for a specific level
    # primary.auto_highlight = false
  end
end
