package co.silbersoft.anchor.dao;

import co.silbersoft.anchor.models.MenuItem;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MenuItemDaoImpl extends AbstractDao<MenuItem> implements MenuItemDao {

    @Autowired
    public MenuItemDaoImpl(SessionFactory sf){
        this.setSessionFactory(sf);
    }
    
    
    @Override
    public List<MenuItem> findItemsByMenu(Long menuId) {
        return (List<MenuItem>) getSession().createQuery("from MenuItem where menu_id=:id").setLong("id", menuId).list();
    }

    @Override
    public List<MenuItem> findItemsByMenuAndCatagory(Long menuid, String catagory) {
        return (List<MenuItem>) getSession().createQuery("from MenuItem where menu_id=:id and catagory=:catagory")
                .setString("catagory", catagory)
                .setLong("id", menuid)
                .list();
    }

    @Override
    public List<String> findCatagoriesByMenu(Long menuid) {
        Query q = getSession().createQuery("select distinct catagory from MenuItem where menu_id=:id");
        q.setLong("id", menuid);
        return q.list();
    }
    
}
