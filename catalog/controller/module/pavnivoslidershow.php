<?php  

class ControllerModulePavnivoslidershow extends Controller {
	protected function index($setting) {
		static $module = 0;
		$this->load->model('design/banner');
		$this->load->model('tool/image');
		
		$this->document->addScript('catalog/view/javascript/jquery/nivo-slider/jquery.nivo.slider.pack.js');
		
		if (file_exists('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/pavnivoslidershow.css')) {
			$this->document->addStyle('catalog/view/theme/' . $this->config->get('config_template') . '/stylesheet/pavnivoslidershow.css');
		} else {
			$this->document->addStyle('catalog/view/theme/default/stylesheet/pavnivoslidershow.css');
		}
		
		$this->data['width'] = '0';
		$this->data['height'] = '0';
		
		$this->data['banners'] = array();
		
		if (isset($setting['banner_id'])) {
			$results = $this->model_design_banner->getBanner($setting['banner_id']);
			
			foreach ($results as $result) {
				if (file_exists(DIR_IMAGE . $result['image'])) {
					$this->data['banners'][] = array(
						'title' => $result['title'],
						'link'  => $result['link'],
						'image' => HTTP_SERVER . 'image/' . $result['image']
					);
				}
			}
		}
		
		$this->data['module'] = $module++;
						
		if (file_exists(DIR_TEMPLATE . $this->config->get('config_template') . '/template/module/pavnivoslidershow.tpl')) {
			$this->template = $this->config->get('config_template') . '/template/module/pavnivoslidershow.tpl';
		} else {
			$this->template = 'default/template/module/pavnivoslidershow.tpl';
		}
		
		$this->render();
	}
}
?>