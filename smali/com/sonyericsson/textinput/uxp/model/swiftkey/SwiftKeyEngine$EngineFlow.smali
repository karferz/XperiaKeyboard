.class public final enum Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;
.super Ljava/lang/Enum;
.source "SwiftKeyEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EngineFlow"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

.field public static final enum FIELD_INITIATION:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

.field public static final enum SERVICE_CREATION:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2664
    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    const-string v1, "SERVICE_CREATION"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->SERVICE_CREATION:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    new-instance v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    const-string v1, "FIELD_INITIATION"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->FIELD_INITIATION:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    .line 2663
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->SERVICE_CREATION:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->FIELD_INITIATION:Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->$VALUES:[Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

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
    .line 2663
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2663
    const-class v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;
    .locals 1

    .prologue
    .line 2663
    sget-object v0, Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->$VALUES:[Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    invoke-virtual {v0}, [Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonyericsson/textinput/uxp/model/swiftkey/SwiftKeyEngine$EngineFlow;

    return-object v0
.end method
