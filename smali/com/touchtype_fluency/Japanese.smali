.class public Lcom/touchtype_fluency/Japanese;
.super Ljava/lang/Object;
.source "Japanese.java"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 24
    invoke-static {}, Lcom/touchtype_fluency/SwiftKeySDK;->forceInit()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native hiraganaToKatakana(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native katakanaToHiragana(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static native romajiToHiragana(Ljava/lang/String;)Ljava/lang/String;
.end method
