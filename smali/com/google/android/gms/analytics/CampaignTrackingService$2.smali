.class Lcom/google/android/gms/analytics/CampaignTrackingService$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/analytics/CampaignTrackingService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzabA:I

.field final synthetic zzabB:Lcom/google/android/gms/analytics/CampaignTrackingService;

.field final synthetic zzabz:Lcom/google/android/gms/internal/zztd;

.field final synthetic zzs:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/google/android/gms/analytics/CampaignTrackingService;Lcom/google/android/gms/internal/zztd;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$2;->zzabB:Lcom/google/android/gms/analytics/CampaignTrackingService;

    iput-object p2, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$2;->zzabz:Lcom/google/android/gms/internal/zztd;

    iput-object p3, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$2;->zzs:Landroid/os/Handler;

    iput p4, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$2;->zzabA:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$2;->zzabB:Lcom/google/android/gms/analytics/CampaignTrackingService;

    iget-object v1, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$2;->zzabz:Lcom/google/android/gms/internal/zztd;

    iget-object v2, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$2;->zzs:Landroid/os/Handler;

    iget v3, p0, Lcom/google/android/gms/analytics/CampaignTrackingService$2;->zzabA:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/analytics/CampaignTrackingService;->zza(Lcom/google/android/gms/internal/zztd;Landroid/os/Handler;I)V

    return-void
.end method
