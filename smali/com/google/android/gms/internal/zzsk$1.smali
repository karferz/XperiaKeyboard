.class Lcom/google/android/gms/internal/zzsk$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzsk;->zzoQ()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zzaeT:Lcom/google/android/gms/internal/zzsk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzsk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzsk$1;->zzaeT:Lcom/google/android/gms/internal/zzsk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzsk$1;->zzbY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzbY()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzsk$1;->zzaeT:Lcom/google/android/gms/internal/zzsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzsk;->zzoS()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
