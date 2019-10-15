.class Lcom/google/android/gms/internal/zzsf$zza$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzsf$zza;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaes:Lcom/google/android/gms/internal/zzta;

.field final synthetic zzaet:Lcom/google/android/gms/internal/zzsf$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsf$zza;Lcom/google/android/gms/internal/zzta;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsf$zza$1;->zzaet:Lcom/google/android/gms/internal/zzsf$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzsf$zza$1;->zzaes:Lcom/google/android/gms/internal/zzta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf$zza$1;->zzaet:Lcom/google/android/gms/internal/zzsf$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzsf$zza;->zzaep:Lcom/google/android/gms/internal/zzsf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsf;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf$zza$1;->zzaet:Lcom/google/android/gms/internal/zzsf$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzsf$zza;->zzaep:Lcom/google/android/gms/internal/zzsf;

    const-string v1, "Connected to service after a timeout"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzsf;->zzbQ(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsf$zza$1;->zzaet:Lcom/google/android/gms/internal/zzsf$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzsf$zza;->zzaep:Lcom/google/android/gms/internal/zzsf;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzsf$zza$1;->zzaes:Lcom/google/android/gms/internal/zzta;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzsf;->zza(Lcom/google/android/gms/internal/zzsf;Lcom/google/android/gms/internal/zzta;)V

    :cond_0
    return-void
.end method
