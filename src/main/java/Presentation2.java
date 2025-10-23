import dao.IDao;
import entities.Product;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import util.HibernateConfig;

public class Presentation2 {
    public static void main(String[] args) {
        ApplicationContext context = new AnnotationConfigApplicationContext(HibernateConfig.class);

        IDao<Product> productDao = context.getBean(IDao.class);

        Product product = new Product();
        product.setName("Produit 1");
        product.setPrice(100.0);

        productDao.create(product);

        System.out.println("Produit sauvegardé : " + product.getName());
        
        // Test de récupération
        Product retrievedProduct = productDao.findById(product.getId());
        if (retrievedProduct != null) {
            System.out.println("Produit récupéré : " + retrievedProduct.getName() + " - Prix: " + retrievedProduct.getPrice());
        }
        
        // Test de récupération de tous les produits
        System.out.println("Tous les produits :");
        productDao.findAll().forEach(p -> System.out.println("- " + p.getName() + " (" + p.getPrice() + "€)"));
    }
}
