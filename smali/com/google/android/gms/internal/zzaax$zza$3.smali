.class Lcom/google/android/gms/internal/zzaax$zza$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaax$zza;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaCG:Lcom/google/android/gms/internal/zzaax$zza;

.field final synthetic zzaCH:Lcom/google/android/gms/common/ConnectionResult;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaax$zza;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaax$zza$3;->zzaCG:Lcom/google/android/gms/internal/zzaax$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaax$zza$3;->zzaCH:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza$3;->zzaCG:Lcom/google/android/gms/internal/zzaax$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza$3;->zzaCH:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaax$zza;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
