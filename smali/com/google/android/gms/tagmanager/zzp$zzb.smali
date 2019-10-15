.class Lcom/google/android/gms/tagmanager/zzp$zzb;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tagmanager/zzbn;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/tagmanager/zzp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zzb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tagmanager/zzbn",
        "<",
        "Lcom/google/android/gms/internal/zzbjd$zza;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzbFz:Lcom/google/android/gms/tagmanager/zzp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/tagmanager/zzp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzp$zzb;->zzbFz:Lcom/google/android/gms/tagmanager/zzp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/tagmanager/zzp$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/zzp$zzb;-><init>(Lcom/google/android/gms/tagmanager/zzp;)V

    return-void
.end method


# virtual methods
.method public synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/zzbjd$zza;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/zzp$zzb;->zza(Lcom/google/android/gms/internal/zzbjd$zza;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbjd$zza;)V
    .locals 5

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbjd$zza;->zzbNj:Lcom/google/android/gms/internal/zzaj$zzj;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/zzbjd$zza;->zzbNj:Lcom/google/android/gms/internal/zzaj$zzj;

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/tagmanager/zzp$zzb;->zzbFz:Lcom/google/android/gms/tagmanager/zzp;

    iget-wide v2, p1, Lcom/google/android/gms/internal/zzbjd$zza;->zzbNi:J

    const/4 v4, 0x1

    invoke-static {v1, v0, v2, v3, v4}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;Lcom/google/android/gms/internal/zzaj$zzj;JZ)V

    return-void

    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/zzbjd$zza;->zzlr:Lcom/google/android/gms/internal/zzaj$zzf;

    new-instance v0, Lcom/google/android/gms/internal/zzaj$zzj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaj$zzj;-><init>()V

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaj$zzj;->zzlr:Lcom/google/android/gms/internal/zzaj$zzf;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/zzaj$zzj;->zzlq:[Lcom/google/android/gms/internal/zzaj$zzi;

    iget-object v1, v1, Lcom/google/android/gms/internal/zzaj$zzf;->version:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/android/gms/internal/zzaj$zzj;->zzls:Ljava/lang/String;

    goto :goto_0
.end method

.method public zza(Lcom/google/android/gms/tagmanager/zzbn$zza;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzb;->zzbFz:Lcom/google/android/gms/tagmanager/zzp;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/zzp;->zze(Lcom/google/android/gms/tagmanager/zzp;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzp$zzb;->zzbFz:Lcom/google/android/gms/tagmanager/zzp;

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/tagmanager/zzp;->zza(Lcom/google/android/gms/tagmanager/zzp;J)V

    :cond_0
    return-void
.end method
