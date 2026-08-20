.class public Lcom/mediatek/common/jpe/A;
.super Ljava/lang/Object;
.source "A.java"


# static fields
.field public static blacklist b:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/common/jpe/A;->b:Z

    .line 61
    const-string v0, "nativecheck-jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist A()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mediatek/common/jpe/JpeException;
        }
    .end annotation

    .line 51
    sget-boolean v0, Lcom/mediatek/common/jpe/A;->b:Z

    if-nez v0, :cond_7

    .line 52
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/common/jpe/A;->b:Z

    .line 54
    :cond_7
    invoke-virtual {p0}, Lcom/mediatek/common/jpe/A;->aa()I

    move-result v0

    if-nez v0, :cond_e

    .line 56
    return-void

    .line 55
    :cond_e
    new-instance v0, Lcom/mediatek/common/jpe/JpeException;

    const-string v1, "Class Not Found"

    invoke-direct {v0, v1}, Lcom/mediatek/common/jpe/JpeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native blacklist aa()I
.end method
