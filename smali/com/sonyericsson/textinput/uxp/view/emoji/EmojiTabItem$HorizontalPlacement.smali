.class public final enum Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;
.super Ljava/lang/Enum;
.source "EmojiTabItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HorizontalPlacement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

.field public static final enum CENTER:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

.field public static final enum LEFTMOST:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

.field public static final enum RIGHTMOST:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

.field public static final enum UNINITIALIZED:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 476
    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->UNINITIALIZED:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    const-string v1, "LEFTMOST"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->LEFTMOST:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    const-string v1, "CENTER"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->CENTER:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    const-string v1, "RIGHTMOST"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->RIGHTMOST:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    .line 475
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->UNINITIALIZED:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->LEFTMOST:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->CENTER:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->RIGHTMOST:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

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
    .line 475
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static pageIndexToHorizontalPlacement(II)Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;
    .locals 1
    .param p0, "pageIndex"    # I
    .param p1, "pageCount"    # I

    .prologue
    .line 480
    if-nez p0, :cond_0

    .line 481
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->LEFTMOST:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    .line 486
    :goto_0
    return-object v0

    .line 483
    :cond_0
    add-int/lit8 v0, p1, -0x1

    if-ne p0, v0, :cond_1

    .line 484
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->RIGHTMOST:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    goto :goto_0

    .line 486
    :cond_1
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->CENTER:Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 475
    const-class v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;
    .locals 1

    .prologue
    .line 475
    sget-object v0, Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->$VALUES:[Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/view/emoji/EmojiTabItem$HorizontalPlacement;

    return-object v0
.end method
