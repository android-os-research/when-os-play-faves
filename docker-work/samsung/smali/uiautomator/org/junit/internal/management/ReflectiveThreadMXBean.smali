.class final Lorg/junit/internal/management/ReflectiveThreadMXBean;
.super Ljava/lang/Object;
.source "ReflectiveThreadMXBean.java"

# interfaces
.implements Lorg/junit/internal/management/ThreadMXBean;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/junit/internal/management/ReflectiveThreadMXBean$Holder;
    }
.end annotation


# instance fields
.field private final threadMxBean:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .param p1, "threadMxBean"    # Ljava/lang/Object;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/junit/internal/management/ReflectiveThreadMXBean;->threadMxBean:Ljava/lang/Object;

    .line 43
    return-void
.end method


# virtual methods
.method public getThreadCpuTime(J)J
    .registers 10
    .param p1, "id"    # J

    .line 49
    sget-object v0, Lorg/junit/internal/management/ReflectiveThreadMXBean$Holder;->getThreadCpuTimeMethod:Ljava/lang/reflect/Method;

    const-string v1, "Unable to access ThreadMXBean"

    if-eqz v0, :cond_32

    .line 50
    const/4 v0, 0x0

    .line 52
    .local v0, "error":Ljava/lang/Exception;
    :try_start_7
    sget-object v2, Lorg/junit/internal/management/ReflectiveThreadMXBean$Holder;->getThreadCpuTimeMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lorg/junit/internal/management/ReflectiveThreadMXBean;->threadMxBean:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1
    :try_end_1f
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_1f} :catch_29
    .catch Ljava/lang/IllegalAccessException; {:try_start_7 .. :try_end_1f} :catch_26
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_1f} :catch_23
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_7 .. :try_end_1f} :catch_20

    return-wide v1

    .line 62
    :catch_20
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    move-object v0, v2

    goto :goto_2c

    .line 59
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_23
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    move-object v0, v2

    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_2b

    .line 56
    :catch_26
    move-exception v2

    .line 57
    .local v2, "e":Ljava/lang/IllegalAccessException;
    move-object v0, v2

    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_2b

    .line 53
    :catch_29
    move-exception v2

    .line 54
    .local v2, "e":Ljava/lang/ClassCastException;
    move-object v0, v2

    .line 65
    .end local v2    # "e":Ljava/lang/ClassCastException;
    :goto_2b
    nop

    .line 66
    :goto_2c
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2, v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 68
    .end local v0    # "error":Ljava/lang/Exception;
    :cond_32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isThreadCpuTimeSupported()Z
    .registers 5

    .line 75
    sget-object v0, Lorg/junit/internal/management/ReflectiveThreadMXBean$Holder;->isThreadCpuTimeSupportedMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_1d

    .line 77
    :try_start_5
    sget-object v0, Lorg/junit/internal/management/ReflectiveThreadMXBean$Holder;->isThreadCpuTimeSupportedMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lorg/junit/internal/management/ReflectiveThreadMXBean;->threadMxBean:Ljava/lang/Object;

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_15
    .catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_15} :catch_1c
    .catch Ljava/lang/IllegalAccessException; {:try_start_5 .. :try_end_15} :catch_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_15} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_5 .. :try_end_15} :catch_16

    return v0

    .line 84
    :catch_16
    move-exception v0

    goto :goto_1d

    .line 82
    :catch_18
    move-exception v0

    goto :goto_1d

    .line 80
    :catch_1a
    move-exception v0

    goto :goto_1d

    .line 78
    :catch_1c
    move-exception v0

    .line 88
    :cond_1d
    :goto_1d
    return v1
.end method
