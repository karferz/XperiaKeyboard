.class public abstract Lcom/google/android/gms/analytics/zzg;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/android/gms/analytics/zzg;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzace:Lcom/google/android/gms/analytics/zzh;

.field protected final zzacf:Lcom/google/android/gms/analytics/zze;

.field private final zzacg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/analytics/zzh;Lcom/google/android/gms/common/util/zze;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/analytics/zzg;->zzace:Lcom/google/android/gms/analytics/zzh;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzg;->zzacg:Ljava/util/List;

    new-instance v0, Lcom/google/android/gms/analytics/zze;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/analytics/zze;-><init>(Lcom/google/android/gms/analytics/zzg;Lcom/google/android/gms/common/util/zze;)V

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zze;->zzmM()V

    iput-object v0, p0, Lcom/google/android/gms/analytics/zzg;->zzacf:Lcom/google/android/gms/analytics/zze;

    return-void
.end method


# virtual methods
.method protected zza(Lcom/google/android/gms/analytics/zze;)V
    .locals 0

    return-void
.end method

.method protected zzd(Lcom/google/android/gms/analytics/zze;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzg;->zzacg:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected zzmK()Lcom/google/android/gms/analytics/zzh;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzg;->zzace:Lcom/google/android/gms/analytics/zzh;

    return-object v0
.end method

.method public zzmN()Lcom/google/android/gms/analytics/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzg;->zzacf:Lcom/google/android/gms/analytics/zze;

    return-object v0
.end method

.method public zzmO()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/analytics/zzi;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzg;->zzacf:Lcom/google/android/gms/analytics/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zze;->zzmE()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzmo()Lcom/google/android/gms/analytics/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zzg;->zzacf:Lcom/google/android/gms/analytics/zze;

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zze;->zzmC()Lcom/google/android/gms/analytics/zze;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zzg;->zzd(Lcom/google/android/gms/analytics/zze;)V

    return-object v0
.end method
