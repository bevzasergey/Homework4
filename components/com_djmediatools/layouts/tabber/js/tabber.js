/**
 * @version $Id: tabber.js 5 2013-01-04 13:37:11Z szymon $
 * @package DJ-MediaTools
 * @subpackage DJ-MediaTools tabber layout
 * @copyright Copyright (C) 2012 DJ-Extensions.com, All rights reserved.
 * @license DJ-Extensions.com Proprietary Use License
 * @author url: http://dj-extensions.com
 * @author email contact@dj-extensions.com
 * @developer Szymon Woronowski - szymon.woronowski@design-joomla.eu
 *
 */
(function($){

this.DJImageTabber = new Class ({
	
	Extends: DJImageSlideshow,
	
	options: {
		tab_height: 45,
		tab_indicator: 2
	},
	
	initialize: function(slider,options) {
		
		this.setOptions(options);
		
		this.parent(slider,options);
		
		if(this.slides.length) {
			this.setTabs();
		}
	},
	
	setTabs: function() {
		
		this.tabs = this.slider.getElements('.dj-tabs .dj-tab');
		if(this.tabs.length) {
			this.tabs.each(function(tab, index){
				tab.addEvent('click',this.loadSlide.bind(this, index));
			}.bind(this));
		}
		
		this.tabIndicator = this.slider.getElement('.dj-tab-indicator');
		if(this.tabIndicator && this.tabs.length) {
			this.tabIndicator.set('tween',{property: 'top', duration: this.options.duration, transition: Fx.Transitions.Back.easeInOut });
		}
		
		this.tabIndicatorBox = this.slider.getElement('.dj-tabs-in');
		if (this.tabIndicatorBox && this.tabs.length) {
			this.tabIndicatorBox.set('tween', {property: 'margin-top', duration: this.options.duration, transition: Fx.Transitions.Cubic.easeOut });
			
			this.options.tab_height = this.tabs[0].getSize().y;
			this.options.tab_height+= Number.max(0, this.tabs[0].getStyle('margin-top').toInt(), this.tabs[0].getStyle('margin-bottom').toInt());
		}
	},
	
	setCurrentSlide: function(index) {
		
		if (this.tabs.length) {
			this.tabs[this.current].removeClass('dj-tab-active');
			this.tabs[index].addClass('dj-tab-active');
		}
		
		if(this.tabIndicatorBox && this.tabs.length) {
			
			sliderHeight = this.slider.getElement('div').getSize().y;
			newPosition = - index * this.options.tab_height + (sliderHeight - this.options.tab_height) / 2;
			
			// complicated calculation - you'll never understand ;)
			if(this.tabs[index].getPosition(this.tabIndicatorBox).y < sliderHeight / 2 || this.tabs.length * this.options.tab_height < sliderHeight) {
				newPosition = 0;
			} else if(this.tabs[index].getPosition(this.tabIndicatorBox).y + this.options.tab_height > this.tabs.length * this.options.tab_height - sliderHeight / 2) {
				newPosition = - this.tabs.length * this.options.tab_height + sliderHeight - this.tabs[0].getPosition(this.tabIndicatorBox).y;
			}
			
			this.tabIndicatorBox.tween(newPosition);
			if (this.tabIndicator) {
				if (this.options.tab_indicator == 2) {
					this.tabIndicator.tween(this.options.tab_height * index);
				} else if (this.options.tab_indicator == 1) {
					this.tabIndicator.get('tween').set(this.options.tab_height * index);
				}
			}
		}
		
		this.parent(index);
	},
	
	responsive: function() {
		
		this.parent();
		
		sliderIn = this.slider.getElement('div');
		maxWidth = sliderIn.getStyle('max-width').toInt();
		newSliderWidth = sliderIn.getSize().x;
		tabWidth = this.slider.getElement('.dj-tabs').getSize().x;
		
		//console.log('newSliderHeight = '+(newSliderWidth - tabWidth)+' / (( '+maxWidth+' - '+tabWidth+' ) / ( '+maxWidth+' / '+this.ratio+'))');
		
		newSliderHeight = (newSliderWidth - tabWidth) / ((maxWidth - tabWidth) / (maxWidth / this.ratio));
		
		sliderIn.setStyle('height', newSliderHeight);
		this.slider.getElement('.dj-navigation').setStyle('width', (newSliderWidth - tabWidth));
	}
	
});

})(document.id);