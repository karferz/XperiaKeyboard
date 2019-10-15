.class Lcom/google/android/gms/internal/zzry$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzry;->zzW(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzadI:Lcom/google/android/gms/internal/zzry;

.field final synthetic zzadJ:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzry;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzry$2;->zzadI:Lcom/google/android/gms/internal/zzry;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zzry$2;->zzadJ:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzry$2;->zzadI:Lcom/google/android/gms/internal/zzry;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzry;->zza(Lcom/google/android/gms/internal/zzry;)Lcom/google/android/gms/internal/zzsi;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzry$2;->zzadJ:Z

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsi;->zzW(Z)V

    return-void
.end method
