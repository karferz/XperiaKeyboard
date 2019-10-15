.class public Lcom/sonyericsson/ned/controller/BaseKey;
.super Ljava/lang/Object;
.source "BaseKey.java"


# static fields
.field public static final CANCEL:I = 0x4

.field public static final END_TRACE:I = 0x6

.field public static final LONG_PRESS:I = 0x2

.field public static final MOVE:I = 0x7

.field public static final PRESS:I = 0x0

.field public static final RELEASE:I = 0x1

.field public static final REPEATED_PRESS:I = 0x3

.field public static final TRACE:I = 0x5


# instance fields
.field private final action:I

.field private identifier:Ljava/lang/Object;

.field private final object:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "actionType"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/BaseKey;->object:Ljava/lang/Object;

    .line 76
    iput p2, p0, Lcom/sonyericsson/ned/controller/BaseKey;->action:I

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "actionType"    # I
    .param p3, "identifier"    # Ljava/lang/Object;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/sonyericsson/ned/controller/BaseKey;->object:Ljava/lang/Object;

    .line 91
    iput p2, p0, Lcom/sonyericsson/ned/controller/BaseKey;->action:I

    .line 92
    iput-object p3, p0, Lcom/sonyericsson/ned/controller/BaseKey;->identifier:Ljava/lang/Object;

    .line 93
    return-void
.end method


# virtual methods
.method public getActionType()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/sonyericsson/ned/controller/BaseKey;->action:I

    return v0
.end method

.method public getIdentifier()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/BaseKey;->identifier:Ljava/lang/Object;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/sonyericsson/ned/controller/BaseKey;->object:Ljava/lang/Object;

    return-object v0
.end method
