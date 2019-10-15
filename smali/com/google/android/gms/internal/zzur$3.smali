.class Lcom/google/android/gms/internal/zzur$3;
.super Lcom/google/android/gms/internal/zzaad$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzur;->removeWorkAccount(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzaad$zza",
        "<",
        "Lcom/google/android/gms/common/api/Result;",
        "Lcom/google/android/gms/internal/zzus;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaiB:Landroid/accounts/Account;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzur;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/accounts/Account;)V
    .locals 0

    iput-object p4, p0, Lcom/google/android/gms/internal/zzur$3;->zzaiB:Landroid/accounts/Account;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/zzaad$zza;-><init>(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/GoogleApiClient;)V

    return-void
.end method


# virtual methods
.method public synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/common/api/Result;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/zzaad$zza;->zzb(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method protected bridge synthetic zza(Lcom/google/android/gms/common/api/Api$zzb;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/zzus;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzur$3;->zza(Lcom/google/android/gms/internal/zzus;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/internal/zzus;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzus;->zzxD()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/account/zzb;

    new-instance v1, Lcom/google/android/gms/internal/zzur$3$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzur$3$1;-><init>(Lcom/google/android/gms/internal/zzur$3;)V

    iget-object v2, p0, Lcom/google/android/gms/internal/zzur$3;->zzaiB:Landroid/accounts/Account;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/auth/account/zzb;->zza(Lcom/google/android/gms/auth/account/zza;Landroid/accounts/Account;)V

    return-void
.end method

.method protected zzc(Lcom/google/android/gms/common/api/Status;)Lcom/google/android/gms/common/api/Result;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzur$zzc;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzur$zzc;-><init>(Lcom/google/android/gms/common/api/Status;)V

    return-object v0
.end method
