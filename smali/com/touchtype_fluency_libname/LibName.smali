.class public Lcom/touchtype_fluency_libname/LibName;
.super Ljava/lang/Object;
.source "LibName.java"


# static fields
.field public static libName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "swiftkeysdk-java"

    sput-object v0, Lcom/touchtype_fluency_libname/LibName;->libName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
