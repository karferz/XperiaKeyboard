.class public abstract Lcom/google/android/gms/internal/zzabm;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A::",
        "Lcom/google/android/gms/common/api/Api$zzb;",
        "L:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzaDf:Lcom/google/android/gms/internal/zzabh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabh",
            "<T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public zzwW()Lcom/google/android/gms/internal/zzabh$zzb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzabh$zzb",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabm;->zzaDf:Lcom/google/android/gms/internal/zzabh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzabh;->zzwW()Lcom/google/android/gms/internal/zzabh$zzb;

    move-result-object v0

    return-object v0
.end method

.method public zzwX()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabm;->zzaDf:Lcom/google/android/gms/internal/zzabh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzabh;->clear()V

    return-void
.end method
