.class public final Lcom/sonyericsson/collaboration/UnsatisfiedNeedsException;
.super Ljava/lang/Exception;
.source "UnsatisfiedNeedsException.java"


# static fields
.field private static final serialVersionUID:J = 0x453059a130d0c8c7L


# instance fields
.field final missing:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Lcom/sonyericsson/collaboration/Bindable;[Ljava/lang/Class;)V
    .locals 1
    .param p1, "bindable"    # [Lcom/sonyericsson/collaboration/Bindable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sonyericsson/collaboration/Bindable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 15
    .local p2, "missing":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-static {p1, p2}, Lcom/sonyericsson/collaboration/UnsatisfiedNeedsException;->composeMessage([Lcom/sonyericsson/collaboration/Bindable;[Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lcom/sonyericsson/collaboration/UnsatisfiedNeedsException;->missing:[Ljava/lang/Class;

    .line 17
    return-void
.end method

.method private static composeMessage([Lcom/sonyericsson/collaboration/Bindable;[Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .param p0, "bindables"    # [Lcom/sonyericsson/collaboration/Bindable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/sonyericsson/collaboration/Bindable;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 56
    .local p1, "missing":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Needs not implemented by any object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p1, v3

    .line 57
    invoke-static {v3, p0}, Lcom/sonyericsson/collaboration/UnsatisfiedNeedsException;->needersToString(Ljava/lang/Class;[Lcom/sonyericsson/collaboration/Bindable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 58
    .local v0, "description":Ljava/lang/StringBuffer;
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 59
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-static {v3, p0}, Lcom/sonyericsson/collaboration/UnsatisfiedNeedsException;->needersToString(Ljava/lang/Class;[Lcom/sonyericsson/collaboration/Bindable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static needersToString(Ljava/lang/Class;[Lcom/sonyericsson/collaboration/Bindable;)Ljava/lang/String;
    .locals 10
    .param p1, "bindables"    # [Lcom/sonyericsson/collaboration/Bindable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Lcom/sonyericsson/collaboration/Bindable;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "missing":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v6, 0x0

    .line 24
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    .local v4, "result":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    const-string v5, " (used by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    const/4 v1, 0x0

    .line 30
    .local v1, "comma":Z
    array-length v8, p1

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v0, p1, v7

    .line 33
    .local v0, "bindable":Lcom/sonyericsson/collaboration/Bindable;
    invoke-interface {v0}, Lcom/sonyericsson/collaboration/Bindable;->getNeeds()[Ljava/lang/Class;

    move-result-object v3

    .line 34
    .local v3, "needs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v3, :cond_1

    .line 35
    array-length v9, v3

    move v5, v6

    :goto_1
    if-ge v5, v9, :cond_1

    aget-object v2, v3, v5

    .line 36
    .local v2, "need":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v2, p0, :cond_2

    .line 37
    if-eqz v1, :cond_0

    .line 38
    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 40
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    const/4 v1, 0x1

    .line 30
    .end local v2    # "need":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto :goto_0

    .line 35
    .restart local v2    # "need":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 47
    .end local v0    # "bindable":Lcom/sonyericsson/collaboration/Bindable;
    .end local v2    # "need":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "needs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public getMissingInterface()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Lcom/sonyericsson/collaboration/UnsatisfiedNeedsException;->missing:[Ljava/lang/Class;

    return-object v0
.end method
