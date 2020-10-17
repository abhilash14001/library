(function(global) {

	var Samples = global.Samples || (global.Samples = {});

	Samples.items = [{
		title: 'Bar charts',
		items: [{
			title: 'Vertical',
			path: 'charts/bar/vertical.php'
		}, {
			title: 'Horizontal',
			path: 'charts/bar/horizontal.php'
		}, {
			title: 'Multi axis',
			path: 'charts/bar/multi-axis.php'
		}, {
			title: 'Stacked',
			path: 'charts/bar/stacked.php'
		}, {
			title: 'Stacked groups',
			path: 'charts/bar/stacked-group.php'
		}]
	}, {
		title: 'Line charts',
		items: [{
			title: 'Basic',
			path: 'charts/line/basic.php'
		}, {
			title: 'Multi axis',
			path: 'charts/line/multi-axis.php'
		}, {
			title: 'Stepped',
			path: 'charts/line/stepped.php'
		}, {
			title: 'Interpolation',
			path: 'charts/line/interpolation-modes.php'
		}, {
			title: 'Line styles',
			path: 'charts/line/line-styles.php'
		}, {
			title: 'Point styles',
			path: 'charts/line/point-styles.php'
		}, {
			title: 'Point sizes',
			path: 'charts/line/point-sizes.php'
		}]
	}, {
		title: 'Area charts',
		items: [{
			title: 'Boundaries (line)',
			path: 'charts/area/line-boundaries.php'
		}, {
			title: 'Datasets (line)',
			path: 'charts/area/line-datasets.php'
		}, {
			title: 'Stacked (line)',
			path: 'charts/area/line-stacked.php'
		}, {
			title: 'Radar',
			path: 'charts/area/radar.php'
		}]
	}, {
		title: 'Other charts',
		items: [{
			title: 'Scatter',
			path: 'charts/scatter/basic.php'
		}, {
			title: 'Scatter - Multi axis',
			path: 'charts/scatter/multi-axis.php'
		}, {
			title: 'Doughnut',
			path: 'charts/doughnut.php'
		}, {
			title: 'Pie',
			path: 'charts/pie.php'
		}, {
			title: 'Polar area',
			path: 'charts/polar-area.php'
		}, {
			title: 'Radar',
			path: 'charts/radar.php'
		}, {
			title: 'Combo bar/line',
			path: 'charts/combo-bar-line.php'
		}]
	}, {
		title: 'Linear scale',
		items: [{
			title: 'Step size',
			path: 'scales/linear/step-size.php'
		}, {
			title: 'Min & max',
			path: 'scales/linear/min-max.php'
		}, {
			title: 'Min & max (suggested)',
			path: 'scales/linear/min-max-suggested.php'
		}]
	}, {
		title: 'Logarithmic scale',
		items: [{
			title: 'Line',
			path: 'scales/logarithmic/line.php'
		}, {
			title: 'Scatter',
			path: 'scales/logarithmic/scatter.php'
		}]
	}, {
		title: 'Time scale',
		items: [{
			title: 'Line',
			path: 'scales/time/line.php'
		}, {
			title: 'Line (point data)',
			path: 'scales/time/line-point-data.php'
		}, {
			title: 'Time Series',
			path: 'scales/time/financial.php'
		}, {
			title: 'Combo',
			path: 'scales/time/combo.php'
		}]
	}, {
		title: 'Scale options',
		items: [{
			title: 'Grid lines display',
			path: 'scales/gridlines-display.php'
		}, {
			title: 'Grid lines style',
			path: 'scales/gridlines-style.php'
		}, {
			title: 'Multiline labels',
			path: 'scales/multiline-labels.php'
		}, {
			title: 'Filtering Labels',
			path: 'scales/filtering-labels.php'
		}, {
			title: 'Non numeric Y Axis',
			path: 'scales/non-numeric-y.php'
		}, {
			title: 'Toggle Scale Type',
			path: 'scales/toggle-scale-type.php'
		}]
	}, {
		title: 'Legend',
		items: [{
			title: 'Positioning',
			path: 'legend/positioning.php'
		}, {
			title: 'Point style',
			path: 'legend/point-style.php'
		}]
	}, {
		title: 'Tooltip',
		items: [{
			title: 'Positioning',
			path: 'tooltips/positioning.php'
		}, {
			title: 'Interactions',
			path: 'tooltips/interactions.php'
		}, {
			title: 'Callbacks',
			path: 'tooltips/callbacks.php'
		}, {
			title: 'Border',
			path: 'tooltips/border.php'
		}, {
			title: 'HTML tooltips (line)',
			path: 'tooltips/custom-line.php'
		}, {
			title: 'HTML tooltips (pie)',
			path: 'tooltips/custom-pie.php'
		}, {
			title: 'HTML tooltips (points)',
			path: 'tooltips/custom-points.php'
		}]
	}, {
		title: 'Scriptable',
		items: [{
			title: 'Bubble Chart',
			path: 'scriptable/bubble.php'
		}]
	}, {
		title: 'Advanced',
		items: [{
			title: 'Progress bar',
			path: 'advanced/progress-bar.php'
		}, {
			title: 'Data labelling (plugin)',
			path: 'advanced/data-labelling.php'
		}]
	}];

}(this));
