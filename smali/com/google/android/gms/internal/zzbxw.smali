.class public final Lcom/google/android/gms/internal/zzbxw;
.super Ljava/lang/Object;


# static fields
.field static final zzcuK:I

.field static final zzcuL:I

.field static final zzcuM:I

.field static final zzcuN:I

.field public static final zzcuO:[I

.field public static final zzcuP:[J

.field public static final zzcuQ:[F

.field public static final zzcuR:[D

.field public static final zzcuS:[Z

.field public static final zzcuT:[Ljava/lang/String;

.field public static final zzcuU:[[B

.field public static final zzcuV:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {v2, v4}, Lcom/google/android/gms/internal/zzbxw;->zzO(II)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zzbxw;->zzcuK:I

    const/4 v0, 0x4

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzbxw;->zzO(II)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zzbxw;->zzcuL:I

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/zzbxw;->zzO(II)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zzbxw;->zzcuM:I

    invoke-static {v4, v3}, Lcom/google/android/gms/internal/zzbxw;->zzO(II)I

    move-result v0

    sput v0, Lcom/google/android/gms/internal/zzbxw;->zzcuN:I

    new-array v0, v1, [I

    sput-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcuO:[I

    new-array v0, v1, [J

    sput-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcuP:[J

    new-array v0, v1, [F

    sput-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcuQ:[F

    new-array v0, v1, [D

    sput-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcuR:[D

    new-array v0, v1, [Z

    sput-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcuS:[Z

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcuT:[Ljava/lang/String;

    new-array v0, v1, [[B

    sput-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcuU:[[B

    new-array v0, v1, [B

    sput-object v0, Lcom/google/android/gms/internal/zzbxw;->zzcuV:[B

    return-void
.end method

.method public static zzO(II)I
    .locals 1

    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static final zzb(Lcom/google/android/gms/internal/zzbxl;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->getPosition()I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxl;->zzqX(I)Z

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbxl;->zzaen()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbxl;->zzqX(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/zzbxl;->zzrb(I)V

    return v0
.end method

.method static zzrq(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method public static zzrr(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method
