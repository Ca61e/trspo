#include <iostream>
#include <limits>

bool prime(int n)
{
	if (n < 2 ) return false;
	for (int i = 2; i * i <= n; i++)
	{
		if (n % i == 0) return false;
	}
	return true;
}

int get_num(){
	int num;
	
	while (true)
	{
		std::cout << "Vvedi chislo: ";
		if (!(std::cin >> num))
		{
			std::cin.clear();
			std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
			std::cout << "Nado celoe chislo\n";
			continue;
		}
		return num;
	}
}

int main(){
	int num = get_num();
	if (prime(num))
	{
		std::cout << "Chislo " << num << " prostoe\n";
	}
	else
	{
		std::cout << "Chislo " << num << " not prostoe\n";
	}
	return 0;
}
		
		
		
		
		
		
