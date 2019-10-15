.class public Lcom/google/android/gms/internal/zzabj;
.super Lcom/google/android/gms/internal/zzaae;


# instance fields
.field private zzazE:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzabf;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaae;-><init>(Lcom/google/android/gms/internal/zzabf;)V

    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzaCR:Lcom/google/android/gms/internal/zzabf;

    const-string v1, "GmsAvailabilityHelper"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/zzabf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzabe;)V

    return-void
.end method

.method public static zzu(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzabj;
    .locals 3

    invoke-static {p0}, Lcom/google/android/gms/internal/zzabj;->zzs(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzabf;

    move-result-object v1

    const-string v0, "GmsAvailabilityHelper"

    const-class v2, Lcom/google/android/gms/internal/zzabj;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzabf;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzabe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzabj;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/google/android/gms/internal/zzabj;->zzazE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzabj;->zzazE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/zzabj;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzabj;-><init>(Lcom/google/android/gms/internal/zzabf;)V

    goto :goto_0
.end method


# virtual methods
.method public getTask()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaae;->onDestroy()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Host activity was destroyed before Google Play services could be made available."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzb;->zzl(Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/zza;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public zzk(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzabj;->zzb(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected zzvx()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazn:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzabj;->zzaCR:Lcom/google/android/gms/internal/zzabf;

    invoke-interface {v1}, Lcom/google/android/gms/internal/zzabf;->zzwV()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzabj;->zzazE:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzabj;->zzk(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method
