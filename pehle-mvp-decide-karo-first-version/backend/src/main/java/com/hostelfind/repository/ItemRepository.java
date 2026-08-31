package com.hostelfind.repository;
import com.hostelfind.model.*; import org.springframework.data.jpa.repository.JpaRepository; import java.util.*;
public interface ItemRepository extends JpaRepository<Item,Long>{ List<Item> findByStatus(ItemStatus status); List<Item> findByUserId(Long userId); List<Item> findByStatusOrderByDateDesc(ItemStatus status); List<Item> findAllByOrderByDateDesc(); }
