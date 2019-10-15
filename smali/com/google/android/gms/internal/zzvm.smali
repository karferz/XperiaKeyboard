.class public final Lcom/google/android/gms/internal/zzvm;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzvm;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field private final zzajL:Lcom/google/android/gms/auth/api/credentials/Credential;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzvn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzvn;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzvm;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzvm;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzvm;->zzajL:Lcom/google/android/gms/auth/api/credentials/Credential;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/internal/zzvm;-><init>(ILcom/google/android/gms/auth/api/credentials/Credential;)V

    return-void
.end method


# virtual methods
.method public getCredential()Lcom/google/android/gms/auth/api/credentials/Credential;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzvm;->zzajL:Lcom/google/android/gms/auth/api/credentials/Credential;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzvn;->zza(Lcom/google/android/gms/internal/zzvm;Landroid/os/Parcel;I)V

    return-void
.end method
