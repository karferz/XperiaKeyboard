.class Lcom/google/android/gms/internal/zzry$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzsu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzadI:Lcom/google/android/gms/internal/zzry;

.field final synthetic zzadN:Lcom/google/android/gms/internal/zzsu;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzry;Lcom/google/android/gms/internal/zzsu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzry$6;->zzadI:Lcom/google/android/gms/internal/zzry;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzry$6;->zzadN:Lcom/google/android/gms/internal/zzsu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry$6;->zzadI:Lcom/google/android/gms/internal/zzry;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzry;)Lcom/google/android/gms/internal/zzsi;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzry$6;->zzadN:Lcom/google/android/gms/internal/zzsu;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsi;->zzb(Lcom/google/android/gms/internal/zzsu;)V

    return-void
.end method
