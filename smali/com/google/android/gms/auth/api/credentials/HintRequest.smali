.class public final Lcom/google/android/gms/auth/api/credentials/HintRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/HintRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field private final zzajA:Z

.field private final zzajs:[Ljava/lang/String;

.field private final zzajv:Z

.field private final zzajw:Ljava/lang/String;

.field private final zzajx:Ljava/lang/String;

.field private final zzajy:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

.field private final zzajz:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/zzd;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/zzd;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;ZZ[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzaiI:I

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajy:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    iput-boolean p3, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajz:Z

    iput-boolean p4, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajA:Z

    invoke-static {p5}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajs:[Ljava/lang/String;

    iget v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzaiI:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajv:Z

    iput-object v2, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajw:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajx:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-boolean p6, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajv:Z

    iput-object p7, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajw:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajx:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;)V
    .locals 9

    const/4 v1, 0x2

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zza(Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v2

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzb(Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;)Z

    move-result v3

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzc(Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;)Z

    move-result v4

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzd(Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zze(Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;)Z

    move-result v6

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzf(Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;->zzg(Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/auth/api/credentials/HintRequest;-><init>(ILcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;ZZ[Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;Lcom/google/android/gms/auth/api/credentials/HintRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/HintRequest;-><init>(Lcom/google/android/gms/auth/api/credentials/HintRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getAccountTypes()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajs:[Ljava/lang/String;

    return-object v0
.end method

.method public getHintPickerConfig()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajy:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object v0
.end method

.method public getIdTokenNonce()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajx:Ljava/lang/String;

    return-object v0
.end method

.method public getServerClientId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajw:Ljava/lang/String;

    return-object v0
.end method

.method public isEmailAddressIdentifierSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajz:Z

    return v0
.end method

.method public isIdTokenRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajv:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/zzd;->zza(Lcom/google/android/gms/auth/api/credentials/HintRequest;Landroid/os/Parcel;I)V

    return-void
.end method

.method public zzqX()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/HintRequest;->zzajA:Z

    return v0
.end method
