.class Lcom/google/android/gms/internal/zzsr$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzsr;-><init>(Lcom/google/android/gms/internal/zzsc;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaff:Lcom/google/android/gms/internal/zzsr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsr$1;->zzaff:Lcom/google/android/gms/internal/zzsr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsr$1;->zzaff:Lcom/google/android/gms/internal/zzsr;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzsr;->zza(Lcom/google/android/gms/internal/zzsr;)Lcom/google/android/gms/internal/zzsc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->zznU()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/analytics/zzh;->zzg(Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsr$1;->zzaff:Lcom/google/android/gms/internal/zzsr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsr;->zzcy()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsr$1;->zzaff:Lcom/google/android/gms/internal/zzsr;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzsr;->zza(Lcom/google/android/gms/internal/zzsr;J)J

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsr$1;->zzaff:Lcom/google/android/gms/internal/zzsr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsr;->run()V

    goto :goto_0
.end method
