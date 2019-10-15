.class public Lcom/google/android/gms/analytics/zza;
.super Lcom/google/android/gms/analytics/zzg;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzg",
        "<",
        "Lcom/google/android/gms/analytics/zza;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzabn:Lcom/google/android/gms/internal/zzsc;

.field private zzabo:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzsc;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsc;->zznU()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzsc;->zznR()Lcom/google/android/gms/common/util/zze;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/analytics/zzg;-><init>(Lcom/google/android/gms/analytics/zzh;Lcom/google/android/gms/common/util/zze;)V

    iput-object p1, p0, Lcom/google/android/gms/analytics/zza;->zzabn:Lcom/google/android/gms/internal/zzsc;

    return-void
.end method


# virtual methods
.method public enableAdvertisingIdCollection(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/analytics/zza;->zzabo:Z

    return-void
.end method

.method protected zza(Lcom/google/android/gms/analytics/zze;)V
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/zzrt;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/zze;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/analytics/zzf;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzrt;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrt;->zzmy()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->zzabn:Lcom/google/android/gms/internal/zzsc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsc;->zzoi()Lcom/google/android/gms/internal/zzsk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsk;->zzoQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrt;->setClientId(Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/google/android/gms/analytics/zza;->zzabo:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzrt;->zznv()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->zzabn:Lcom/google/android/gms/internal/zzsc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsc;->zzoh()Lcom/google/android/gms/internal/zzrx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrx;->zznG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/zzrt;->zzbF(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzrx;->zznw()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrt;->zzS(Z)V

    :cond_1
    return-void
.end method

.method public zzbo(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/analytics/zza;->zzbp(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzmO()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/analytics/zzb;

    iget-object v2, p0, Lcom/google/android/gms/analytics/zza;->zzabn:Lcom/google/android/gms/internal/zzsc;

    invoke-direct {v1, v2, p1}, Lcom/google/android/gms/analytics/zzb;-><init>(Lcom/google/android/gms/internal/zzsc;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public zzbp(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/google/android/gms/analytics/zzb;->zzbq(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzmO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/analytics/zzi;

    invoke-interface {v0}, Lcom/google/android/gms/analytics/zzi;->zzmr()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method zzmn()Lcom/google/android/gms/internal/zzsc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/analytics/zza;->zzabn:Lcom/google/android/gms/internal/zzsc;

    return-object v0
.end method

.method public zzmo()Lcom/google/android/gms/analytics/zze;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/analytics/zza;->zzmN()Lcom/google/android/gms/analytics/zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zze;->zzmC()Lcom/google/android/gms/analytics/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->zzabn:Lcom/google/android/gms/internal/zzsc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsc;->zznZ()Lcom/google/android/gms/internal/zzsh;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsh;->zzoy()Lcom/google/android/gms/internal/zzrk;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zze;->zza(Lcom/google/android/gms/analytics/zzf;)V

    iget-object v1, p0, Lcom/google/android/gms/analytics/zza;->zzabn:Lcom/google/android/gms/internal/zzsc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzsc;->zzoa()Lcom/google/android/gms/internal/zzss;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzss;->zzpB()Lcom/google/android/gms/internal/zzrp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/analytics/zze;->zza(Lcom/google/android/gms/analytics/zzf;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/analytics/zza;->zzd(Lcom/google/android/gms/analytics/zze;)V

    return-object v0
.end method
