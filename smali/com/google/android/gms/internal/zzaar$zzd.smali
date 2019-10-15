.class Lcom/google/android/gms/internal/zzaar$zzd;
.super Lcom/google/android/gms/internal/zzbam;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zzd"
.end annotation


# instance fields
.field private final zzaBB:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/gms/internal/zzaar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaar;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbam;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaar$zzd;->zzaBB:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/internal/zzbaw;)V
    .locals 3
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar$zzd;->zzaBB:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaar;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/internal/zzaar;->zzd(Lcom/google/android/gms/internal/zzaar;)Lcom/google/android/gms/internal/zzaav;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzaar$zzd$1;

    invoke-direct {v2, p0, v0, v0, p1}, Lcom/google/android/gms/internal/zzaar$zzd$1;-><init>(Lcom/google/android/gms/internal/zzaar$zzd;Lcom/google/android/gms/internal/zzaau;Lcom/google/android/gms/internal/zzaar;Lcom/google/android/gms/internal/zzbaw;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zzaav;->zza(Lcom/google/android/gms/internal/zzaav$zza;)V

    goto :goto_0
.end method
