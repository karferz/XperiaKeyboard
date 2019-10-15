.class public final Lcom/google/android/gms/auth/api/credentials/CredentialRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/CredentialRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final zzaiI:I

.field private final zzajr:Z

.field private final zzajs:[Ljava/lang/String;

.field private final zzajt:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

.field private final zzaju:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

.field private final zzajv:Z

.field private final zzajw:Ljava/lang/String;

.field private final zzajx:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IZ[Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzaiI:I

    iput-boolean p2, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzajr:Z

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzajs:[Ljava/lang/String;

    if-nez p4, :cond_0

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object p4

    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzajt:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    if-nez p5, :cond_1

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig$Builder;->build()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object p5

    :cond_1
    iput-object p5, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzaju:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    const/4 v0, 0x3

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzajv:Z

    iput-object v1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzajw:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzajx:Ljava/lang/String;

    :goto_0
    return-void

    :cond_2
    iput-boolean p6, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzajv:Z

    iput-object p7, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzajw:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzajx:Ljava/lang/String;

    goto :goto_0
.end method

.method private constructor <init>(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)V
    .locals 9

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zza(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)Z

    move-result v2

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzb(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzc(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v4

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzd(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    move-result-object v5

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zze(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)Z

    move-result v6

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzf(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;->zzg(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;-><init>(IZ[Ljava/lang/String;Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;Lcom/google/android/gms/auth/api/credentials/CredentialRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;-><init>(Lcom/google/android/gms/auth/api/credentials/CredentialRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getAccountTypes()[Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzajs:[Ljava/lang/String;

    return-object v0
.end method

.method public getAccountTypesSet()Ljava/util/Set;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzajs:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCredentialHintPickerConfig()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzaju:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object v0
.end method

.method public getCredentialPickerConfig()Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzajt:Lcom/google/android/gms/auth/api/credentials/CredentialPickerConfig;

    return-object v0
.end method

.method public getIdTokenNonce()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzajx:Ljava/lang/String;

    return-object v0
.end method

.method public getServerClientId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzajw:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportsPasswordLogin()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->isPasswordLoginSupported()Z

    move-result v0

    return v0
.end method

.method public isIdTokenRequested()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzajv:Z

    return v0
.end method

.method public isPasswordLoginSupported()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/credentials/CredentialRequest;->zzajr:Z

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/auth/api/credentials/zzc;->zza(Lcom/google/android/gms/auth/api/credentials/CredentialRequest;Landroid/os/Parcel;I)V

    return-void
.end method
