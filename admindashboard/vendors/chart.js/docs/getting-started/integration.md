# Integration

Chart.js can be integrated with plain JavaScript or with different module loaders. The examples below show how to load Chart.js in different systems.

## ES6 Modules

```javascript
import Chart from 'chart.js';
var myChart = new Chart(ctx, {...});
```

## Script Tag

```html
<script src="path/to/chartjs/dist/Chart.js"></script>
<script>
    var myChart = new Chart(ctx, {...});
</script>
```

## Common JS

```javascript
var Chart = require('chart.js');
var myChart = new Chart(ctx, {...});
```

## Require JS

```javascript
require(['path/to/chartjs/dist/Chart.js'], function(Chart){
    var myChart = new Chart(ctx, {...});
});
```

> **Important:** RequireJS [can **not** load CommonJS module as is](http://www.requirejs.org/docs/commonjs.php#intro), so be sure to require one of the built UMD files instead (i.e. `dist/Chart.js`, `dist/Chart.min.js`, etc.).
