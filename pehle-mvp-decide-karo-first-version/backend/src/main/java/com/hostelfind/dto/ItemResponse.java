package com.hostelfind.dto;
import com.hostelfind.model.*; import java.time.LocalDateTime;
/** Safe representation returned from public listing/detail endpoints. */
public record ItemResponse(Long id,String title,String description,String category,String imageUrl,String location,LocalDateTime date,ItemType type,ItemStatus status) {}
