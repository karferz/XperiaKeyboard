.class public Lcom/google/android/gms/internal/zzry;
.super Lcom/google/android/gms/internal/zzsa;


# instance fields
.field private final zzadG:Lcom/google/android/gms/internal/zzsi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzsc;Lcom/google/android/gms/internal/zzsd;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzsa;-><init>(Lcom/google/android/gms/internal/zzsc;)V

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/zzsd;->zzj(Lcom/google/android/gms/internal/zzsc;)Lcom/google/android/gms/internal/zzsi;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzadG:Lcom/google/android/gms/internal/zzsi;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzry;)Lcom/google/android/gms/internal/zzsi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzadG:Lcom/google/android/gms/internal/zzsi;

    return-object v0
.end method


# virtual methods
.method onServiceConnected()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzadG:Lcom/google/android/gms/internal/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi;->onServiceConnected()V

    return-void
.end method

.method public setLocalDispatchPeriod(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zzob()V

    const-string v0, "setLocalDispatchPeriod (sec)"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzry;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zznU()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzry$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzry$1;-><init>(Lcom/google/android/gms/internal/zzry;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzadG:Lcom/google/android/gms/internal/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi;->start()V

    return-void
.end method

.method public zzW(Z)V
    .locals 2

    const-string v0, "Network connectivity status changed"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/google/android/gms/internal/zzry;->zza(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zznU()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzry$2;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzry$2;-><init>(Lcom/google/android/gms/internal/zzry;Z)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzse;)J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zzob()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzadG:Lcom/google/android/gms/internal/zzsi;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzsi;->zza(Lcom/google/android/gms/internal/zzse;Z)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzry;->zzadG:Lcom/google/android/gms/internal/zzsi;

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/zzsi;->zzc(Lcom/google/android/gms/internal/zzse;)V

    :cond_0
    return-wide v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzsu;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zznU()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzry$6;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzry$6;-><init>(Lcom/google/android/gms/internal/zzry;Lcom/google/android/gms/internal/zzsu;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzsz;)V
    .locals 2

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zzob()V

    const-string v0, "Hit delivery requested"

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/zzry;->zzb(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zznU()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzry$4;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/zzry$4;-><init>(Lcom/google/android/gms/internal/zzry;Lcom/google/android/gms/internal/zzsz;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zza(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 2

    const-string v0, "campaign param can\'t be empty"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzh(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zznU()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzry$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/zzry$3;-><init>(Lcom/google/android/gms/internal/zzry;Ljava/lang/String;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected zzmS()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzadG:Lcom/google/android/gms/internal/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi;->initialize()V

    return-void
.end method

.method public zznK()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zznU()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzry$5;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzry$5;-><init>(Lcom/google/android/gms/internal/zzry;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zzh;->zzg(Ljava/lang/Runnable;)V

    return-void
.end method

.method public zznL()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzth;->zzak(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzti;->zzal(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.google.android.gms.analytics.ANALYTICS_DISPATCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.google.android.gms.analytics.AnalyticsService"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzsu;)V

    goto :goto_0
.end method

.method public zznM()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zznU()Lcom/google/android/gms/analytics/zzh;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzry$7;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/zzry$7;-><init>(Lcom/google/android/gms/internal/zzry;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/zzh;->zzc(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    const-wide/16 v2, 0x4

    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v1

    const-string v2, "syncDispatchLocalHits interrupted"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/zzry;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "syncDispatchLocalHits failed"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/zzry;->zze(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "syncDispatchLocalHits timed out"

    invoke-virtual {p0, v2, v1}, Lcom/google/android/gms/internal/zzry;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zznN()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zzob()V

    invoke-static {}, Lcom/google/android/gms/analytics/zzh;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzadG:Lcom/google/android/gms/internal/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi;->zznN()V

    return-void
.end method

.method public zznO()V
    .locals 1

    const-string v0, "Radio powered up"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzry;->zzbP(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zznL()V

    return-void
.end method

.method zznP()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzry;->zzmR()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry;->zzadG:Lcom/google/android/gms/internal/zzsi;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsi;->zznP()V

    return-void
.end method
