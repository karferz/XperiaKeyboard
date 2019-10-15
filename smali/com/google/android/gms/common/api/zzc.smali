.class public abstract Lcom/google/android/gms/common/api/zzc;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/zzc$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mId:I

.field private final zzahh:Landroid/accounts/Account;

.field private final zzaxf:Lcom/google/android/gms/common/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final zzayT:Lcom/google/android/gms/common/api/Api$ApiOptions;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final zzayU:Lcom/google/android/gms/internal/zzzz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzzz",
            "<TO;>;"
        }
    .end annotation
.end field

.field private final zzayV:Lcom/google/android/gms/common/api/GoogleApiClient;

.field private final zzayW:Lcom/google/android/gms/internal/zzabs;

.field protected final zzayX:Lcom/google/android/gms/internal/zzaax;

.field private final zzrs:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Landroid/os/Looper;Lcom/google/android/gms/internal/zzabs;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/zzabs;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/zzc$zza$zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/zzc$zza$zza;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzb(Landroid/os/Looper;)Lcom/google/android/gms/common/api/zzc$zza$zza;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/gms/common/api/zzc$zza$zza;->zza(Lcom/google/android/gms/internal/zzabs;)Lcom/google/android/gms/common/api/zzc$zza$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzvk()Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/zzc;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/zzc$zza;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/zzc$zza;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;",
            "Lcom/google/android/gms/common/api/zzc$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null activity is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.createDefault() instead."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzc;->zzaxf:Lcom/google/android/gms/common/api/Api;

    iput-object p3, p0, Lcom/google/android/gms/common/api/zzc;->zzayT:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iget-object v0, p4, Lcom/google/android/gms/common/api/zzc$zza;->zzaza:Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzrs:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxf:Lcom/google/android/gms/common/api/Api;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->zzayT:Lcom/google/android/gms/common/api/Api$ApiOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzzz;->zza(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;)Lcom/google/android/gms/internal/zzzz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayU:Lcom/google/android/gms/internal/zzzz;

    new-instance v0, Lcom/google/android/gms/internal/zzaay;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaay;-><init>(Lcom/google/android/gms/common/api/zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayV:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zzaP(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayX:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaax;->zzwz()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zzc;->mId:I

    iget-object v0, p4, Lcom/google/android/gms/common/api/zzc$zza;->zzayZ:Lcom/google/android/gms/internal/zzabs;

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayW:Lcom/google/android/gms/internal/zzabs;

    iget-object v0, p4, Lcom/google/android/gms/common/api/zzc$zza;->account:Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzahh:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayX:Lcom/google/android/gms/internal/zzaax;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->zzayU:Lcom/google/android/gms/internal/zzzz;

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/zzaam;->zza(Landroid/app/Activity;Lcom/google/android/gms/internal/zzaax;Lcom/google/android/gms/internal/zzzz;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaax;->zzb(Lcom/google/android/gms/common/api/zzc;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/internal/zzabs;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;",
            "Lcom/google/android/gms/internal/zzabs;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/zzc$zza$zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/zzc$zza$zza;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/zzc$zza$zza;->zza(Lcom/google/android/gms/internal/zzabs;)Lcom/google/android/gms/common/api/zzc$zza$zza;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzb(Landroid/os/Looper;)Lcom/google/android/gms/common/api/zzc$zza$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzvk()Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/zzc;-><init>(Landroid/app/Activity;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/zzc$zza;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Landroid/os/Looper;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;",
            "Landroid/os/Looper;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Looper must not be null."

    invoke-static {p3, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzc;->zzaxf:Lcom/google/android/gms/common/api/Api;

    iput-object v1, p0, Lcom/google/android/gms/common/api/zzc;->zzayT:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iput-object p3, p0, Lcom/google/android/gms/common/api/zzc;->zzrs:Landroid/os/Looper;

    invoke-static {p2}, Lcom/google/android/gms/internal/zzzz;->zzb(Lcom/google/android/gms/common/api/Api;)Lcom/google/android/gms/internal/zzzz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayU:Lcom/google/android/gms/internal/zzzz;

    new-instance v0, Lcom/google/android/gms/internal/zzaay;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaay;-><init>(Lcom/google/android/gms/common/api/zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayV:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zzaP(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayX:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaax;->zzwz()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zzc;->mId:I

    new-instance v0, Lcom/google/android/gms/internal/zzzy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzzy;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayW:Lcom/google/android/gms/internal/zzabs;

    iput-object v1, p0, Lcom/google/android/gms/common/api/zzc;->zzahh:Landroid/accounts/Account;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Landroid/os/Looper;Lcom/google/android/gms/internal/zzabs;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/zzabs;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/zzc$zza$zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/zzc$zza$zza;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzb(Landroid/os/Looper;)Lcom/google/android/gms/common/api/zzc$zza$zza;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/gms/common/api/zzc$zza$zza;->zza(Lcom/google/android/gms/internal/zzabs;)Lcom/google/android/gms/common/api/zzc$zza$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzvk()Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/zzc$zza;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/zzc$zza;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;",
            "Lcom/google/android/gms/common/api/zzc$zza;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Null context is not permitted."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Api must not be null."

    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Settings must not be null; use Settings.createDefault() instead."

    invoke-static {p4, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzc;->zzaxf:Lcom/google/android/gms/common/api/Api;

    iput-object p3, p0, Lcom/google/android/gms/common/api/zzc;->zzayT:Lcom/google/android/gms/common/api/Api$ApiOptions;

    iget-object v0, p4, Lcom/google/android/gms/common/api/zzc$zza;->zzaza:Landroid/os/Looper;

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzrs:Landroid/os/Looper;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxf:Lcom/google/android/gms/common/api/Api;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->zzayT:Lcom/google/android/gms/common/api/Api$ApiOptions;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzzz;->zza(Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;)Lcom/google/android/gms/internal/zzzz;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayU:Lcom/google/android/gms/internal/zzzz;

    new-instance v0, Lcom/google/android/gms/internal/zzaay;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/zzaay;-><init>(Lcom/google/android/gms/common/api/zzc;)V

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayV:Lcom/google/android/gms/common/api/GoogleApiClient;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaax;->zzaP(Landroid/content/Context;)Lcom/google/android/gms/internal/zzaax;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayX:Lcom/google/android/gms/internal/zzaax;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaax;->zzwz()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/common/api/zzc;->mId:I

    iget-object v0, p4, Lcom/google/android/gms/common/api/zzc$zza;->zzayZ:Lcom/google/android/gms/internal/zzabs;

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayW:Lcom/google/android/gms/internal/zzabs;

    iget-object v0, p4, Lcom/google/android/gms/common/api/zzc$zza;->account:Landroid/accounts/Account;

    iput-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzahh:Landroid/accounts/Account;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaax;->zzb(Lcom/google/android/gms/common/api/zzc;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/internal/zzabs;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;TO;",
            "Lcom/google/android/gms/internal/zzabs;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/zzc$zza$zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/zzc$zza$zza;-><init>()V

    invoke-virtual {v0, p4}, Lcom/google/android/gms/common/api/zzc$zza$zza;->zza(Lcom/google/android/gms/internal/zzabs;)Lcom/google/android/gms/common/api/zzc$zza$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzvk()Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/common/api/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/common/api/zzc$zza;)V

    return-void
.end method

.method private zza(ILcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;
    .locals 1
    .param p2    # Lcom/google/android/gms/internal/zzaad$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzaad$zza",
            "<+",
            "Lcom/google/android/gms/common/api/Result;",
            "TA;>;>(ITT;)TT;"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzaad$zza;->zzvI()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/common/api/zzc;ILcom/google/android/gms/internal/zzaad$zza;)V

    return-object p2
.end method

.method private zza(ILcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .param p2    # Lcom/google/android/gms/internal/zzabv;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(I",
            "Lcom/google/android/gms/internal/zzabv",
            "<TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    new-instance v4, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayX:Lcom/google/android/gms/internal/zzaax;

    iget-object v5, p0, Lcom/google/android/gms/common/api/zzc;->zzayW:Lcom/google/android/gms/internal/zzabs;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/common/api/zzc;ILcom/google/android/gms/internal/zzabv;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/zzabs;)V

    invoke-virtual {v4}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public asGoogleApiClient()Lcom/google/android/gms/common/api/GoogleApiClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayV:Lcom/google/android/gms/common/api/GoogleApiClient;

    return-object v0
.end method

.method public buildApiClient(Landroid/os/Looper;Lcom/google/android/gms/internal/zzaax$zza;)Lcom/google/android/gms/common/api/Api$zze;
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/zzaax$zza",
            "<TO;>;)",
            "Lcom/google/android/gms/common/api/Api$zze;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->zzahh:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zze(Landroid/accounts/Account;)Lcom/google/android/gms/common/api/GoogleApiClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/GoogleApiClient$Builder;->zzvp()Lcom/google/android/gms/common/internal/zzg;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxf:Lcom/google/android/gms/common/api/Api;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/Api;->zzvf()Lcom/google/android/gms/common/api/Api$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/common/api/zzc;->zzayT:Lcom/google/android/gms/common/api/Api$ApiOptions;

    move-object v2, p1

    move-object v5, p2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/common/api/Api$zza;->zza(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/zzg;Ljava/lang/Object;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)Lcom/google/android/gms/common/api/Api$zze;

    move-result-object v0

    return-object v0
.end method

.method public createSignInCoordinator(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/internal/zzabr;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzabr;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/zzabr;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-object v0
.end method

.method public doBestEffortWrite(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzaad$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(ILcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public doBestEffortWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzabv",
            "<TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(ILcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public doRead(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzaad$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(ILcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public doRead(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzabv",
            "<TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(ILcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public doRegisterEventListener(Lcom/google/android/gms/internal/zzabm;Lcom/google/android/gms/internal/zzabz;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/zzabm;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            "T:",
            "Lcom/google/android/gms/internal/zzabm",
            "<TA;*>;U:",
            "Lcom/google/android/gms/internal/zzabz",
            "<TA;*>;>(TT;TU;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzabm;->zzwW()Lcom/google/android/gms/internal/zzabh$zzb;

    move-result-object v0

    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzabz;->zzwW()Lcom/google/android/gms/internal/zzabh$zzb;

    move-result-object v0

    const-string v1, "Listener has already been released."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzabm;->zzwW()Lcom/google/android/gms/internal/zzabh$zzb;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzabz;->zzwW()Lcom/google/android/gms/internal/zzabh$zzb;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzabh$zzb;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Listener registration and unregistration methods must be constructed with the same ListenerHolder."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zzb(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/common/api/zzc;Lcom/google/android/gms/internal/zzabm;Lcom/google/android/gms/internal/zzabz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public doUnregisterEventListener(Lcom/google/android/gms/internal/zzabh$zzb;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzabh$zzb;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzabh$zzb",
            "<*>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "Listener key cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/zzaax;->zza(Lcom/google/android/gms/common/api/zzc;Lcom/google/android/gms/internal/zzabh$zzb;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public doWrite(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;
    .locals 1
    .param p1    # Lcom/google/android/gms/internal/zzaad$zza;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(ILcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;

    move-result-object v0

    return-object v0
.end method

.method public doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            "A::",
            "Lcom/google/android/gms/common/api/Api$zzb;",
            ">(",
            "Lcom/google/android/gms/internal/zzabv",
            "<TA;TTResult;>;)",
            "Lcom/google/android/gms/tasks/Task",
            "<TTResult;>;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/gms/common/api/zzc;->zza(ILcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public getApi()Lcom/google/android/gms/common/api/Api;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/common/api/Api",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzaxf:Lcom/google/android/gms/common/api/Api;

    return-object v0
.end method

.method public getApiKey()Lcom/google/android/gms/internal/zzzz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzzz",
            "<TO;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayU:Lcom/google/android/gms/internal/zzzz;

    return-object v0
.end method

.method public getApiOptions()Lcom/google/android/gms/common/api/Api$ApiOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzayT:Lcom/google/android/gms/common/api/Api$ApiOptions;

    return-object v0
.end method

.method public getApplicationContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getInstanceId()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/api/zzc;->mId:I

    return v0
.end method

.method public getLooper()Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzrs:Landroid/os/Looper;

    return-object v0
.end method

.method public registerListener(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/internal/zzabh;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(T",
            "L;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/zzabh",
            "<T",
            "L;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/api/zzc;->zzrs:Landroid/os/Looper;

    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/zzabi;->zzb(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/internal/zzabh;

    move-result-object v0

    return-object v0
.end method
