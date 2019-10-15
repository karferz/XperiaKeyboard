.class public final Lcom/google/android/gms/internal/zzaaj;
.super Lcom/google/android/gms/common/api/zzc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/google/android/gms/common/api/Api$ApiOptions;",
        ">",
        "Lcom/google/android/gms/common/api/zzc",
        "<TO;>;"
    }
.end annotation


# instance fields
.field private final zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

.field private final zzaAK:Lcom/google/android/gms/internal/zzaag;

.field private final zzaAL:Lcom/google/android/gms/common/internal/zzg;

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
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Landroid/os/Looper;Lcom/google/android/gms/common/api/Api$zze;Lcom/google/android/gms/internal/zzaag;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$zza;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/gms/common/api/Api$zze;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/gms/internal/zzaag;
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
            "Lcom/google/android/gms/common/api/Api$zze;",
            "Lcom/google/android/gms/internal/zzaag;",
            "Lcom/google/android/gms/common/internal/zzg;",
            "Lcom/google/android/gms/common/api/Api$zza",
            "<+",
            "Lcom/google/android/gms/internal/zzbai;",
            "Lcom/google/android/gms/internal/zzbaj;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/api/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Landroid/os/Looper;)V

    iput-object p4, p0, Lcom/google/android/gms/internal/zzaaj;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzaaj;->zzaAK:Lcom/google/android/gms/internal/zzaag;

    iput-object p6, p0, Lcom/google/android/gms/internal/zzaaj;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    iput-object p7, p0, Lcom/google/android/gms/internal/zzaaj;->zzazo:Lcom/google/android/gms/common/api/Api$zza;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaj;->zzayX:Lcom/google/android/gms/internal/zzaax;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzaax;->zzb(Lcom/google/android/gms/common/api/zzc;)V

    return-void
.end method


# virtual methods
.method public buildApiClient(Landroid/os/Looper;Lcom/google/android/gms/internal/zzaax$zza;)Lcom/google/android/gms/common/api/Api$zze;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/internal/zzaax$zza",
            "<TO;>;)",
            "Lcom/google/android/gms/common/api/Api$zze;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaj;->zzaAK:Lcom/google/android/gms/internal/zzaag;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzaag;->zza(Lcom/google/android/gms/internal/zzaah;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaj;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    return-object v0
.end method

.method public createSignInCoordinator(Landroid/content/Context;Landroid/os/Handler;)Lcom/google/android/gms/internal/zzabr;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzabr;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaaj;->zzaAL:Lcom/google/android/gms/common/internal/zzg;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzaaj;->zzazo:Lcom/google/android/gms/common/api/Api$zza;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/google/android/gms/internal/zzabr;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/google/android/gms/common/internal/zzg;Lcom/google/android/gms/common/api/Api$zza;)V

    return-object v0
.end method

.method public zzvU()Lcom/google/android/gms/common/api/Api$zze;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaj;->zzaAJ:Lcom/google/android/gms/common/api/Api$zze;

    return-object v0
.end method
