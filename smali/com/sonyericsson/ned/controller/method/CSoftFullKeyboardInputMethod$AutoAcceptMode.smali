.class final enum Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;
.super Ljava/lang/Enum;
.source "CSoftFullKeyboardInputMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "AutoAcceptMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

.field public static final enum ACCEPT_AND_ADD_SPACE_ON_NEXT_TRACE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

.field public static final enum ACCEPT_AND_ADD_SPACE_ON_RELEASE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

.field public static final enum ACCEPT_AND_ADD_SPACE_URI:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

.field public static final enum ACCEPT_ONLY:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

.field public static final enum NONE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1065
    new-instance v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->NONE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    new-instance v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    const-string v1, "ACCEPT_ONLY"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_ONLY:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    new-instance v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    const-string v1, "ACCEPT_AND_ADD_SPACE_ON_RELEASE"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_AND_ADD_SPACE_ON_RELEASE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    new-instance v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    const-string v1, "ACCEPT_AND_ADD_SPACE_URI"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_AND_ADD_SPACE_URI:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    .line 1066
    new-instance v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    const-string v1, "ACCEPT_AND_ADD_SPACE_ON_NEXT_TRACE"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_AND_ADD_SPACE_ON_NEXT_TRACE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    .line 1064
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    sget-object v1, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->NONE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_ONLY:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_AND_ADD_SPACE_ON_RELEASE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_AND_ADD_SPACE_URI:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->ACCEPT_AND_ADD_SPACE_ON_NEXT_TRACE:Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->$VALUES:[Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

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
    .line 1064
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1064
    const-class v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;
    .locals 1

    .prologue
    .line 1064
    sget-object v0, Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->$VALUES:[Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    invoke-virtual {v0}, [Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/ned/controller/method/CSoftFullKeyboardInputMethod$AutoAcceptMode;

    return-object v0
.end method
