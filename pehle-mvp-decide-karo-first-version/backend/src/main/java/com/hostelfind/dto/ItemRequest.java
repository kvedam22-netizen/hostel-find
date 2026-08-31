package com.hostelfind.dto; import com.hostelfind.model.*; import jakarta.validation.constraints.*; import java.time.LocalDateTime;
public record ItemRequest(@NotBlank String title,@NotBlank String description,@NotBlank String category,String imageUrl,@NotBlank String location,@NotNull LocalDateTime date,@NotNull ItemType type,@NotNull Long userId,ItemStatus status) {}
