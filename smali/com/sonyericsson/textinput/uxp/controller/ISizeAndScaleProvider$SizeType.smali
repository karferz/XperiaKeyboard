.class public final enum Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;
.super Ljava/lang/Enum;
.source "ISizeAndScaleProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SizeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

.field public static final enum KEY_AUXILIARY_BOTTOM_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

.field public static final enum KEY_AUXILIARY_TOP_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

.field public static final enum KEY_BOTTOM_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

.field public static final enum KEY_LEFT_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

.field public static final enum KEY_RIGHT_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

.field public static final enum KEY_TOP_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 157
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    const-string v1, "KEY_LEFT_GAP"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_LEFT_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    const-string v1, "KEY_TOP_GAP"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_TOP_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    const-string v1, "KEY_RIGHT_GAP"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_RIGHT_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    const-string v1, "KEY_BOTTOM_GAP"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_BOTTOM_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    const-string v1, "KEY_AUXILIARY_TOP_GAP"

    invoke-direct {v0, v1, v7}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_AUXILIARY_TOP_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    .line 158
    new-instance v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    const-string v1, "KEY_AUXILIARY_BOTTOM_GAP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_AUXILIARY_BOTTOM_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    .line 156
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_LEFT_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_TOP_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_RIGHT_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_BOTTOM_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_AUXILIARY_TOP_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->KEY_AUXILIARY_BOTTOM_GAP:Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

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
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    const-class v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->$VALUES:[Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/controller/ISizeAndScaleProvider$SizeType;

    return-object v0
.end method
