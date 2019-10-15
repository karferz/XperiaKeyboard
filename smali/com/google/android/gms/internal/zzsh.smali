.class public Lcom/google/android/gms/internal/zzsh;
.super Lcom/google/android/gms/internal/zzsa;


# instance fields
.field private final zzacl:Lcom/google/android/gms/internal/zzrk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsc;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzsa;-><init>(Lcom/google/android/gms/internal/zzsc;)V

    new-instance v0, Lcom/google/android/gms/internal/zzrk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzrk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzsh;->zzacl:Lcom/google/android/gms/internal/zzrk;

    return-void
.end method


# virtual methods
.method protected zzmS()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsh;->zznU()Lcom/google/android/gms/analytics/zzh;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/zzh;->zzmP()Lcom/google/android/gms/internal/zzrk;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsh;->zzacl:Lcom/google/android/gms/internal/zzrk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzrk;->zza(Lcom/google/android/gms/internal/zzrk;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsh;->zzmw()V

    return-void
.end method

.method public zzmw()V
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsh;->zzmB()Lcom/google/android/gms/internal/zztn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztn;->zzmY()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzsh;->zzacl:Lcom/google/android/gms/internal/zzrk;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/zzrk;->setAppName(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zztn;->zzmZ()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsh;->zzacl:Lcom/google/android/gms/internal/zzrk;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzrk;->setAppVersion(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public zzoy()Lcom/google/android/gms/internal/zzrk;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsh;->zzob()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsh;->zzacl:Lcom/google/android/gms/internal/zzrk;

    return-object v0
.end method
