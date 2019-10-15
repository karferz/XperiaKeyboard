.class Lcom/google/android/gms/tagmanager/zzp$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzp$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzp;->zzaR(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private zzbFA:Ljava/lang/Long;

.field final synthetic zzbFB:Z

.field final synthetic zzbFz:Lcom/google/android/gms/tagmanager/zzp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzp;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$3;->zzbFz:Lcom/google/android/gms/tagmanager/zzp;

    iput-boolean p2, p0, Lcom/google/android/gms/tagmanager/zzp$3;->zzbFB:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private zzQn()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$3;->zzbFA:Ljava/lang/Long;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$3;->zzbFz:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zzc(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/tagmanager/zzq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/zzq;->zzQp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$3;->zzbFA:Ljava/lang/Long;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$3;->zzbFA:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public zzb(Lcom/google/android/gms/tagmanager/Container;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/google/android/gms/tagmanager/zzp$3;->zzbFB:Z

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->getLastRefreshTime()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/zzp$3;->zzQn()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/google/android/gms/tagmanager/zzp$3;->zzbFz:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v4}, Lcom/google/android/gms/tagmanager/zzp;->zzd(Lcom/google/android/gms/tagmanager/zzp;)Lcom/google/android/gms/common/util/zze;

    move-result-object v4

    invoke-interface {v4}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/tagmanager/Container;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
