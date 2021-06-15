Select *
From PortfolioProject..CovidDeaths
Order by 3,4


Select *
From PortfolioProject..CovidVaccinations
Order by 3,4


--Select Data that we are going to be using

Select Location, date, total_cases, new_cases, population
From PortfolioProject..CovidDeaths
Order by 1,2


--Looking at total Cases vs Total Deaths

Select Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercantage
From PortfolioProject..CovidDeaths
Where location like '%states%'
Order by 1,2
