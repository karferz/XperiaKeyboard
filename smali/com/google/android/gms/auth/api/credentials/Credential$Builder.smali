.class public Lcom/google/android/gms/auth/api/credentials/Credential$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/auth/api/credentials/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private final zzGV:Ljava/lang/String;

.field private zzajf:Landroid/net/Uri;

.field private zzajg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/auth/api/credentials/IdToken;",
            ">;"
        }
    .end annotation
.end field

.field private zzajh:Ljava/lang/String;

.field private zzaji:Ljava/lang/String;

.field private zzajj:Ljava/lang/String;

.field private zzajk:Ljava/lang/String;

.field private zzajl:Ljava/lang/String;

.field private zzajm:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/auth/api/credentials/Credential;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->zza(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzGV:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->zzb(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->mName:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->zzc(Lcom/google/android/gms/auth/api/credentials/Credential;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzajf:Landroid/net/Uri;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->zzd(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzajg:Ljava/util/List;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->zze(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzajh:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->zzf(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzaji:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->zzg(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzajj:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->zzh(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzajk:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->zzi(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzajl:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/auth/api/credentials/Credential;->zzj(Lcom/google/android/gms/auth/api/credentials/Credential;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzajm:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzGV:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/google/android/gms/auth/api/credentials/Credential;
    .locals 12

    new-instance v0, Lcom/google/android/gms/auth/api/credentials/Credential;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzGV:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->mName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzajf:Landroid/net/Uri;

    iget-object v5, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzajg:Ljava/util/List;

    iget-object v6, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzajh:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzaji:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzajj:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzajk:Ljava/lang/String;

    iget-object v10, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzajl:Ljava/lang/String;

    iget-object v11, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzajm:Ljava/lang/String;

    invoke-direct/range {v0 .. v11}, Lcom/google/android/gms/auth/api/credentials/Credential;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAccountType(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzaji:Ljava/lang/String;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public setPassword(Ljava/lang/String;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzajh:Ljava/lang/String;

    return-object p0
.end method

.method public setProfilePictureUri(Landroid/net/Uri;)Lcom/google/android/gms/auth/api/credentials/Credential$Builder;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/auth/api/credentials/Credential$Builder;->zzajf:Landroid/net/Uri;

    return-object p0
.end method
