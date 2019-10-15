.class public Lcom/google/android/gms/internal/zzaam;
.super Lcom/google/android/gms/internal/zzaae;


# instance fields
.field private final zzaBh:Lcom/google/android/gms/common/util/zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/util/zza",
            "<",
            "Lcom/google/android/gms/internal/zzzz",
            "<*>;>;"
        }
    .end annotation
.end field

.field private zzayX:Lcom/google/android/gms/internal/zzaax;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzabf;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaae;-><init>(Lcom/google/android/gms/internal/zzabf;)V

    new-instance v0, Lcom/google/android/gms/common/util/zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/util/zza;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaam;->zzaBh:Lcom/google/android/gms/common/util/zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaam;->zzaCR:Lcom/google/android/gms/internal/zzabf;

    const-string v1, "ConnectionlessLifecycleHelper"

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/zzabf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzabe;)V

    return-void
.end method

.method public static zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzzz;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/internal/zzaax;",
            "Lcom/google/android/gms/internal/zzzz",
            "<*>;)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/internal/zzaam;->zzs(Landroid/app/Activity;)Lcom/google/android/gms/internal/zzabf;

    move-result-object v1

    const-string v0, "ConnectionlessLifecycleHelper"

    const-class v2, Lcom/google/android/gms/internal/zzaam;

    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/internal/zzabf;->zza(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/zzabe;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzaam;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzaam;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzaam;-><init>(Lcom/google/android/gms/internal/zzabf;)V

    :cond_0
    iput-object p1, v0, Lcom/google/android/gms/internal/zzaam;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzaam;->zza(Lcom/google/android/gms/internal/zzzz;)V

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaam;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzzz;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzz",
            "<*>;)V"
        }
    .end annotation

    const-string v0, "ApiKey cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaam;->zzaBh:Lcom/google/android/gms/common/util/zza;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/util/zza;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaae;->onStart()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaam;->zzaBh:Lcom/google/android/gms/common/util/zza;

    invoke-virtual {v0}, Lcom/google/android/gms/common/util/zza;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaam;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/internal/zzaam;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/zzaae;->onStop()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaam;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaax;->zzb(Lcom/google/android/gms/internal/zzaam;)V

    return-void
.end method

.method protected zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaam;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/common/ConnectionResult;I)V

    return-void
.end method

.method protected zzvx()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaam;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaax;->zzvx()V

    return-void
.end method

.method zzwb()Lcom/google/android/gms/common/util/zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/util/zza",
            "<",
            "Lcom/google/android/gms/internal/zzzz",
            "<*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaam;->zzaBh:Lcom/google/android/gms/common/util/zza;

    return-object v0
.end method
