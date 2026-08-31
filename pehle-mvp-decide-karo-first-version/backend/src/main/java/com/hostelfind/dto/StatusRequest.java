package com.hostelfind.dto; import com.hostelfind.model.ItemStatus; import jakarta.validation.constraints.NotNull; public record StatusRequest(@NotNull ItemStatus status) {}
