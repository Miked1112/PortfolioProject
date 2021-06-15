Select Location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPercantage
From PortfolioProject..CovidDeaths
Where location like '%states%'
Order by 1,2


 --Looking at Total Cases vs population
 --Shows what Percantage of Population that got Covid

 Select Location, date, total_cases, Population, (total_cases/Population)*100 as PercentPopulationInfected
From PortfolioProject..CovidDeaths
Where location like '%states%'
Order by 1,2

--Looking at countries highest infection rate compared to population

Select Location, Population, Max(total_cases) as HighestInfectionCount, Max((total_cases/Population))*100 as PercentPopulationInfected
From PortfolioProject..CovidDeaths
--Where location like '%states%'
Group by Location, Population
Order by PercentPopulationInfected desc

--Showing Countries with Highest Death Count Per Population

Select Location, Max(Total_
From PortfolioProject..CovidDeaths
--Where location like '%states%'
Group by Location, Population
Order by PercentPopulationInfected desc