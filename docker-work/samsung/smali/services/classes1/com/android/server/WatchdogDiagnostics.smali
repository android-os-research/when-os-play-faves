.class public Lcom/android/server/WatchdogDiagnostics;
.super Ljava/lang/Object;
.source "WatchdogDiagnostics.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static diagnoseCheckers(Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/Watchdog$HandlerChecker;",
            ">;)V"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroid/util/LogWriter;

    const/4 v2, 0x5

    const-string v3, "Watchdog"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Landroid/util/LogWriter;-><init>(ILjava/lang/String;I)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    const/4 v1, 0x6

    const-string v2, "PLATFORM WATCHDOG RESET"

    const/4 v5, 0x0

    .line 74
    invoke-static {v4, v1, v3, v2, v5}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    move v6, v2

    .line 75
    :goto_18
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_6b

    .line 76
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/Watchdog$HandlerChecker;

    invoke-virtual {v7}, Lcom/android/server/Watchdog$HandlerChecker;->getThread()Ljava/lang/Thread;

    move-result-object v7

    .line 77
    invoke-static {v7, v0}, Lcom/android/server/WatchdogDiagnostics;->printAnnotatedStack(Ljava/lang/Thread;Ljava/io/PrintWriter;)Z

    move-result v8

    if-eqz v8, :cond_2f

    goto :goto_68

    .line 83
    :cond_2f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    invoke-virtual {v7}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " stack trace:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 83
    invoke-static {v4, v1, v3, v8, v5}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    invoke-virtual {v7}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v7

    .line 86
    array-length v8, v7

    move v9, v2

    :goto_4d
    if-ge v9, v8, :cond_68

    aget-object v10, v7, v9

    .line 88
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v4, v1, v3, v10, v5}, Landroid/util/Log;->printlns(IILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    add-int/lit8 v9, v9, 0x1

    goto :goto_4d

    :cond_68
    :goto_68
    add-int/lit8 v6, v6, 0x1

    goto :goto_18

    :cond_6b
    return-void
.end method

.method public static getBlockedOnString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 38
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "- waiting to lock <0x%08x> (a %s)"

    .line 37
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLockedString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 43
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "- locked <0x%08x> (a %s)"

    .line 42
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static printAnnotatedStack(Ljava/lang/Thread;Ljava/io/PrintWriter;)Z
    .registers 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 52
    invoke-static {p0}, Ldalvik/system/VMStack;->getAnnotatedThreadStackTrace(Ljava/lang/Thread;)[Ldalvik/system/AnnotatedStackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 56
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!@ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " annotated stack trace:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 57
    array-length p0, v0

    move v2, v1

    :goto_27
    if-ge v2, p0, :cond_91

    aget-object v3, v0, v2

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@    at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ldalvik/system/AnnotatedStackTraceElement;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v3}, Ldalvik/system/AnnotatedStackTraceElement;->getBlockedOn()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "!@    "

    if-eqz v4, :cond_65

    .line 60
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ldalvik/system/AnnotatedStackTraceElement;->getBlockedOn()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/WatchdogDiagnostics;->getBlockedOnString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 62
    :cond_65
    invoke-virtual {v3}, Ldalvik/system/AnnotatedStackTraceElement;->getHeldLocks()[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_8e

    .line 63
    invoke-virtual {v3}, Ldalvik/system/AnnotatedStackTraceElement;->getHeldLocks()[Ljava/lang/Object;

    move-result-object v3

    array-length v4, v3

    move v6, v1

    :goto_71
    if-ge v6, v4, :cond_8e

    aget-object v7, v3, v6

    .line 64
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Lcom/android/server/WatchdogDiagnostics;->getLockedString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_71

    :cond_8e
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_91
    const/4 p0, 0x1

    return p0
.end method
