.class public final Lcom/google/android/gms/internal/zzacp$zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzacp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzacp$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final versionCode:I

.field final zzaGV:Ljava/lang/String;

.field final zzaGW:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzacr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzacr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzacp$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzacp$zza;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzacp$zza;->zzaGV:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/internal/zzacp$zza;->zzaGW:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzacp$zza;->versionCode:I

    iput-object p1, p0, Lcom/google/android/gms/internal/zzacp$zza;->zzaGV:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/internal/zzacp$zza;->zzaGW:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzacr;->zza(Lcom/google/android/gms/internal/zzacp$zza;Landroid/os/Parcel;I)V

    return-void
.end method
