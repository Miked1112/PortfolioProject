--Global Numbers
Select date, Sum(new_cases)--, (total_deaths/total_cases)*100 as DeathPercantage
From PortfolioProject..CovidDeaths
--Where location like '%states%'
where continent is not null
Group by date
Order by 1,2

Select date, Sum(new_cases), Sum(cast(new_deaths as int))--, (total_deaths/total_cases)*100 as DeathPercantage
From PortfolioProject..CovidDeaths
--Where location like '%states%'
where continent is not null
Group by date
Order by 1,2

Select Sum(new_cases)as total_cases, Sum(cast(new_deaths as int)) as total_deaths, Sum(cast(new_deaths as int))/Sum(New_Cases)*100 as DeathPercantage
From PortfolioProject..CovidDeaths
--Where location like '%states%'
where continent is not null
--Group by date
Order by 1,2

--Looking at Total Population vs Vaccinations

Select dea.continent, dea.location, dea.date, dea.population, vac.new_vaccinations
From PortfolioProject..CovidDeaths dea
Join PortfolioProject..CovidVaccinations vac
    On dea.location = vac.location
    and dea.date = vac.date
where dea.continent is not null
Order by 2,3

