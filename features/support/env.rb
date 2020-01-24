require 'lineup'

base_name = '4-Check-out –extra com cartões pre-cadastrados.png'
new_name = 'atual_'+DateTime.now
urls = '/, multimedia, sport'
resolutions = '600, 800, 1200'
images_path = '../../base/screenshots'
difference_path = '../../base/results'
json_path = '../../base/results'
phantomjs = false

lineup = Lineup::Screenshot.new('https://www.otto.de')
lineup.urls(urls)
lineup.resolutions(resolutions)
lineup.filepath_for_images(images_path)
lineup.difference_path(difference_path)
lineup.use_phantomjs(phantomjs)
    
#lineup.record_screenshot(base_name)
# do sth. (eg. deploy new software)
lineup.record_screenshot(new_name)
lineup.save_json(json_path)

lineup.wait_for_asynchron_pages(5)
lineup.record_screenshot('atual_'+DateTime.now)