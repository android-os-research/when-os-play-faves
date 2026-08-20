.class Lcom/android/commands/monkey/Logger$2;
.super Lcom/android/commands/monkey/Logger;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Lcom/android/commands/monkey/Logger;-><init>()V

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 36
    sget-boolean v0, Lcom/android/commands/monkey/Logger$2;->stdout:Z

    if-eqz v0, :cond_9

    .line 37
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 39
    :cond_9
    sget-boolean v0, Lcom/android/commands/monkey/Logger$2;->logcat:Z

    if-eqz v0, :cond_12

    .line 40
    const-string v0, "Monkey"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_12
    return-void
.end method
