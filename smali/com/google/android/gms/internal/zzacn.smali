.class public Lcom/google/android/gms/internal/zzacn;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzacn;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaGR:Lcom/google/android/gms/internal/zzacp;

.field final zzaiI:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaco;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaco;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzacn;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/internal/zzacp;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzacn;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzacn;->zzaGR:Lcom/google/android/gms/internal/zzacp;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzacp;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzacn;->zzaiI:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzacn;->zzaGR:Lcom/google/android/gms/internal/zzacp;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzacs$zzb;)Lcom/google/android/gms/internal/zzacn;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzacs$zzb",
            "<**>;)",
            "Lcom/google/android/gms/internal/zzacn;"
        }
    .end annotation

    instance-of v0, p0, Lcom/google/android/gms/internal/zzacp;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/zzacn;

    check-cast p0, Lcom/google/android/gms/internal/zzacp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzacn;-><init>(Lcom/google/android/gms/internal/zzacp;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported safe parcelable field converter class."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaco;->zza(Lcom/google/android/gms/internal/zzacn;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzyo()Lcom/google/android/gms/internal/zzacp;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacn;->zzaGR:Lcom/google/android/gms/internal/zzacp;

    return-object v0
.end method

.method public zzyp()Lcom/google/android/gms/internal/zzacs$zzb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzacs$zzb",
            "<**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacn;->zzaGR:Lcom/google/android/gms/internal/zzacp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzacn;->zzaGR:Lcom/google/android/gms/internal/zzacp;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There was no converter wrapped in this ConverterWrapper."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
