.class Lcom/sonymobile/runtimeskinning/ReflectionUtils$Accessor;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/runtimeskinning/ReflectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Accessor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 0
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/sonymobile/runtimeskinning/ReflectionUtils$Accessor;, "Lcom/sonymobile/runtimeskinning/ReflectionUtils$Accessor<TT;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/sonymobile/runtimeskinning/ReflectionUtils$Accessor;->mClass:Ljava/lang/Class;

    .line 45
    iput-object p2, p0, Lcom/sonymobile/runtimeskinning/ReflectionUtils$Accessor;->mField:Ljava/lang/reflect/Field;

    .line 46
    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/sonymobile/runtimeskinning/ReflectionUtils$Accessor;, "Lcom/sonymobile/runtimeskinning/ReflectionUtils$Accessor<TT;>;"
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/ReflectionUtils$Accessor;->mField:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/sonymobile/runtimeskinning/ReflectionUtils$Accessor;->mClass:Ljava/lang/Class;

    invoke-static {v0, p1, v1}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->readField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TT;)Z"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/sonymobile/runtimeskinning/ReflectionUtils$Accessor;, "Lcom/sonymobile/runtimeskinning/ReflectionUtils$Accessor<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/sonymobile/runtimeskinning/ReflectionUtils$Accessor;->mField:Ljava/lang/reflect/Field;

    invoke-static {v0, p1, p2}, Lcom/sonymobile/runtimeskinning/ReflectionUtils;->setField(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
