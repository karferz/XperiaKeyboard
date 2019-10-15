.class public Lcom/google/android/gms/internal/zzbar;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzbar;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzahh:Landroid/accounts/Account;

.field final zzaiI:I

.field private final zzajw:Ljava/lang/String;

.field private final zzbEv:[Lcom/google/android/gms/common/api/Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbas;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbas;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbar;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILandroid/accounts/Account;[Lcom/google/android/gms/common/api/Scope;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzbar;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbar;->zzahh:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbar;->zzbEv:[Lcom/google/android/gms/common/api/Scope;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbar;->zzajw:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbar;->zzahh:Landroid/accounts/Account;

    return-object v0
.end method

.method public getServerClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbar;->zzajw:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbas;->zza(Lcom/google/android/gms/internal/zzbar;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzPQ()[Lcom/google/android/gms/common/api/Scope;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbar;->zzbEv:[Lcom/google/android/gms/common/api/Scope;

    return-object v0
.end method
