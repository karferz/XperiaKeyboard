.class public abstract Lcom/sonyericsson/collaboration/ObjectFactory;
.super Ljava/lang/Object;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/collaboration/ObjectFactory$Value;
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private numMandatory:I

.field private parameters:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/sonyericsson/collaboration/ObjectFactory$Value;",
            ">;"
        }
    .end annotation
.end field

.field private final required:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Class;[Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 26
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "needs":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->clazz:Ljava/lang/Class;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->numMandatory:I

    .line 30
    iput-object p2, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->required:[Ljava/lang/Class;

    .line 31
    return-void
.end method


# virtual methods
.method public createInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 240
    :goto_0
    return-object v1

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "exception":Ljava/lang/InstantiationException;
    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    .line 238
    .end local v0    # "exception":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v0

    .line 239
    .local v0, "exception":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method protected final defineParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sonyericsson/collaboration/ObjectFactory;->defineParameter(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 93
    return-void
.end method

.method protected final defineParameter(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "constant"    # Z

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/sonyericsson/collaboration/ObjectFactory;->defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 97
    return-void
.end method

.method protected final defineParameter(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "constant"    # Z
    .param p4, "mandatory"    # Z

    .prologue
    .line 126
    if-nez p2, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 130
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    new-instance v1, Lcom/sonyericsson/collaboration/ObjectFactory$Value;

    invoke-direct {v1, p2, p3, p4}, Lcom/sonyericsson/collaboration/ObjectFactory$Value;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    if-eqz p4, :cond_2

    .line 134
    iget v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->numMandatory:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->numMandatory:I

    .line 136
    :cond_2
    return-void
.end method

.method protected final defineParameter(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/String;
    .param p3, "mandatory"    # Z

    .prologue
    .line 139
    if-nez p2, :cond_0

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    array-length v0, p2

    if-nez v0, :cond_1

    .line 143
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide at least one value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    if-nez v0, :cond_2

    .line 146
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    new-instance v1, Lcom/sonyericsson/collaboration/ObjectFactory$Value;

    invoke-direct {v1, p2, p3}, Lcom/sonyericsson/collaboration/ObjectFactory$Value;-><init>([Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    if-eqz p3, :cond_3

    .line 150
    iget v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->numMandatory:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->numMandatory:I

    .line 152
    :cond_3
    return-void
.end method

.method public final getBoolean(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v2, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/collaboration/ObjectFactory$Value;

    .line 225
    .local v0, "value":Lcom/sonyericsson/collaboration/ObjectFactory$Value;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->getValues()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const/4 v1, 0x1

    .line 228
    :cond_0
    return v1
.end method

.method public final getHexadecimal(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 199
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/collaboration/ObjectFactory$Value;

    .line 200
    .local v1, "value":Lcom/sonyericsson/collaboration/ObjectFactory$Value;
    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v1}, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->getValues()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v2, v2

    .line 206
    .end local v1    # "value":Lcom/sonyericsson/collaboration/ObjectFactory$Value;
    :cond_0
    :goto_0
    return v2

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "exception":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public final getInteger(Ljava/lang/String;)I
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 184
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/collaboration/ObjectFactory$Value;

    .line 185
    .local v1, "value":Lcom/sonyericsson/collaboration/ObjectFactory$Value;
    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v1}, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->getValues()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 191
    .end local v1    # "value":Lcom/sonyericsson/collaboration/ObjectFactory$Value;
    :cond_0
    :goto_0
    return v2

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "exception":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public final getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/collaboration/ObjectFactory$Value;

    .line 214
    .local v0, "value":Lcom/sonyericsson/collaboration/ObjectFactory$Value;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->getValues()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 217
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method final getObjectClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->clazz:Ljava/lang/Class;

    return-object v0
.end method

.method final getRequiredInterfaces()[Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->required:[Ljava/lang/Class;

    return-object v0
.end method

.method public final getText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v1, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/collaboration/ObjectFactory$Value;

    .line 173
    .local v0, "value":Lcom/sonyericsson/collaboration/ObjectFactory$Value;
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0}, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->getValues()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 176
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public onReuse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "instance"    # Ljava/lang/Object;

    .prologue
    .line 253
    return-void
.end method

.method final requirementsFulfilled([Ljava/lang/String;)Z
    .locals 8
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 37
    iget-object v5, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    if-nez v5, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v3

    .line 42
    :cond_1
    iget v0, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->numMandatory:I

    .line 43
    .local v0, "count":I
    array-length v6, p1

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v1, p1, v5

    .line 47
    .local v1, "name":Ljava/lang/String;
    iget-object v7, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v7, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 48
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_2

    check-cast v2, Lcom/sonyericsson/collaboration/ObjectFactory$Value;

    .end local v2    # "value":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->isMandatory()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 43
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 52
    .end local v1    # "name":Ljava/lang/String;
    :cond_3
    if-eqz v0, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 157
    iget-object v1, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/collaboration/ObjectFactory$Value;

    .line 158
    .local v0, "param":Lcom/sonyericsson/collaboration/ObjectFactory$Value;
    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0}, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->isConstant()Z

    move-result v1

    if-nez v1, :cond_0

    .line 160
    invoke-virtual {v0, p2}, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->setValue(Ljava/lang/String;)V

    .line 167
    return-void

    .line 162
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot modify constant parameter"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parameter not present for this factory"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method final softSetParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 59
    iget-object v5, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    if-nez v5, :cond_1

    .line 78
    :cond_0
    :goto_0
    return v3

    .line 62
    :cond_1
    iget-object v5, p0, Lcom/sonyericsson/collaboration/ObjectFactory;->parameters:Ljava/util/Hashtable;

    invoke-virtual {v5, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/collaboration/ObjectFactory$Value;

    .line 63
    .local v1, "param":Lcom/sonyericsson/collaboration/ObjectFactory$Value;
    if-eqz v1, :cond_0

    .line 65
    invoke-virtual {v1}, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->isConstant()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 69
    invoke-virtual {v1}, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->getValues()[Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "values":[Ljava/lang/String;
    array-length v6, v2

    move v5, v4

    :goto_1
    if-ge v5, v6, :cond_2

    aget-object v0, v2, v5

    .line 71
    .local v0, "matchCheckValue":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 70
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0    # "matchCheckValue":Ljava/lang/String;
    :cond_2
    move v3, v4

    .line 75
    goto :goto_0

    .line 77
    .end local v2    # "values":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v1, p2}, Lcom/sonyericsson/collaboration/ObjectFactory$Value;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method
