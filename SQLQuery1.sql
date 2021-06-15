Select Location, Population, Max(total_cases) as HighestInfectionCount, Max((total_cases/population))*100 as PercentPopulationInfected
From PortfolioProject..CovidDeaths
--Where location like '%states%'
Group by Location, Population
Order by PercentPopulationInfected desc

--Showing Countries with Highest Death Count per Population

Select Location, Max(cast(Total_deaths as int)) as TotalDeathCount
From PortfolioProject..CovidDeaths
--Where location like '%states%'
Where continent is not null
Group by Location
Order by TotalDeathCount desc

Select *
From PortfolioProject..CovidDeaths
Where continent is not null	
Order by 3,4


--Let's Break Things Down By Continent

Select continent, Max(cast(Total_deaths as int)) as TotalDeathCount
From PortfolioProject..CovidDeaths
--Where location like '%states%'
Where continent is not null
Group by continent
Order by TotalDeathCount desc


--Showing continents with highest death counts

Select continent, Max(cast(Total_deaths as int)) as TotalDeathCount
From PortfolioProject..CovidDeaths
--Where location like '%states%'
Where continent is not null
Group by continent
Order by TotalDeathCount desc


--Global Numbers

Select Sum(new_cases) as total_cases, Sum(cast(new_deaths as int)) as total_deaths, Sum(cast(new_deaths as int))/Sum(New_Cases)*100 as DeathPercantage
From PortfolioProject..CovidDeaths
--Where location like '%states%'
Where continent is not null
--Group by date
Order by 1,2


Select *
From PortfolioProject..CovidVaccinations
