.class Lcom/google/android/gms/internal/zzaar$zzb$2;
.super Lcom/google/android/gms/internal/zzaav$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaar$zzb;->zzwe()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaBF:Lcom/google/android/gms/common/internal/zzf$zzf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaar$zzb;Lcom/google/android/gms/internal/zzaau;Lcom/google/android/gms/common/internal/zzf$zzf;)V
    .locals 0

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaar$zzb$2;->zzaBF:Lcom/google/android/gms/common/internal/zzf$zzf;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaav$zza;-><init>(Lcom/google/android/gms/internal/zzaau;)V

    return-void
.end method


# virtual methods
.method public zzwe()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar$zzb$2;->zzaBF:Lcom/google/android/gms/common/internal/zzf$zzf;

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/internal/zzf$zzf;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
