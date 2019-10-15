.class final Lcom/sonyericsson/collaboration/ObjectFactory$Value;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/collaboration/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Value"
.end annotation


# instance fields
.field private final constant:Z

.field private final mandatory:Z

.field private final value:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "constant"    # Z
    .param p3, "mandatory"    # Z

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->value:[Ljava/lang/String;

    .line 267
    iput-boolean p2, p0, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->constant:Z

    .line 268
    iput-boolean p3, p0, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->mandatory:Z

    .line 269
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Z)V
    .locals 1
    .param p1, "value"    # [Ljava/lang/String;
    .param p2, "mandatory"    # Z

    .prologue
    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    iput-object p1, p0, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->value:[Ljava/lang/String;

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->constant:Z

    .line 274
    iput-boolean p2, p0, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->mandatory:Z

    .line 275
    return-void
.end method


# virtual methods
.method public getValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->value:[Ljava/lang/String;

    return-object v0
.end method

.method public isConstant()Z
    .locals 1

    .prologue
    .line 286
    iget-boolean v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->constant:Z

    return v0
.end method

.method public isMandatory()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->mandatory:Z

    return v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->value:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 283
    return-void
.end method
