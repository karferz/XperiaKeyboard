.class public Lcom/google/android/gms/internal/zzabr;
.super Lcom/google/android/gms/internal/zzbam;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzabr$zza;
    }
.end annotation


# static fields
.field private static zzaDg:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzbai;",
            "Lcom/google/android/gms/internal/zzbaj;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private zzaAL:Lcom/google/android/gms/common/internal/zzg;

.field private zzaBs:Lcom/google/android/gms/internal/zzbai;

.field private final zzaDh:Z

.field private zzaDi:Lcom/google/android/gms/internal/zzabr$zza;

.field private zzakq:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation
.end field

.field private final zzayH:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzbai;",
            "Lcom/google/android/gms/internal/zzbaj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbah;->zzaie:Lcom/google/android/gms/common/api/Api$zza;

    sput-object v0, Lcom/google/android/gms/internal/zzabr;->zzaDg:Lcom/google/android/gms/common/api/Api$zza;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbam;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabr;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabr;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/google/android/gms/internal/zzabr;->zzaDg:Lcom/google/android/gms/common/api/Api$zza;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzayH:Lcom/google/android/gms/common/api/Api$zza;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzabr;->zzaDh:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Lcom/google/android/gms/common/internal/zzg;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzbai;",
            "Lcom/google/android/gms/internal/zzbaj;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbam;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabr;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzabr;->mHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzabr;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    invoke-virtual {p3}, Lcom/google/android/gms/common/internal/zzg;->zzxL()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzakq:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzabr;->zzayH:Lcom/google/android/gms/common/api/Api$zza;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzabr;->zzaDh:Z

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzabr;Lcom/google/android/gms/internal/zzbaw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzabr;->zzc(Lcom/google/android/gms/internal/zzbaw;)V

    return-void
.end method

.method private zzc(Lcom/google/android/gms/internal/zzbaw;)V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbaw;->zzyh()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbaw;->zzPT()Lcom/google/android/gms/common/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaf;->zzyh()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "SignInCoordinator"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzaDi:Lcom/google/android/gms/internal/zzabr$zza;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzabr$zza;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbai;->disconnect()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzabr;->zzaDi:Lcom/google/android/gms/internal/zzabr$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaf;->zzyg()Lcom/google/android/gms/common/internal/zzr;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabr;->zzakq:Ljava/util/Set;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzabr$zza;->zzb(Lcom/google/android/gms/common/internal/zzr;Ljava/util/Set;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbai;->disconnect()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzabr;->zzaDi:Lcom/google/android/gms/internal/zzabr$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzabr$zza;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_1
.end method


# virtual methods
.method public onConnected(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzbai;->zza(Lcom/google/android/gms/internal/zzbap;)V

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzaDi:Lcom/google/android/gms/internal/zzabr$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzabr$zza;->zzi(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public onConnectionSuspended(I)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbai;->disconnect()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzabr$zza;)V
    .locals 9
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbai;->disconnect()V

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzabr;->zzaDh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabr;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzas(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zzn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/zzn;->zzrC()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzakq:Ljava/util/Set;

    new-instance v0, Lcom/google/android/gms/common/internal/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabr;->zzakq:Ljava/util/Set;

    const/4 v4, 0x0

    sget-object v8, Lcom/google/android/gms/internal/zzbaj;->zzbEm:Lcom/google/android/gms/internal/zzbaj;

    move-object v3, v1

    move-object v5, v1

    move-object v6, v1

    move-object v7, v1

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/zzg;-><init>(Landroid/accounts/Account;Ljava/util/Set;Ljava/util/Map;ILandroid/view/View;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbaj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzayH:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabr;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzabr;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzabr;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzabr;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzg;->zzxR()Lcom/google/android/gms/internal/zzbaj;

    move-result-object v4

    move-object v5, p0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbai;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabr;->zzaDi:Lcom/google/android/gms/internal/zzabr$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbai;->connect()V

    return-void

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->zzrj()Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbaw;)V
    .locals 2
    .annotation build Landroid/support/annotation/BinderThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabr;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/zzabr$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzabr$1;-><init>(Lcom/google/android/gms/internal/zzabr;Lcom/google/android/gms/internal/zzbaw;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public zzwO()Lcom/google/android/gms/internal/zzbai;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    return-object v0
.end method

.method public zzwY()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabr;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbai;->disconnect()V

    return-void
.end method
