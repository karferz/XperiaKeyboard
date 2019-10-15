.class public final Lcom/google/android/gms/internal/zzabn;
.super Ljava/lang/Object;


# instance fields
.field public final zzazG:Lcom/google/android/gms/internal/zzabm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabm",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;"
        }
    .end annotation
.end field

.field public final zzazH:Lcom/google/android/gms/internal/zzabz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzabz",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzabm;Lcom/google/android/gms/internal/zzabz;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/zzabm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/android/gms/internal/zzabz;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabm",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;",
            "Lcom/google/android/gms/internal/zzabz",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabn;->zzazG:Lcom/google/android/gms/internal/zzabm;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabn;->zzazH:Lcom/google/android/gms/internal/zzabz;

    return-void
.end method
