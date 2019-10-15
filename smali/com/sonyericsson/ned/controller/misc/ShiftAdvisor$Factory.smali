.class public Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor$Factory;
.super Lcom/sonyericsson/collaboration/ObjectFactory;
.source "ShiftAdvisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 611
    const-class v0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    invoke-static {}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;->access$000()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/sonyericsson/collaboration/ObjectFactory;-><init>(Ljava/lang/Class;[Ljava/lang/Class;)V

    .line 612
    const-string v0, "automatic-case-mode"

    const-string v1, "sentence"

    invoke-virtual {p0, v0, v1, v3, v3}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 613
    const-string v0, "latin-writing-aid"

    const-string v1, "true"

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 614
    const-string v0, "act-on-composing-text"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    const-string v0, "insert-on-key-down"

    const-string v1, "true"

    invoke-virtual {p0, v0, v1}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor$Factory;->defineParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 620
    new-instance v0, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;

    const-string v1, "automatic-case-mode"

    invoke-virtual {p0, v1}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor$Factory;->getText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "act-on-composing-text"

    .line 621
    invoke-virtual {p0, v2}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "insert-on-key-down"

    invoke-virtual {p0, v3}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor$Factory;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sonyericsson/ned/controller/misc/ShiftAdvisor;-><init>(Ljava/lang/String;ZZ)V

    return-object v0
.end method
