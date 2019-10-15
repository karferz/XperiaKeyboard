.class Lcom/google/android/gms/tagmanager/zzx$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/tagmanager/zzx;->zzhc(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbFV:Lcom/google/android/gms/tagmanager/zzx;

.field final synthetic zzbFX:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tagmanager/zzx;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzx$3;->zzbFV:Lcom/google/android/gms/tagmanager/zzx;

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/zzx$3;->zzbFX:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzx$3;->zzbFV:Lcom/google/android/gms/tagmanager/zzx;

    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzx$3;->zzbFX:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/tagmanager/zzx;->zza(Lcom/google/android/gms/tagmanager/zzx;Ljava/lang/String;)V

    return-void
.end method
