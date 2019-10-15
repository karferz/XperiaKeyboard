.class public Lcom/google/android/gms/internal/zzaar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzaau;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaar$zzd;,
        Lcom/google/android/gms/internal/zzaar$zza;,
        Lcom/google/android/gms/internal/zzaar$zze;,
        Lcom/google/android/gms/internal/zzaar$zzc;,
        Lcom/google/android/gms/internal/zzaar$zzb;,
        Lcom/google/android/gms/internal/zzaar$zzf;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzaAG:Ljava/util/concurrent/locks/Lock;

.field private final zzaAL:Lcom/google/android/gms/common/internal/zzg;

.field private final zzaAO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final zzaAQ:Lcom/google/android/gms/common/zze;

.field private zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

.field private final zzaBk:Lcom/google/android/gms/internal/zzaav;

.field private zzaBn:I

.field private zzaBo:I

.field private zzaBp:I

.field private final zzaBq:Landroid/os/Bundle;

.field private final zzaBr:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Api$zzc;",
            ">;"
        }
    .end annotation
.end field

.field private zzaBs:Lcom/google/android/gms/internal/zzbai;

.field private zzaBt:Z

.field private zzaBu:Z

.field private zzaBv:Z

.field private zzaBw:Lcom/google/android/gms/common/internal/zzr;

.field private zzaBx:Z

.field private zzaBy:Z

