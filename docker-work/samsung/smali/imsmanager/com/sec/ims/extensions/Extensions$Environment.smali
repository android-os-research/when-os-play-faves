.class public Lcom/sec/ims/extensions/Extensions$Environment;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Environment"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initForCurrentUser()V
    .registers 4

    .line 72
    :try_start_0
    const-class v0, Landroid/os/Environment;

    const-string v1, "initForCurrentUser"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 73
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_11} :catch_12

    .line 76
    .end local v0    # "method":Ljava/lang/reflect/Method;
    goto :goto_16

    .line 74
    :catch_12
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 77
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_16
    return-void
.end method
