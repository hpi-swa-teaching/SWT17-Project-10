<p align="center"><img width="300" height="300" src="https://github.com/hpi-swa-teaching/StatisticsWorkbench/blob/745c8d8d15afdd32273f4cc16a225b2b77bbdb9c/sw_logo.png?raw=true" alt="StatisticsWorkbench-Logo"></p>

<h1 align="center" style=font-size:100px>StatisticsWorkbench</h1>

[![Commit](https://img.shields.io/github/last-commit/hpi-swa-teaching/StatisticsWorkbench?style=flat)](https://github.com/hpi-swa-teaching/StatisticsWorkbenchStatisticsWorkbench/commits/)
[![Coverage Status](https://coveralls.io/repos/github/hpi-swa-teaching/StatisticsWorkbench/badge.svg?branch=dev)](https://coveralls.io/github/hpi-swa-teaching/StatisticsWorkbench?branch=dev)
[![CI](https://github.com/hpi-swa-teaching/StatisticsWorkbench/actions/workflows/ci.yml/badge.svg?branch=dev)](https://github.com/hpi-swa-teaching/StatisticsWorkbench/actions/workflows/ci.yml)

Statistics Workbench is a tool for the visualization and analyzation of data.
It offers multiple mathematical functions for finding the maximum, minimum, mean, mode, maximal deviation and more of a dataset, as well as multiple chart types, like barcharts and piecharts.
There are multiple ways of creating datasets from different inputs outlined below.


## Overview & Getting Started

Statistics workbench offers a large number of functionalities for displaying the different charts, however it is not complete yet and not all functionalities are supported by all chart types yet.

There are Coding Standards [which can be found in the wiki](https://github.com/hpi-swa-teaching/StatisticsWorkbench/wiki/Coding-Standards) which we got from our predecessors and have maintained and used to make creating constistent code a bit easier and we encourage you to keep using them.

Take a look at [Issue #75](/../../issues/75) to get an overview of what features may be missing and some ideas for features that could be nice to implement.

The test base is very comprehensive for some chart types and almost non-existent for some others and could also be a good place to start and get to know the legacy project. Below you will get a short introduction into the most important features to get you started as well.

## Installation

First install metacello using [this guide](https://github.com/Metacello/metacello#squeak). Then run the following in a workspace in your Squeak image. This will install only required packages.

```smalltalk
Metacello new
  baseline: 'StatisticsWorkbench';
  repository: 'github://hpi-swa-teaching/StatisticsWorkbench:dev/packages';
  load.
```

If you want to install every package (including Tests and Examples), run the following in your workspace:

```smalltalk
Metacello new
  baseline: 'StatisticsWorkbench';
  repository: 'github://hpi-swa-teaching/StatisticsWorkbench:dev/packages';
  load: #('all').
```

After that you are good to go.

## Usage

We created multiple examples, in order to get you started with the existing project.
You can find them in the StatisticsWorkbench-Examples package.
They can be used by calling:

```smalltalk
<ExampleName> open.
```

E.g.

```smalltalk
SWCreateNamedChartExample open.
```

Feel free to take a look at the `open` method of each example to see how creating data or diagrams works.

There are now several different ways to create datasets, each of which has its own example

```smalltalk
SWDataFrom<...>Example
```

E.g.

```smalltalk
SWDataFromStringExample open.
```

Data can be created from seperate collections, from a collection of single datapoints or from a string, which is the way it initially was implemented and which we have slowly been phasing out in favor of using squeak internal data types to create data:

```smalltalk
data := SWDataLabeled fromXValues: {1 . 2 . 3 . 4} versusYValues: {22 . 23 . 15 . 6} withLabels: {'one' . 'two' . 'three' . 'four'}.

labeledData := SWDataLabeled fromDataPointCollections: #(#(1 1 'one') #(2 1 'two') #(3 3 'three') #(4 1 'four')).

unlabeledData := SWDataUnlabeled fromDataPointCollections: #(#(0 2) #(1 1) #(2 1) #(3 3) #(4 0)).
```

Labels can also be added to an unlabeled data object afterwards:

```smalltalk
data setLabels: {'one' . 'two' . 'three' . 'four'}.
```

Then, you can set the dimensions in order to label the X and Y axes:

```smalltalk
data setAllDimensionNames: #('City' 'PopulationInThousands').
```

Afterwards you can visualize it using Line-/Bar-/Pie-Charts or Scatterplots:

```smalltalk
graph := SWDiagram new visualize: data with: SWBarChart create.
graph := SWDiagram new visualize: data with: SWLineChart create.
graph := SWDiagram new visualize: data with: SWPieChart create.
graph := SWDiagram new visualize: data with: SWScatterPlot create.
```

Finally you can open your chart in a window - that can also be labelled - by typing

```smalltalk
graph openInWindow.
graph openInWindowLabeled: 'My Diagram'
```

If you want to adjust your diagram, you can do that as follows:

```smalltalk
(graph charts first) barWidth: 40.
graph axisColor: Color red.
```

You can also choose another SWColorTheme by calling:

```smalltalk
graph applyColorTheme: SWDarkTheme new.
graph applyColorTheme: SWHPITheme new.
```

Furthermore, you can display the mean value of your data:

```smalltalk
graph showMean.
```

You can also interact with the diagram, for example by right-clicking on data points to delete them from the diagram. This functionality can be used to exclude outliers.

## List of all currently available charts:

**Charts for single y-axis:**
- Piechart
- Barchart
- LineCharts
- AreaChart
- Scatterplot
- SpiderChart
- Normalized BarChart
- Normalized AreaChart

**Charts that are capable of multiple y-axes:**
- Barchart
- LineCharts
- AreaChart
- Scatterplot
- SpiderChart
- Normalized BarChart
- Normalized AreaChart

Here are two examples of how to create stacked and normalized charts for multiple y-axes:
```smalltalk
(SWDiagram new 
    stacked: true;
    visualizeAll: dataCollection with: SWBarChart) openInWindowLabeled: ''
```
```smalltalk
(SWDiagram new 
    stacked: true;
    normalized: true;
    visualizeAll: dataCollection with: SWBarChart) openInWindowLabeled: ''
```
Here "dataCollection" is of type OrderedCollection with elemets from SWDataLabeled or SWDataUnlabeled.


**Charts that suppot 3-dimensional data:**
- BubblePlot

Here is an examples of how to create a bubbleplot for 3-dimensional data:
```smalltalk
| data |
data := SWDataUnlabeled fromXValues: {1 . 2 . 3 . 4 . 5} versusYValues: {5 . 200 . 38 . 69 . 16} versusZValues: {17 . 14 . 5 . 8 . 3}.
(SWDiagram new visualize: data with: SWBubblePlot) openInWindowLabeled: ''
```
It is also possible to visualize more than one data series within a BubblePlot by using the method ```SWDiagram new visualizeAll: dataCollection with: SWBubblePlot```.


## Linear Regression
It is also possible to perform **Linear Regression** on a ScatterPlot.
 ```smalltalk
| data scatterPlot |
data := SWDataUnlabeled fromXValues: {1 . 2 . 3 . 4 . 5} versusYValues: {22 . 110 . 64 . 211 . 35}.
scatterPlot := SWDiagram new visualize: data with: SWScatterPlot.
(SWLinearRegression newFromScatterPlot: (scatterPlot charts first) plotOn: scatterPlot).
scatterPlot openInWindowLabeled: ''
```


## The Statistic Workbench UI
Another way of accesing the StatisticsWorkBench tool is the brand new **User Interface**. This can be opened by calling

```smalltalk
SWMainformModel open.
```
**Features:**
 - Import CSV
 - Export Charts as PNG
 - Edit X, Y axis and columns in the editor
 - Choose different themes for your charts
 - View all types of charts without writing commands

### Difference between Single and Multiple Y-Axes

The statistics workbench is not just designed for charts with a single x and y-axis. You can add multiple y-axes using the editor or by importing them via CSV. All imported y-axis values will show up in the multiple text selector on the right side of the UI. You can also display multiple charts at the same time for the current x- and y-axes values by selecting different chart types.

If you want to remove or edit y-axis values, simply select the desired rows and click the corresponding button to make the changes.

#### Important Note:
If you only have one y-axis value in your UI field, you can visualize all charts. However, if you have multiple y-axis values, you can't visualize the pieChart and will get an error message because this chart type is not designed to have more y-axes. All other charts will be stacked as you would expect with additional y-axes.

### Using the CSV import
Note that csv file you want to import must have the following format:
```
X;Y1;Y2;Label
1;1;2;one
2;1;3;two
3;3;4;three
4;1;2;four
```
