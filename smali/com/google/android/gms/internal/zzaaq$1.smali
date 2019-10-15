.class Lcom/google/android/gms/internal/zzaaq$1;
.super Lcom/google/android/gms/internal/zzaav$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaaq;->zzb(Lcom/google/android/gms/internal/zzaad$zza;)Lcom/google/android/gms/internal/zzaad$zza;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaBm:Lcom/google/android/gms/internal/zzaaq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaaq;Lcom/google/android/gms/internal/zzaau;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaaq$1;->zzaBm:Lcom/google/android/gms/internal/zzaaq;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/zzaav$zza;-><init>(Lcom/google/android/gms/internal/zzaau;)V

    return-void
.end method


# virtual methods
.method public zzwe()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaaq$1;->zzaBm:Lcom/google/android/gms/internal/zzaaq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzaaq;->onConnectionSuspended(I)V

    return-void
.end method
