.class public Lcom/google/android/gms/internal/zzabl;
.super Ljava/lang/Object;


# instance fields
.field public final zzaDc:Lcom/google/android/gms/internal/zzzx;

.field public final zzaDd:I

.field public final zzaDe:Lcom/google/android/gms/common/api/zzc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzzx;ILcom/google/android/gms/common/api/zzc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzzx;",
            "I",
            "Lcom/google/android/gms/common/api/zzc",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzabl;->zzaDc:Lcom/google/android/gms/internal/zzzx;

    iput p2, p0, Lcom/google/android/gms/internal/zzabl;->zzaDd:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzabl;->zzaDe:Lcom/google/android/gms/common/api/zzc;

    return-void
.end method
