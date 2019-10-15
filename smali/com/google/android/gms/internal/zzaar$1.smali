.class Lcom/google/android/gms/internal/zzaar$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaar;->zzwi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaBA:Lcom/google/android/gms/internal/zzaar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaar;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaar$1;->zzaBA:Lcom/google/android/gms/internal/zzaar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaar$1;->zzaBA:Lcom/google/android/gms/internal/zzaar;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzaar;->zzb(Lcom/google/android/gms/internal/zzaar;)Lcom/google/android/gms/common/zze;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzaar$1;->zzaBA:Lcom/google/android/gms/internal/zzaar;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzaar;->zza(Lcom/google/android/gms/internal/zzaar;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/zze;->zzaF(Landroid/content/Context;)V

    return-void
.end method
