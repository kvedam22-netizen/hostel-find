package com.hostelfind.dto; import jakarta.validation.constraints.*; public record ClaimRequest(@NotNull Long itemId,@NotNull Long claimantId,@NotBlank String proofOrMessage) {}
