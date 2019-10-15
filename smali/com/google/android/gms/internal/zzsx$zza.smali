.class Lcom/google/android/gms/internal/zzsx$zza;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzso$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzsx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/zzso$zza",
        "<",
        "Lcom/google/android/gms/internal/zzsy;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzadO:Lcom/google/android/gms/internal/zzsc;

.field private final zzagc:Lcom/google/android/gms/internal/zzsy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzsc;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsx$zza;->zzadO:Lcom/google/android/gms/internal/zzsc;

    new-instance v0, Lcom/google/android/gms/internal/zzsy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzsy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsx$zza;->zzagc:Lcom/google/android/gms/internal/zzsy;

    return-void
.end method


# virtual methods
.method public zzd(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "ga_dispatchPeriod"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsx$zza;->zzagc:Lcom/google/android/gms/internal/zzsy;

    iput p2, v0, Lcom/google/android/gms/internal/zzsy;->zzage:I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsx$zza;->zzadO:Lcom/google/android/gms/internal/zzsc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->zznS()Lcom/google/android/gms/internal/zztd;

    move-result-object v0

    const-string v1, "Int xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zztd;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zze(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "ga_dryRun"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsx$zza;->zzagc:Lcom/google/android/gms/internal/zzsy;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, v1, Lcom/google/android/gms/internal/zzsy;->zzagf:I

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsx$zza;->zzadO:Lcom/google/android/gms/internal/zzsc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->zznS()Lcom/google/android/gms/internal/zztd;

    move-result-object v0

    const-string v1, "Bool xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zztd;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public synthetic zzoV()Lcom/google/android/gms/internal/zzsn;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsx$zza;->zzpF()Lcom/google/android/gms/internal/zzsy;

    move-result-object v0

    return-object v0
.end method

.method public zzp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public zzpF()Lcom/google/android/gms/internal/zzsy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsx$zza;->zzagc:Lcom/google/android/gms/internal/zzsy;

    return-object v0
.end method

.method public zzq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "ga_appName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsx$zza;->zzagc:Lcom/google/android/gms/internal/zzsy;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzsy;->zzacL:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "ga_appVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsx$zza;->zzagc:Lcom/google/android/gms/internal/zzsy;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzsy;->zzacM:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "ga_logLevel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsx$zza;->zzagc:Lcom/google/android/gms/internal/zzsy;

    iput-object p2, v0, Lcom/google/android/gms/internal/zzsy;->zzagd:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzsx$zza;->zzadO:Lcom/google/android/gms/internal/zzsc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsc;->zznS()Lcom/google/android/gms/internal/zztd;

    move-result-object v0

    const-string v1, "String xml configuration name not recognized"

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/zztd;->zzd(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
