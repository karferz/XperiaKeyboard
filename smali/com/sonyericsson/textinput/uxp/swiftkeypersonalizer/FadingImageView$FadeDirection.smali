.class public final enum Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;
.super Ljava/lang/Enum;
.source "FadingImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FadeDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

.field public static final enum BOTTOM:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

.field public static final enum END:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

.field public static final enum LEFT:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

.field public static final enum RIGHT:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

.field public static final enum START:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

.field public static final enum TOP:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 238
    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    const-string v1, "BOTTOM"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->BOTTOM:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    const-string v1, "TOP"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->TOP:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->LEFT:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->RIGHT:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    const-string v1, "START"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->START:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    const-string v1, "END"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->END:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    .line 237
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->BOTTOM:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->TOP:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->LEFT:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->RIGHT:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->START:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->END:Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->$VALUES:[Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

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
    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 237
    const-class v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;
    .locals 1

    .prologue
    .line 237
    sget-object v0, Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->$VALUES:[Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/swiftkeypersonalizer/FadingImageView$FadeDirection;

    return-object v0
.end method
