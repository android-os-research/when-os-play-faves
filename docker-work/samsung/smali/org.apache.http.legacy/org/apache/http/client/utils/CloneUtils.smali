.class public Lorg/apache/http/client/utils/CloneUtils;
.super Ljava/lang/Object;
.source "CloneUtils.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method

.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 46
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 47
    return-object v0

    .line 49
    :cond_4
    instance-of v1, p0, Ljava/lang/Cloneable;

    if-eqz v1, :cond_49

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 53
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_c
    const-string v2, "clone"

    move-object v3, v0

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_15} :catch_3e

    .line 56
    .local v2, "m":Ljava/lang/reflect/Method;
    nop

    .line 58
    :try_start_16
    move-object v3, v0

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_1d} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_1d} :catch_1e

    return-object v0

    .line 66
    :catch_1e
    move-exception v0

    .line 67
    .local v0, "ex":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalAccessError;

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    .end local v0    # "ex":Ljava/lang/IllegalAccessException;
    :catch_29
    move-exception v0

    .line 60
    .local v0, "ex":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 61
    .local v3, "cause":Ljava/lang/Throwable;
    instance-of v4, v3, Ljava/lang/CloneNotSupportedException;

    if-eqz v4, :cond_36

    .line 62
    move-object v4, v3

    check-cast v4, Ljava/lang/CloneNotSupportedException;

    throw v4

    .line 64
    :cond_36
    new-instance v4, Ljava/lang/Error;

    const-string v5, "Unexpected exception"

    invoke-direct {v4, v5, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 54
    .end local v0    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    .end local v3    # "cause":Ljava/lang/Throwable;
    :catch_3e
    move-exception v0

    .line 55
    .local v0, "ex":Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/NoSuchMethodError;

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V

    throw v2

    .line 70
    .end local v0    # "ex":Ljava/lang/NoSuchMethodException;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_49
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method