.field private zzaBz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/concurrent/Future",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final zzazo:Lcom/google/android/gms/common/api/Api$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzbai;",
            "Lcom/google/android/gms/internal/zzbaj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzaav;Lcom/google/android/gms/common/internal/zzg;Ljava/util/Map;Lcom/google/android/gms/common/zze;Lcom/google/android/gms/common/api/Api$zza;Ljava/util/concurrent/locks/Lock;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzaav;",
            "Lcom/google/android/gms/common/internal/zzg;",
            "Ljava/util/Map",
            "<",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/android/gms/common/zze;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzbai;",
            "Lcom/google/android/gms/internal/zzbaj;",
            ">;",
            "Ljava/util/concurrent/locks/Lock;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBo:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBq:Landroid/os/Bundle;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBr:Ljava/util/Set;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBz:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaar;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzaar;->zzaAO:Ljava/util/Map;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaar;->zzaAQ:Lcom/google/android/gms/common/zze;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzaar;->zzazo:Lcom/google/android/gms/common/api/Api$zza;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaar;->zzaAG:Ljava/util/concurrent/locks/Lock;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaar;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaar;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaar;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaar;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaar;Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaar;->zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaar;Lcom/google/android/gms/internal/zzbaw;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaar;->zza(Lcom/google/android/gms/internal/zzbaw;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbaw;)V
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaar;->zzcB(I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbaw;->zzyh()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbaw;->zzPT()Lcom/google/android/gms/common/internal/zzaf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaf;->zzyh()Lcom/google/android/gms/common/ConnectionResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v0, "GoogleApiClientConnecting"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x30

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Sign-in succeeded with resolve account failure: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaar;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBv:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaf;->zzyg()Lcom/google/android/gms/common/internal/zzr;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBw:Lcom/google/android/gms/common/internal/zzr;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaf;->zzyi()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBx:Z

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaf;->zzyj()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBy:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar;->zzwg()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaar;->zze(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar;->zzwj()V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar;->zzwg()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaar;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0
.end method

.method private zza(IZLcom/google/android/gms/common/ConnectionResult;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-direct {p0, p3}, Lcom/google/android/gms/internal/zzaar;->zzd(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBn:I

    if-ge p1, v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/zzaar;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaar;->zzcB(I)Z

    move-result v0

    return v0
.end method

.method private zzau(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbai;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbai;->zzPI()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzbai;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBw:Lcom/google/android/gms/common/internal/zzr;

    :cond_1
    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaar;)Lcom/google/android/gms/common/zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaAQ:Lcom/google/android/gms/common/zze;

    return-object v0
.end method

.method private zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;Z)V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Api;->zzve()Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api$zzd;->getPriority()I

    move-result v0

    invoke-direct {p0, v0, p3, p1}, Lcom/google/android/gms/internal/zzaar;->zza(IZLcom/google/android/gms/common/ConnectionResult;)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaar;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    iput v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBn:I

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaav;->zzaCf:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/google/android/gms/common/api/Api;->zzvg()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzaar;Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaar;->zze(Lcom/google/android/gms/common/ConnectionResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/zzaar;)Ljava/util/concurrent/locks/Lock;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaAG:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method private zzcB(I)Z
    .locals 5

    iget v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBo:I

    if-eq v0, p1, :cond_0

    const-string v0, "GoogleApiClientConnecting"

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaav;->zzaAw:Lcom/google/android/gms/internal/zzaat;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaat;->zzwr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Unexpected callback in "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    iget v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBp:I

    const/16 v2, 0x21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "mRemainingConnections="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "GoogleApiClientConnecting"

    iget v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBo:I

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaar;->zzcC(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzaar;->zzcC(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x46

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "GoogleApiClient connecting is in step "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " but received callback for step "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaar;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private zzcC(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "STEP_SERVICE_BINDINGS_AND_SIGN_IN"

    goto :goto_0

    :pswitch_1
    const-string v0, "STEP_GETTING_REMOTE_SERVICE"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/zzaar;)Lcom/google/android/gms/internal/zzaav;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    return-object v0
.end method

.method private zzd(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaAQ:Lcom/google/android/gms/common/zze;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getErrorCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/zze;->zzcw(I)Landroid/content/Intent;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zze(Lcom/google/android/gms/common/ConnectionResult;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBt:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/zzaar;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBu:Z

    return v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/zzaar;)Lcom/google/android/gms/internal/zzbai;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    return-object v0
.end method

.method private zzf(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar;->zzwk()V

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaar;->zzau(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzaav;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaav;->zzaCj:Lcom/google/android/gms/internal/zzabc$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzabc$zza;->zzc(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/zzaar;)Ljava/util/Set;
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar;->zzwl()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/zzaar;)Lcom/google/android/gms/common/internal/zzr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBw:Lcom/google/android/gms/common/internal/zzr;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/zzaar;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar;->zzwj()V

    return-void
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/zzaar;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar;->zzwg()V

    return-void
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/zzaar;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar;->zzwf()Z

    move-result v0

    return v0
.end method

.method private zzwf()Z
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBp:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBp:I

    iget v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBp:I

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBp:I

    if-gez v1, :cond_1

    const-string v1, "GoogleApiClientConnecting"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaav;->zzaAw:Lcom/google/android/gms/internal/zzaat;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaat;->zzwr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "GoogleApiClientConnecting"

    const-string v2, "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect."

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaar;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget v2, p0, Lcom/google/android/gms/internal/zzaar;->zzaBn:I

    iput v2, v1, Lcom/google/android/gms/internal/zzaav;->zzaCi:I

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/zzaar;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private zzwg()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBp:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBu:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBv:Z

    if-eqz v0, :cond_0

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar;->zzwh()V

    goto :goto_0
.end method

.method private zzwh()V
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBo:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaav;->zzaBQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBp:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaav;->zzaBQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaav;->zzaCf:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar;->zzwf()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar;->zzwi()V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzaav;->zzaBQ:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBz:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzaaw;->zzwv()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/zzaar$zzc;

    invoke-direct {v3, p0, v1}, Lcom/google/android/gms/internal/zzaar$zzc;-><init>(Lcom/google/android/gms/internal/zzaar;Ljava/util/ArrayList;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private zzwi()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaav;->zzwt()V

    invoke-static {}, Lcom/google/android/gms/internal/zzaaw;->zzwv()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzaar$1;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzaar$1;-><init>(Lcom/google/android/gms/internal/zzaar;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBx:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBw:Lcom/google/android/gms/common/internal/zzr;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzaar;->zzaBy:Z

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/zzbai;->zza(Lcom/google/android/gms/common/internal/zzr;Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaar;->zzau(Z)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaav;->zzaCf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaav;->zzaBQ:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zze;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/Api$zze;->disconnect()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBq:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaav;->zzaCj:Lcom/google/android/gms/internal/zzabc$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzabc$zza;->zzo(Landroid/os/Bundle;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBq:Landroid/os/Bundle;

    goto :goto_1
.end method

.method private zzwj()V
    .locals 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBu:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaav;->zzaAw:Lcom/google/android/gms/internal/zzaat;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaat;->zzaBR:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBr:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api$zzc;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaav;->zzaCf:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaav;->zzaCf:Ljava/util/Map;

    new-instance v3, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v4, 0x11

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private zzwk()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Future;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private zzwl()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzg;->zzxL()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzg;->zzxN()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzaav;->zzaCf:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzvg()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/internal/zzg$zza;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/zzg$zza;->zzakq:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public begin()V
    .locals 11

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaav;->zzaCf:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzaar;->zzaBu:Z

    iput-object v10, p0, Lcom/google/android/gms/internal/zzaar;->zzaAZ:Lcom/google/android/gms/common/ConnectionResult;

    iput v3, p0, Lcom/google/android/gms/internal/zzaar;->zzaBo:I

    iput-boolean v5, p0, Lcom/google/android/gms/internal/zzaar;->zzaBt:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzaar;->zzaBv:Z

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzaar;->zzaBx:Z

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaAO:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Api;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaav;->zzaBQ:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzvg()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/Api$zze;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzve()Lcom/google/android/gms/common/api/Api$zzd;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/common/api/Api$zzd;->getPriority()I

    move-result v4

    if-ne v4, v5, :cond_1

    move v4, v5

    :goto_1
    or-int/2addr v4, v2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaar;->zzaAO:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1}, Lcom/google/android/gms/common/api/Api$zze;->zzrd()Z

    move-result v8

    if-eqz v8, :cond_0

    iput-boolean v5, p0, Lcom/google/android/gms/internal/zzaar;->zzaBu:Z

    if-eqz v2, :cond_2

    iget-object v8, p0, Lcom/google/android/gms/internal/zzaar;->zzaBr:Ljava/util/Set;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzvg()Lcom/google/android/gms/common/api/Api$zzc;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_2
    new-instance v8, Lcom/google/android/gms/internal/zzaar$zza;

    invoke-direct {v8, p0, v0, v2}, Lcom/google/android/gms/internal/zzaar$zza;-><init>(Lcom/google/android/gms/internal/zzaar;Lcom/google/android/gms/common/api/Api;Z)V

    invoke-interface {v7, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v4

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzaar;->zzaBt:Z

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    iput-boolean v3, p0, Lcom/google/android/gms/internal/zzaar;->zzaBu:Z

    :cond_4
    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBu:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaav;->zzaAw:Lcom/google/android/gms/internal/zzaat;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzaat;->getSessionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/internal/zzg;->zzc(Ljava/lang/Integer;)V

    new-instance v5, Lcom/google/android/gms/internal/zzaar$zze;

    invoke-direct {v5, p0, v10}, Lcom/google/android/gms/internal/zzaar$zze;-><init>(Lcom/google/android/gms/internal/zzaar;Lcom/google/android/gms/internal/zzaar$1;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzazo:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzaav;->zzaAw:Lcom/google/android/gms/internal/zzaat;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzaat;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzaar;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzaar;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    invoke-virtual {v4}, Lcom/google/android/gms/common/internal/zzg;->zzxR()Lcom/google/android/gms/internal/zzbaj;

    move-result-object v4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbai;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBs:Lcom/google/android/gms/internal/zzbai;

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaav;->zzaBQ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBp:I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBz:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/internal/zzaaw;->zzwv()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/zzaar$zzb;

    invoke-direct {v2, p0, v7}, Lcom/google/android/gms/internal/zzaar$zzb;-><init>(Lcom/google/android/gms/internal/zzaar;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public connect()V
    .locals 0

    return-void
.end method

.method public disconnect()Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar;->zzwk()V

    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzaar;->zzau(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaav;->zzh(Lcom/google/android/gms/common/ConnectionResult;)V

    return v2
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaar;->zzcB(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBq:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar;->zzwf()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar;->zzwi()V

    goto :goto_0
.end method

.method public onConnectionSuspended(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaar;->zzf(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "R::",
            "Lcom/google/android/gms/common/api/Result;",
            "T:",
            "Lcom/google/android/gms/internal/zzaad$zza",
            "<TR;TA;>;>(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar;->zzaBk:Lcom/google/android/gms/internal/zzaav;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaav;->zzaAw:Lcom/google/android/gms/internal/zzaat;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaat;->zzaAU:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method public zza(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/ConnectionResult;",
            "Lcom/google/android/gms/common/api/Api",
            "<*>;Z)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaar;->zzcB(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/zzaar;->zzb(Lcom/google/android/gms/common/ConnectionResult;Lcom/google/android/gms/common/api/Api;Z)V

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar;->zzwf()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaar;->zzwi()V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzaad$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(TT;)TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "GoogleApiClient is not connected yet."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
