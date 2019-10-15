.class public Lcom/google/android/gms/internal/zzaax$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;
.implements Lcom/google/android/gms/internal/zzaah;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzaax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;",
        "Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;",
        "Lcom/google/android/gms/internal/zzaah;"
    }
.end annotation


# instance fields
.field private final zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

.field private zzaBL:Z

.field private final zzaCA:Lcom/google/android/gms/internal/zzaal;

.field private final zzaCB:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/internal/zzaab;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaCC:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzabh$zzb",
            "<*>;",
            "Lcom/google/android/gms/internal/zzabn;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaCD:I

.field private final zzaCE:Lcom/google/android/gms/internal/zzabr;

.field private zzaCF:Lcom/google/android/gms/common/ConnectionResult;

.field final synthetic zzaCx:Lcom/google/android/gms/internal/zzaax;

.field private final zzaCy:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/google/android/gms/internal/zzzx;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaCz:Lcom/google/android/gms/common/api/Api$zzb;

.field private final zzayU:Lcom/google/android/gms/internal/zzzz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzzz",
            "<TO;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/common/api/zzc;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/zzc",
            "<TO;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCy:Ljava/util/Queue;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCB:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCC:Ljava/util/Map;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCF:Lcom/google/android/gms/common/ConnectionResult;

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {p2, v0, p0}, Lcom/google/android/gms/common/api/zzc;->buildApiClient(Landroid/os/Looper;Lcom/google/android/gms/internal/zzaax$zza;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    instance-of v0, v0, Lcom/google/android/gms/common/internal/zzal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    check-cast v0, Lcom/google/android/gms/common/internal/zzal;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzal;->zzyn()Lcom/google/android/gms/common/api/Api$zzg;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCz:Lcom/google/android/gms/common/api/Api$zzb;

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/gms/common/api/zzc;->getApiKey()Lcom/google/android/gms/internal/zzzz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzayU:Lcom/google/android/gms/internal/zzzz;

    new-instance v0, Lcom/google/android/gms/internal/zzaal;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaal;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCA:Lcom/google/android/gms/internal/zzaal;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/zzc;->getInstanceId()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCD:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzrd()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaax;->zzb(Lcom/google/android/gms/internal/zzaax;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/google/android/gms/common/api/zzc;->createSignInCoordinator(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/internal/zzabr;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCE:Lcom/google/android/gms/internal/zzabr;

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCz:Lcom/google/android/gms/common/api/Api$zzb;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCE:Lcom/google/android/gms/internal/zzabr;

    goto :goto_1
.end method

.method private zzb(Lcom/google/android/gms/internal/zzzx;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCA:Lcom/google/android/gms/internal/zzaal;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaax$zza;->zzrd()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/zzzx;->zza(Lcom/google/android/gms/internal/zzaal;Z)V

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzzx;->zza(Lcom/google/android/gms/internal/zzaax$zza;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaax$zza;->onConnectionSuspended(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto :goto_0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzaax$zza;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaax$zza;->zzwF()V

    return-void
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzaax$zza;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaax$zza;->zzwG()V

    return-void
.end method

.method private zzj(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCB:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaab;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzayU:Lcom/google/android/gms/internal/zzzz;

    invoke-virtual {v0, v2, p1}, Lcom/google/android/gms/internal/zzaab;->zza(Lcom/google/android/gms/internal/zzzz;Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCB:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private zzwF()V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaax$zza;->zzwJ()V

    sget-object v0, Lcom/google/android/gms/common/ConnectionResult;->zzayj:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaax$zza;->zzj(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaax$zza;->zzwL()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    :try_start_0
    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaax$zza;->onConnectionSuspended(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaax$zza;->zzwH()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaax$zza;->zzwM()V

    return-void

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private zzwG()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaax$zza;->zzwJ()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaBL:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCA:Lcom/google/android/gms/internal/zzaal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaal;->zzwa()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzayU:Lcom/google/android/gms/internal/zzzz;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaax;->zzc(Lcom/google/android/gms/internal/zzaax;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xb

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzayU:Lcom/google/android/gms/internal/zzzz;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaax;->zzd(Lcom/google/android/gms/internal/zzaax;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;I)I

    return-void
.end method

.method private zzwH()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCy:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCy:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzx;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaax$zza;->zzb(Lcom/google/android/gms/internal/zzzx;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private zzwL()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaBL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzayU:Lcom/google/android/gms/internal/zzzz;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzayU:Lcom/google/android/gms/internal/zzzz;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaBL:Z

    :cond_0
    return-void
.end method

.method private zzwM()V
    .locals 4

    const/16 v3, 0xc

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzayU:Lcom/google/android/gms/internal/zzzz;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzayU:Lcom/google/android/gms/internal/zzzz;

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaax;->zzh(Lcom/google/android/gms/internal/zzaax;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zza(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzvh()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zzi(Lcom/google/android/gms/internal/zzaax;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaax;->zzg(Lcom/google/android/gms/internal/zzaax;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaax;->zzb(Lcom/google/android/gms/internal/zzaax;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zzi(Lcom/google/android/gms/internal/zzaax;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaax;->zzi(Lcom/google/android/gms/internal/zzaax;)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaax$zza;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/zzaax$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzayU:Lcom/google/android/gms/internal/zzzz;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zzaax$zzb;-><init>(Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzzz;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zze;->zzrd()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCE:Lcom/google/android/gms/internal/zzabr;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzabr;->zza(Lcom/google/android/gms/internal/zzabr$zza;)V

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v1, v0}, Lcom/google/android/gms/common/api/Api$zze;->zza(Lcom/google/android/gms/common/internal/zzf$zzf;)V

    goto :goto_0
.end method

.method public getInstanceId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCD:I

    return v0
.end method

.method isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    return v0
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaax$zza;->zzwF()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaax$zza$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaax$zza$1;-><init>(Lcom/google/android/gms/internal/zzaax$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 5
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zza(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCE:Lcom/google/android/gms/internal/zzabr;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCE:Lcom/google/android/gms/internal/zzabr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzabr;->zzwY()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaax$zza;->zzwJ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;I)I

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaax$zza;->zzj(Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/zzaax;->zzwD()Lcom/google/android/gms/common/api/Status;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaax$zza;->zzD(Lcom/google/android/gms/common/api/Status;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCy:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCF:Lcom/google/android/gms/common/ConnectionResult;

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/google/android/gms/internal/zzaax;->zzwE()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zze(Lcom/google/android/gms/internal/zzaax;)Lcom/google/android/gms/internal/zzaam;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zzf(Lcom/google/android/gms/internal/zzaax;)Ljava/util/Set;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzayU:Lcom/google/android/gms/internal/zzzz;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zze(Lcom/google/android/gms/internal/zzaax;)Lcom/google/android/gms/internal/zzaam;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCD:I

    invoke-virtual {v0, p1, v2}, Lcom/google/android/gms/internal/zzaam;->zzb(Lcom/google/android/gms/common/ConnectionResult;I)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    iget v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCD:I

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzaax;->zzc(Lcom/google/android/gms/common/ConnectionResult;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaBL:Z

    :cond_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaBL:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzayU:Lcom/google/android/gms/internal/zzzz;

    invoke-static {v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzaax;->zzc(Lcom/google/android/gms/internal/zzaax;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_6
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x11

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzayU:Lcom/google/android/gms/internal/zzzz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzzz;->zzvw()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x26

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "API: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not available on this device."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaax$zza;->zzD(Lcom/google/android/gms/common/api/Status;)V

    goto/16 :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaax$zza;->zzwG()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaax$zza$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaax$zza$2;-><init>(Lcom/google/android/gms/internal/zzaax$zza;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public resume()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zza(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaBL:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaax$zza;->connect()V

    :cond_0
    return-void
.end method

.method public signOut()V
    .locals 4
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zza(Landroid/os/Handler;)V

    sget-object v0, Lcom/google/android/gms/internal/zzaax;->zzaCn:Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaax$zza;->zzD(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCA:Lcom/google/android/gms/internal/zzaal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaal;->zzvZ()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzabh$zzb;

    new-instance v2, Lcom/google/android/gms/internal/zzzx$zze;

    new-instance v3, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v3}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/zzzx$zze;-><init>(Lcom/google/android/gms/internal/zzabh$zzb;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zzaax$zza;->zza(Lcom/google/android/gms/internal/zzzx;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaax$zza;->zzj(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    return-void
.end method

.method public zzD(Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zza(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCy:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzzx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzzx;->zzz(Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCy:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;Z)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaax$zza;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaax$zza$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzaax$zza$3;-><init>(Lcom/google/android/gms/internal/zzaax$zza;Lcom/google/android/gms/common/ConnectionResult;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/internal/zzzx;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zza(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaax$zza;->zzb(Lcom/google/android/gms/internal/zzzx;)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaax$zza;->zzwM()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCy:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCF:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCF:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCF:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaax$zza;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzaax$zza;->connect()V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaab;)V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zza(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCB:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzi(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1
    .param p1    # Lcom/google/android/gms/common/ConnectionResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zza(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzaax$zza;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public zzrd()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->zzrd()Z

    move-result v0

    return v0
.end method

.method public zzvU()Lcom/google/android/gms/common/api/Api$zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    return-object v0
.end method

.method public zzwI()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/internal/zzabh$zzb",
            "<*>;",
            "Lcom/google/android/gms/internal/zzabn;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCC:Ljava/util/Map;

    return-object v0
.end method

.method public zzwJ()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zza(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCF:Lcom/google/android/gms/common/ConnectionResult;

    return-void
.end method

.method public zzwK()Lcom/google/android/gms/common/ConnectionResult;
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zza(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCF:Lcom/google/android/gms/common/ConnectionResult;

    return-object v0
.end method

.method public zzwN()V
    .locals 1
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zza(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCC:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCA:Lcom/google/android/gms/internal/zzaal;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaal;->zzvY()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaax$zza;->zzwM()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto :goto_0
.end method

.method zzwO()Lcom/google/android/gms/internal/zzbai;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCE:Lcom/google/android/gms/internal/zzabr;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCE:Lcom/google/android/gms/internal/zzabr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzabr;->zzwO()Lcom/google/android/gms/internal/zzbai;

    move-result-object v0

    goto :goto_0
.end method

.method public zzwn()V
    .locals 3
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/16 v2, 0x8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaax;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zza(Landroid/os/Handler;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaBL:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaax$zza;->zzwL()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zzg(Lcom/google/android/gms/internal/zzaax;)Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaCx:Lcom/google/android/gms/internal/zzaax;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaax;->zzb(Lcom/google/android/gms/internal/zzaax;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "Connection timed out while waiting for Google Play services update to complete."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzaax$zza;->zzD(Lcom/google/android/gms/common/api/Status;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaax$zza;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const-string v1, "API failed to connect while resuming due to an unknown error."

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    goto :goto_0
.end method
