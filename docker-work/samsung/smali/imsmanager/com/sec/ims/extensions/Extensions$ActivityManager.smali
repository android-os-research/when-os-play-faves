.class public Lcom/sec/ims/extensions/Extensions$ActivityManager;
.super Ljava/lang/Object;
.source "Extensions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/extensions/Extensions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityManager"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentUser()I
    .registers 4

    .line 59
    :try_start_0
    const-class v0, Landroid/app/ActivityManager;

    const-string v1, "getCurrentUser"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 60
    .local v0, "method":Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/sec/ims/extensions/ReflectionUtils;->invoke2(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_18} :catch_19

    return v1

    .line 61
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :catch_19
    move-exception v0

    .line 62
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 65
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    const/4 v0, -0x1

    return v0
.end method
