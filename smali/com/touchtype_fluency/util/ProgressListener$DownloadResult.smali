.class public final enum Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/touchtype_fluency/util/ProgressListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum FAILED_CANCELLED:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

.field public static final enum FAILED_CANNOT_ENABLE:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

.field public static final enum FAILED_CHECKSUMS_MISMATCH:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

.field public static final enum FAILED_INSUFFICIENT_STORAGE:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

.field public static final enum FAILED_IO_EXCEPTION:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

.field public static final enum FAILED_TOO_MANY_CONCURRENT_DOWNLOADS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

.field public static final enum SUCCESS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

.field private static final synthetic a:[Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->SUCCESS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    .line 24
    new-instance v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    const-string v1, "FAILED_CHECKSUMS_MISMATCH"

    invoke-direct {v0, v1, v4}, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_CHECKSUMS_MISMATCH:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    .line 28
    new-instance v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    const-string v1, "FAILED_CANCELLED"

    invoke-direct {v0, v1, v5}, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_CANCELLED:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    .line 33
    new-instance v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    const-string v1, "FAILED_IO_EXCEPTION"

    invoke-direct {v0, v1, v6}, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_IO_EXCEPTION:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    .line 39
    new-instance v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    const-string v1, "FAILED_INSUFFICIENT_STORAGE"

    invoke-direct {v0, v1, v7}, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_INSUFFICIENT_STORAGE:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    .line 45
    new-instance v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    const-string v1, "FAILED_TOO_MANY_CONCURRENT_DOWNLOADS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_TOO_MANY_CONCURRENT_DOWNLOADS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    .line 50
    new-instance v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    const-string v1, "FAILED_CANNOT_ENABLE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_CANNOT_ENABLE:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    .line 14
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    sget-object v1, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->SUCCESS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_CHECKSUMS_MISMATCH:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_CANCELLED:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_IO_EXCEPTION:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_INSUFFICIENT_STORAGE:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_TOO_MANY_CONCURRENT_DOWNLOADS:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->FAILED_CANNOT_ENABLE:Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->a:[Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    return-object v0
.end method

.method public static values()[Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->a:[Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    invoke-virtual {v0}, [Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/touchtype_fluency/util/ProgressListener$DownloadResult;

    return-object v0
.end method
