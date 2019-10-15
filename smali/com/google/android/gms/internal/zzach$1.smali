.class Lcom/google/android/gms/internal/zzach$1;
.super Lcom/google/android/gms/internal/zzaci$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzach;->zzg(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzach;Lcom/google/android/gms/common/api/GoogleApiClient;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaci$zza;-><init>(Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzacj;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzach$1;->zza(Lcom/google/android/gms/internal/zzacj;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzacj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzacj;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzacl;

    new-instance v1, Lcom/google/android/gms/internal/zzach$zza;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzach$zza;-><init>(Lcom/google/android/gms/internal/zzaad$zzb;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzacl;->zza(Lcom/google/android/gms/internal/zzack;)V

    return-void
.end method
