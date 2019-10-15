.class public Lcom/google/android/gms/internal/zzsy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzsn;


# instance fields
.field public zzacL:Ljava/lang/String;

.field public zzacM:Ljava/lang/String;

.field public zzagd:Ljava/lang/String;

.field public zzage:I

.field public zzagf:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/android/gms/internal/zzsy;->zzage:I

    iput v0, p0, Lcom/google/android/gms/internal/zzsy;->zzagf:I

    return-void
.end method


# virtual methods
.method public zzmY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzacL:Ljava/lang/String;

    return-object v0
.end method

.method public zzmZ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzacM:Ljava/lang/String;

    return-object v0
.end method

.method public zzpG()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzacL:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzpH()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzacM:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzpI()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzagd:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzpJ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsy;->zzagd:Ljava/lang/String;

    return-object v0
.end method

.method public zzpK()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzsy;->zzage:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzpL()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzsy;->zzage:I

    return v0
.end method

.method public zzpM()Z
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/zzsy;->zzagf:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzpN()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/internal/zzsy;->zzagf:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
