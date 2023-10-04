package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>(); // ArrayList를 Product로 캐스팅

	public ProductRepository() {
		Product phone = new Product("P1234", "iPhone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Renina HD display, 8-megapixel iSight Camera");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitsInStock(1000);
		phone.setCondition("New");
        
    Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3-inch, IPS LED display, 5rd Generation Intel Core processors");
		notebook.setCategory("Notebook");
		notebook.setManufacturer("LG");
		notebook.setUnitsInStock(1000);
		notebook.setCondition("Refurbished");

	Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm,  Super AMOLED display, Octa-Core processor");
		tablet.setCategory("Tablet");
		tablet.setManufacturer("Samsung");
		tablet.setUnitsInStock(1000);
		tablet.setCondition("Old");
        
	Product phone1 = new Product("P1237", "iPhone 15", 1250000);
		phone1.setDescription("6.1인치 디스플레이, 다이나믹 아일랜드 , C타입 충전포트 지원");
		phone1.setCategory("Smart Phone");
		phone1.setManufacturer("Apple");
		phone1.setUnitsInStock(1000);
		phone1.setCondition("New");
        
	Product watch = new Product("P1238", "Apple Watch Ultra", 900000);
		watch.setDescription("1.92 inches, Retina LTPO OLED, 2000 nits (peak), watchOS 9.0, upgradable to watchOS 10");
		watch.setCategory("Smart Watch");
		watch.setManufacturer("Apple");
		watch.setUnitsInStock(1000);
		watch.setCondition("New");
        
	Product airpods = new Product("P1239", "AirPods pro2", 300000);
		airpods.setDescription("한 번 충전으로 최대 6시간 청취 가능, 노이즈 캔슬링, 무게: 50.8g");
		airpods.setCategory("Blooth earphone");
		airpods.setManufacturer("Apple");
		airpods.setUnitsInStock(1000);
		airpods.setCondition("New");
        
    Product pad = new Product("P1240", "iPad pro 11", 1300000);
		pad.setDescription("저장공간 용량(GB)128, 화면 크기(인치)11,화면 비율4.3:3, 배터리 용량(mAh)7538");
		pad.setCategory("Tablet");
		pad.setManufacturer("Apple");
		pad.setUnitsInStock(1000);
		pad.setCondition("New");
        
    Product mac = new Product("P1241", "Macbook pro 14", 2500000);
		mac.setDescription("14코어 GPU, Liquid Retina XDR 디스플레이, Apple M1 Pro 칩");
		mac.setCategory("Notebook");
		mac.setManufacturer("Apple");
		mac.setUnitsInStock(1000);
		mac.setCondition("New");
        
    Product airmax = new Product("P1242", "AirPods Max", 700000);
		airmax.setDescription("한 번 충전으로 최대 20시간 통화 가능, 총 9개의 마이크, 액티브 노이즈 캔슬링, 384.8 g");
		airmax.setCategory("Blooth headset");
		airmax.setManufacturer("Apple");
		airmax.setUnitsInStock(1000);
		airmax.setCondition("New");
		
		// 위와 같이 상품 초기화 하고 아래에 상품을 추가

		listOfProducts.add(phone);
		listOfProducts.add(notebook);
		listOfProducts.add(tablet);
        listOfProducts.add(phone1);
        listOfProducts.add(watch);
        listOfProducts.add(airpods);
        listOfProducts.add(pad);
        listOfProducts.add(mac);
        listOfProducts.add(airmax);
		// listOfProducts.add(상품명);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
}