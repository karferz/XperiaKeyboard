.class public final Lcom/google/android/gms/internal/zzbaj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/Api$ApiOptions$Optional;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbaj$zza;
    }
.end annotation


# static fields
.field public static final zzbEm:Lcom/google/android/gms/internal/zzbaj;


# instance fields
.field private final zzajv:Z

.field private final zzajw:Ljava/lang/String;

.field private final zzakm:Z

.field private final zzakn:Ljava/lang/String;

.field private final zzbEn:Z

.field private final zzbEo:Z

.field private final zzbEp:Ljava/lang/Long;

.field private final zzbEq:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbaj$zza;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbaj$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbaj$zza;->zzPN()Lcom/google/android/gms/internal/zzbaj;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbaj;->zzbEm:Lcom/google/android/gms/internal/zzbaj;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbaj;->zzbEn:Z

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzbaj;->zzajv:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbaj;->zzajw:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zzbaj;->zzakm:Z

    iput-boolean p6, p0, Lcom/google/android/gms/internal/zzbaj;->zzbEo:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbaj;->zzakn:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzbaj;->zzbEp:Ljava/lang/Long;

    iput-object p8, p0, Lcom/google/android/gms/internal/zzbaj;->zzbEq:Ljava/lang/Long;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;Lcom/google/android/gms/internal/zzbaj$1;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/internal/zzbaj;-><init>(ZZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/Long;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public getServerClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaj;->zzajw:Ljava/lang/String;

    return-object v0
.end method

.method public isIdTokenRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbaj;->zzajv:Z

    return v0
.end method

.method public zzPJ()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbaj;->zzbEn:Z

    return v0
.end method

.method public zzPK()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbaj;->zzbEo:Z

    return v0
.end method

.method public zzPL()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaj;->zzbEp:Ljava/lang/Long;

    return-object v0
.end method

.method public zzPM()Ljava/lang/Long;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaj;->zzbEq:Ljava/lang/Long;

    return-object v0
.end method

.method public zzrl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbaj;->zzakm:Z

    return v0
.end method

.method public zzrm()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbaj;->zzakn:Ljava/lang/String;

    return-object v0
.end method
