.class public Lcom/touchtype_fluency/Telex;
.super Ljava/lang/Object;
.source "Telex.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 18
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native join(Ljava/lang/String;)Ljava/lang/String;
.end method
