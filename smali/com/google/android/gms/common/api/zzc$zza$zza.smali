.class public Lcom/google/android/gms/common/api/zzc$zza$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/zzc$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zzayW:Lcom/google/android/gms/internal/zzabs;

.field private zzrs:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzabs;)Lcom/google/android/gms/common/api/zzc$zza$zza;
    .locals 1

    const-string v0, "StatusExceptionMapper must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzayW:Lcom/google/android/gms/internal/zzabs;

    return-object p0
.end method

.method public zzb(Landroid/os/Looper;)Lcom/google/android/gms/common/api/zzc$zza$zza;
    .locals 1

    const-string v0, "Looper must not be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzrs:Landroid/os/Looper;

    return-object p0
.end method

.method public zzvk()Lcom/google/android/gms/common/api/zzc$zza;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzayW:Lcom/google/android/gms/internal/zzabs;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzzy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzzy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzayW:Lcom/google/android/gms/internal/zzabs;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzrs:Landroid/os/Looper;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzrs:Landroid/os/Looper;

    :cond_1
    :goto_0
    new-instance v0, Lcom/google/android/gms/common/api/zzc$zza;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzayW:Lcom/google/android/gms/internal/zzabs;

    iget-object v2, p0, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzrs:Landroid/os/Looper;

    invoke-direct {v0, v1, v3, v2, v3}, Lcom/google/android/gms/common/api/zzc$zza;-><init>(Lcom/google/android/gms/internal/zzabs;Landroid/accounts/Account;Landroid/os/Looper;Lcom/google/android/gms/common/api/zzc$1;)V

    return-object v0

    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzrs:Landroid/os/Looper;

    goto :goto_0
.end method
