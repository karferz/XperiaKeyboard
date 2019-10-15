.class public Lcom/google/android/gms/internal/zzsc;
.super Ljava/lang/Object;


# static fields
.field private static volatile zzadR:Lcom/google/android/gms/internal/zzsc;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzadS:Landroid/content/Context;

.field private final zzadT:Lcom/google/android/gms/internal/zzsp;

.field private final zzadU:Lcom/google/android/gms/internal/zztd;

.field private final zzadV:Lcom/google/android/gms/analytics/zzh;

.field private final zzadW:Lcom/google/android/gms/internal/zzry;

.field private final zzadX:Lcom/google/android/gms/internal/zzst;

.field private final zzadY:Lcom/google/android/gms/internal/zztn;

.field private final zzadZ:Lcom/google/android/gms/internal/zztg;

.field private final zzaea:Lcom/google/android/gms/analytics/GoogleAnalytics;

.field private final zzaeb:Lcom/google/android/gms/internal/zzsk;

.field private final zzaec:Lcom/google/android/gms/internal/zzrx;

.field private final zzaed:Lcom/google/android/gms/internal/zzsh;

.field private final zzaee:Lcom/google/android/gms/internal/zzss;

.field private final zzuP:Lcom/google/android/gms/common/util/zze;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzsd;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsd;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Application context can\'t be null"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsd;->zzod()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsc;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsc;->zzadS:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzsd;->zzh(Lcom/google/android/gms/internal/zzsc;)Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsc;->zzuP:Lcom/google/android/gms/common/util/zze;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzsd;->zzg(Lcom/google/android/gms/internal/zzsc;)Lcom/google/android/gms/internal/zzsp;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsc;->zzadT:Lcom/google/android/gms/internal/zzsp;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzsd;->zzf(Lcom/google/android/gms/internal/zzsc;)Lcom/google/android/gms/internal/zztd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zztd;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsc;->zzadU:Lcom/google/android/gms/internal/zztd;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zznS()Lcom/google/android/gms/internal/zztd;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzsb;->VERSION:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit16 v3, v3, 0x86

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Google Analytics "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is starting up. To enable debug logging on a device run:\n  adb shell setprop log.tag.GAv4 DEBUG\n  adb logcat -s GAv4"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/zztd;->zzbR(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzsd;->zzq(Lcom/google/android/gms/internal/zzsc;)Lcom/google/android/gms/internal/zztg;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zztg;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsc;->zzadZ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzsd;->zze(Lcom/google/android/gms/internal/zzsc;)Lcom/google/android/gms/internal/zztn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zztn;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsc;->zzadY:Lcom/google/android/gms/internal/zztn;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzsd;->zzl(Lcom/google/android/gms/internal/zzsc;)Lcom/google/android/gms/internal/zzry;

    move-result-object v1

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzsd;->zzd(Lcom/google/android/gms/internal/zzsc;)Lcom/google/android/gms/internal/zzsk;

    move-result-object v2

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzsd;->zzc(Lcom/google/android/gms/internal/zzsc;)Lcom/google/android/gms/internal/zzrx;

    move-result-object v3

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzsd;->zzb(Lcom/google/android/gms/internal/zzsc;)Lcom/google/android/gms/internal/zzsh;

    move-result-object v4

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzsd;->zza(Lcom/google/android/gms/internal/zzsc;)Lcom/google/android/gms/internal/zzss;

    move-result-object v5

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzsd;->zzao(Landroid/content/Context;)Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsc;->zzoc()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/google/android/gms/analytics/zzh;->zza(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadV:Lcom/google/android/gms/analytics/zzh;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzsd;->zzi(Lcom/google/android/gms/internal/zzsc;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzsk;->initialize()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsc;->zzaeb:Lcom/google/android/gms/internal/zzsk;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/zzrx;->initialize()V

    iput-object v3, p0, Lcom/google/android/gms/internal/zzsc;->zzaec:Lcom/google/android/gms/internal/zzrx;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/zzsh;->initialize()V

    iput-object v4, p0, Lcom/google/android/gms/internal/zzsc;->zzaed:Lcom/google/android/gms/internal/zzsh;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzss;->initialize()V

    iput-object v5, p0, Lcom/google/android/gms/internal/zzsc;->zzaee:Lcom/google/android/gms/internal/zzss;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/zzsd;->zzp(Lcom/google/android/gms/internal/zzsc;)Lcom/google/android/gms/internal/zzst;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzst;->initialize()V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzsc;->zzadX:Lcom/google/android/gms/internal/zzst;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzry;->initialize()V

    iput-object v1, p0, Lcom/google/android/gms/internal/zzsc;->zzadW:Lcom/google/android/gms/internal/zzry;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->initialize()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzaea:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzry;->start()V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzsa;)V
    .locals 2

    const-string v0, "Analytics service not created/initialized"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsa;->isInitialized()Z

    move-result v0

    const-string v1, "Analytics service not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    return-void
.end method

.method public static zzan(Landroid/content/Context;)Lcom/google/android/gms/internal/zzsc;
    .locals 8

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/google/android/gms/internal/zzsc;->zzadR:Lcom/google/android/gms/internal/zzsc;

    if-nez v0, :cond_1

    const-class v1, Lcom/google/android/gms/internal/zzsc;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/zzsc;->zzadR:Lcom/google/android/gms/internal/zzsc;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/common/util/zzi;->zzzc()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v2

    new-instance v4, Lcom/google/android/gms/internal/zzsd;

    invoke-direct {v4, p0}, Lcom/google/android/gms/internal/zzsd;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/gms/internal/zzsc;

    invoke-direct {v5, v4}, Lcom/google/android/gms/internal/zzsc;-><init>(Lcom/google/android/gms/internal/zzsd;)V

    sput-object v5, Lcom/google/android/gms/internal/zzsc;->zzadR:Lcom/google/android/gms/internal/zzsc;

    invoke-static {}, Lcom/google/android/gms/analytics/GoogleAnalytics;->zzmx()V

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    sget-object v0, Lcom/google/android/gms/internal/zzsw;->zzafZ:Lcom/google/android/gms/internal/zzsw$zza;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsw$zza;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    invoke-virtual {v5}, Lcom/google/android/gms/internal/zzsc;->zznS()Lcom/google/android/gms/internal/zztd;

    move-result-object v0

    const-string v4, "Slow initialization (ms)"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v4, v2, v3}, Lcom/google/android/gms/internal/zztd;->zzc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/zzsc;->zzadR:Lcom/google/android/gms/internal/zzsc;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public zzmA()Lcom/google/android/gms/internal/zzry;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadW:Lcom/google/android/gms/internal/zzry;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/internal/zzsa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadW:Lcom/google/android/gms/internal/zzry;

    return-object v0
.end method

.method public zzmB()Lcom/google/android/gms/internal/zztn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadY:Lcom/google/android/gms/internal/zztn;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/internal/zzsa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadY:Lcom/google/android/gms/internal/zztn;

    return-object v0
.end method

.method public zzmR()V
    .locals 0

    invoke-static {}, Lcom/google/android/gms/analytics/zzh;->zzmR()V

    return-void
.end method

.method public zznR()Lcom/google/android/gms/common/util/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzuP:Lcom/google/android/gms/common/util/zze;

    return-object v0
.end method

.method public zznS()Lcom/google/android/gms/internal/zztd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadU:Lcom/google/android/gms/internal/zztd;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/internal/zzsa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadU:Lcom/google/android/gms/internal/zztd;

    return-object v0
.end method

.method public zznT()Lcom/google/android/gms/internal/zzsp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadT:Lcom/google/android/gms/internal/zzsp;

    return-object v0
.end method

.method public zznU()Lcom/google/android/gms/analytics/zzh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadV:Lcom/google/android/gms/analytics/zzh;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadV:Lcom/google/android/gms/analytics/zzh;

    return-object v0
.end method

.method public zznV()Lcom/google/android/gms/internal/zzst;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadX:Lcom/google/android/gms/internal/zzst;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/internal/zzsa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadX:Lcom/google/android/gms/internal/zzst;

    return-object v0
.end method

.method public zznW()Lcom/google/android/gms/internal/zztg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadZ:Lcom/google/android/gms/internal/zztg;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/internal/zzsa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadZ:Lcom/google/android/gms/internal/zztg;

    return-object v0
.end method

.method public zznZ()Lcom/google/android/gms/internal/zzsh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzaed:Lcom/google/android/gms/internal/zzsh;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/internal/zzsa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzaed:Lcom/google/android/gms/internal/zzsh;

    return-object v0
.end method

.method public zzoa()Lcom/google/android/gms/internal/zzss;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzaee:Lcom/google/android/gms/internal/zzss;

    return-object v0
.end method

.method protected zzoc()Ljava/lang/Thread$UncaughtExceptionHandler;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzsc$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzsc$1;-><init>(Lcom/google/android/gms/internal/zzsc;)V

    return-object v0
.end method

.method public zzod()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadS:Landroid/content/Context;

    return-object v0
.end method

.method public zzoe()Lcom/google/android/gms/internal/zztd;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadU:Lcom/google/android/gms/internal/zztd;

    return-object v0
.end method

.method public zzof()Lcom/google/android/gms/analytics/GoogleAnalytics;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzaea:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzaea:Lcom/google/android/gms/analytics/GoogleAnalytics;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->isInitialized()Z

    move-result v0

    const-string v1, "Analytics instance not initialized"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzaea:Lcom/google/android/gms/analytics/GoogleAnalytics;

    return-object v0
.end method

.method public zzog()Lcom/google/android/gms/internal/zztg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadZ:Lcom/google/android/gms/internal/zztg;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadZ:Lcom/google/android/gms/internal/zztg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztg;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzadZ:Lcom/google/android/gms/internal/zztg;

    goto :goto_0
.end method

.method public zzoh()Lcom/google/android/gms/internal/zzrx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzaec:Lcom/google/android/gms/internal/zzrx;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/internal/zzsa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzaec:Lcom/google/android/gms/internal/zzrx;

    return-object v0
.end method

.method public zzoi()Lcom/google/android/gms/internal/zzsk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzaeb:Lcom/google/android/gms/internal/zzsk;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzsc;->zza(Lcom/google/android/gms/internal/zzsa;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsc;->zzaeb:Lcom/google/android/gms/internal/zzsk;

    return-object v0
.end method
