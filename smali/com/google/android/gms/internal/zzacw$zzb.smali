.class public Lcom/google/android/gms/internal/zzacw$zzb;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzacw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzacw$zzb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field final zzaB:Ljava/lang/String;

.field final zzaHl:Lcom/google/android/gms/internal/zzacs$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzacv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzacv;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzacw$zzb;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/zzacs$zza;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzacw$zzb;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzacw$zzb;->zzaB:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzacw$zzb;->zzaHl:Lcom/google/android/gms/internal/zzacs$zza;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzacs$zza;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzacs$zza",
            "<**>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzacw$zzb;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzacw$zzb;->zzaB:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzacw$zzb;->zzaHl:Lcom/google/android/gms/internal/zzacs$zza;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzacv;->zza(Lcom/google/android/gms/internal/zzacw$zzb;Landroid/os/Parcel;I)V

    return-void
.end method
