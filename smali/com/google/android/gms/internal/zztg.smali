.class public Lcom/google/android/gms/internal/zztg;
.super Lcom/google/android/gms/internal/zzsa;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zztg$zza;
    }
.end annotation


# instance fields
.field private zzagD:Landroid/content/SharedPreferences;

.field private zzagE:J

.field private zzagF:J

.field private final zzagG:Lcom/google/android/gms/internal/zztg$zza;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/zzsc;)V
    .locals 7

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzsa;-><init>(Lcom/google/android/gms/internal/zzsc;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zztg;->zzagF:J

    new-instance v1, Lcom/google/android/gms/internal/zztg$zza;

    const-string v3, "monitoring"

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg;->zznT()Lcom/google/android/gms/internal/zzsp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsp;->zzpz()J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/zztg$zza;-><init>(Lcom/google/android/gms/internal/zztg;Ljava/lang/String;JLcom/google/android/gms/internal/zztg$1;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/zztg;->zzagG:Lcom/google/android/gms/internal/zztg$zza;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zztg;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztg;->zzagD:Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public zzcb(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg;->zzob()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zztg;->zzagD:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "installation_campaign"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failed to commit campaign data"

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zztg;->zzbS(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v1, "installation_campaign"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method protected zzmS()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.google.android.gms.analytics.prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zztg;->zzagD:Landroid/content/SharedPreferences;

    return-void
.end method

.method public zzqe()J
    .locals 4

    const-wide/16 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg;->zzob()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zztg;->zzagE:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztg;->zzagD:Landroid/content/SharedPreferences;

    const-string v1, "first_run"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    iput-wide v0, p0, Lcom/google/android/gms/internal/zztg;->zzagE:J

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zztg;->zzagE:J

    return-wide v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zztg;->zzagD:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "first_run"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Failed to commit first run time"

    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/zztg;->zzbS(Ljava/lang/String;)V

    :cond_2
    iput-wide v0, p0, Lcom/google/android/gms/internal/zztg;->zzagE:J

    goto :goto_0
.end method

.method public zzqf()Lcom/google/android/gms/internal/zztj;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zztj;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg;->zzqe()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/zztj;-><init>(Lcom/google/android/gms/common/util/zze;J)V

    return-object v0
.end method

.method public zzqg()J
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg;->zzob()V

    iget-wide v0, p0, Lcom/google/android/gms/internal/zztg;->zzagF:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zztg;->zzagD:Landroid/content/SharedPreferences;

    const-string v1, "last_dispatch"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/zztg;->zzagF:J

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/zztg;->zzagF:J

    return-wide v0
.end method

.method public zzqh()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg;->zzob()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/zze;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/zztg;->zzagD:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_dispatch"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    iput-wide v0, p0, Lcom/google/android/gms/internal/zztg;->zzagF:J

    return-void
.end method

.method public zzqi()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg;->zzmR()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zztg;->zzob()V

    iget-object v1, p0, Lcom/google/android/gms/internal/zztg;->zzagD:Landroid/content/SharedPreferences;

    const-string v2, "installation_campaign"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public zzqj()Lcom/google/android/gms/internal/zztg$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zztg;->zzagG:Lcom/google/android/gms/internal/zztg$zza;

    return-object v0
.end method
