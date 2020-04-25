Data Product - Data Reproducability
========================================================
author: Patrick Brooks
date: 04/27/2020
autosize: true

Purpose
=========================================================

The Covid Tracking Project is an effort by several professional scientists and
journalists interested in provide up today data regarding the COVID-19 Outbreak
in the US.  The data is cleaned and normalized across the US States and Territories.  
https://covidtracking.com/about-project

They project provides several data formats.  In this project we will read
a JSON file

This project is a Shiny application created to fulfill Data Products course.

Data Reproducability
========================================================

The purpose of this applicaiton is to allow the user to read a JSON file with 
current US State COVID19 data.

The Shiny application can be found:  https://patb6.shinyapps.io/ddp-w4-shiny1_sf/  
The Github repository with [code link app.R]( https://github.com/patb6/DDP-W4-Shiny_App/tree/gh-pages/DDP-W4-Shiny1_SF)  
This presentation is at:  https://rpubs.com/patb6/604651  

At the start of the session the application reads the current JSON file from 
the COVID tracking project

Selecting different states during the same session does not cause the JASON file
to be re-read.


Using the application
========================================================

* Go to the [application site](https://patb6.shinyapps.io/ddp-w4-shiny1_sf/)
* Application may take several seconds to load
* The default State is AZ (Arizona)
* Select the state (2 letter abbreviation)
* Review the data
* Search box is also active
* Different states can be chosen by goin to the drop down box

