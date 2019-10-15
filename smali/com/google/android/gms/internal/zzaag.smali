.class public Lcom/google/android/gms/internal/zzaag;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# instance fields
.field private final zzaAu:Z

.field private zzaAv:Lcom/google/android/gms/internal/zzaah;

.field public final zzaxf:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Api;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaag;->zzaxf:Lcom/google/android/gms/common/api/Api;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzaag;->zzaAu:Z

    return-void
.end method

.method private zzvL()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaag;->zzaAv:Lcom/google/android/gms/internal/zzaah;

    const-string v1, "Callbacks must be attached to a ClientConnectionHelper instance before connecting the client."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaag;->zzvL()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaag;->zzaAv:Lcom/google/android/gms/internal/zzaah;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaah;->onConnected(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaag;->zzvL()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaag;->zzaAv:Lcom/google/android/gms/internal/zzaah;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaag;->zzaxf:Lcom/google/android/gms/common/api/Api;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaag;->zzaAu:Z

    invoke-interface {v0, p1, v1, v2}, Lcom/google/android/gms/internal/zzaah;->zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaag;->zzvL()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaag;->zzaAv:Lcom/google/android/gms/internal/zzaah;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzaah;->onConnectionSuspended(I)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaag;->zzaAv:Lcom/google/android/gms/internal/zzaah;

    return-void
.end method
