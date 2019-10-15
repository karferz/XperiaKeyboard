.class public Lcom/google/android/gms/common/api/zzc$zza;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/api/zzc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/common/api/zzc$zza$zza;
    }
.end annotation


# static fields
.field public static final zzayY:Lcom/google/android/gms/common/api/zzc$zza;


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final zzayZ:Lcom/google/android/gms/internal/zzabs;

.field public final zzaza:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/zzc$zza$zza;

    invoke-direct {v0}, Lcom/google/android/gms/common/api/zzc$zza$zza;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/zzc$zza$zza;->zzvk()Lcom/google/android/gms/common/api/zzc$zza;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/api/zzc$zza;->zzayY:Lcom/google/android/gms/common/api/zzc$zza;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzabs;Landroid/accounts/Account;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/zzc$zza;->zzayZ:Lcom/google/android/gms/internal/zzabs;

    iput-object p2, p0, Lcom/google/android/gms/common/api/zzc$zza;->account:Landroid/accounts/Account;

    iput-object p3, p0, Lcom/google/android/gms/common/api/zzc$zza;->zzaza:Landroid/os/Looper;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzabs;Landroid/accounts/Account;Landroid/os/Looper;Lcom/google/android/gms/common/api/zzc$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/zzc$zza;-><init>(Lcom/google/android/gms/internal/zzabs;Landroid/accounts/Account;Landroid/os/Looper;)V

    return-void
.end method
