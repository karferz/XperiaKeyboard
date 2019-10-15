.class Lcom/google/android/gms/internal/zzaae$zza$1;
.super Lcom/google/android/gms/internal/zzaaz$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzaae$zza;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzaAe:Landroid/app/Dialog;

.field final synthetic zzaAf:Lcom/google/android/gms/internal/zzaae$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzaae$zza;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaae$zza$1;->zzaAf:Lcom/google/android/gms/internal/zzaae$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzaae$zza$1;->zzaAe:Landroid/app/Dialog;

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzaaz$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zzvE()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae$zza$1;->zzaAf:Lcom/google/android/gms/internal/zzaae$zza;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzaae$zza;->zzaAd:Lcom/google/android/gms/internal/zzaae;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzaae;->zzvD()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae$zza$1;->zzaAe:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzaae$zza$1;->zzaAe:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
