.class public Lcom/touchtype_fluency/CharacterWidth;
.super Ljava/lang/Object;
.source "CharacterWidth.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 30
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native fullToHalfWidth(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native halfToFullWidth(Ljava/lang/String;)Ljava/lang/String;
.end method
