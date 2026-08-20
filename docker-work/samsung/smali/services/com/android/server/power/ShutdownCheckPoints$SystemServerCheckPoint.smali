.class public Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;
.super Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;
.source "ShutdownCheckPoints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownCheckPoints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemServerCheckPoint"
.end annotation


# instance fields
.field public final mStackTraceElements:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V
    .registers 3

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/android/server/power/ShutdownCheckPoints$CheckPoint;-><init>(Lcom/android/server/power/ShutdownCheckPoints$Injector;Ljava/lang/String;)V

    .line 218
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public dumpDetails(Ljava/io/PrintWriter;)V
    .registers 3

    .line 228
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->getMethodName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "Failed to get method name"

    .line 229
    :cond_8
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->printStackTrace(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final findCallSiteIndex()I
    .registers 5

    .line 252
    const-class v0, Lcom/android/server/power/ShutdownCheckPoints;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 255
    :goto_7
    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    array-length v3, v2

    if-ge v1, v3, :cond_1b

    aget-object v2, v2, v1

    .line 256
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 260
    :cond_1b
    :goto_1b
    iget-object v2, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    array-length v3, v2

    if-ge v1, v3, :cond_2f

    aget-object v2, v2, v1

    .line 261
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_2f
    return v1
.end method

.method public getMethodName()Ljava/lang/String;
    .registers 4

    .line 235
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->findCallSiteIndex()I

    move-result v0

    .line 236
    iget-object p0, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    array-length v1, p0

    if-ge v0, v1, :cond_23

    .line 237
    aget-object p0, p0, v0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 238
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s.%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOrigin()Ljava/lang/String;
    .registers 1

    const-string p0, "SYSTEM"

    return-object p0
.end method

.method public printStackTrace(Ljava/io/PrintWriter;)V
    .registers 4

    .line 245
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->findCallSiteIndex()I

    move-result v0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    array-length v1, v1

    if-ge v0, v1, :cond_18

    const-string v1, " at "

    .line 246
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/android/server/power/ShutdownCheckPoints$SystemServerCheckPoint;->mStackTraceElements:[Ljava/lang/StackTraceElement;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_4

    :cond_18
    return-void
.end method
