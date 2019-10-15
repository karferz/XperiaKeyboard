.class Lcom/google/android/gms/tagmanager/zzcv$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzcv;->zzb(Lcom/google/android/gms/internal/zzbjd$zza;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbHE:Lcom/google/android/gms/tagmanager/zzcv;

.field final synthetic zzbHF:Lcom/google/android/gms/internal/zzbjd$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzcv;Lcom/google/android/gms/internal/zzbjd$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzcv$2;->zzbHE:Lcom/google/android/gms/tagmanager/zzcv;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzcv$2;->zzbHF:Lcom/google/android/gms/internal/zzbjd$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzcv$2;->zzbHE:Lcom/google/android/gms/tagmanager/zzcv;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzcv$2;->zzbHF:Lcom/google/android/gms/internal/zzbjd$zza;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/zzcv;->zzc(Lcom/google/android/gms/internal/zzbjd$zza;)Z

    return-void
.end method
