.class public final Lcom/google/android/gms/internal/zzrp;
.super Lcom/google/android/gms/analytics/zzf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/analytics/zzf",
        "<",
        "Lcom/google/android/gms/internal/zzrp;",
        ">;"
    }
.end annotation


# instance fields
.field public zzMy:I

.field public zzMz:I

.field private zzacX:Ljava/lang/String;

.field public zzacY:I

.field public zzacZ:I

.field public zzada:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/analytics/zzf;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzacX:Ljava/lang/String;

    return-object v0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzrp;->zzacX:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "language"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzrp;->zzacX:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenColors"

    iget v2, p0, Lcom/google/android/gms/internal/zzrp;->zzacY:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzrp;->zzMy:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "screenHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzrp;->zzMz:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportWidth"

    iget v2, p0, Lcom/google/android/gms/internal/zzrp;->zzacZ:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "viewportHeight"

    iget v2, p0, Lcom/google/android/gms/internal/zzrp;->zzada:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzrp;->zzj(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzrp;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzacY:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzacY:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrp;->zzaA(I)V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzMy:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzMy:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrp;->zzaB(I)V

    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzMz:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzMz:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrp;->zzaC(I)V

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzacZ:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzacZ:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrp;->zzaD(I)V

    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzada:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzada:I

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrp;->zzaE(I)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzacX:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzrp;->zzacX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzrp;->setLanguage(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public zzaA(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzrp;->zzacY:I

    return-void
.end method

.method public zzaB(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzrp;->zzMy:I

    return-void
.end method

.method public zzaC(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzrp;->zzMz:I

    return-void
.end method

.method public zzaD(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzrp;->zzacZ:I

    return-void
.end method

.method public zzaE(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/zzrp;->zzada:I

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/analytics/zzf;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzrp;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzrp;->zza(Lcom/google/android/gms/internal/zzrp;)V

    return-void
.end method

.method public zznk()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzacY:I

    return v0
.end method

.method public zznl()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzMy:I

    return v0
.end method

.method public zznm()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzMz:I

    return v0
.end method

.method public zznn()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzacZ:I

    return v0
.end method

.method public zzno()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzrp;->zzada:I

    return v0
.end method
