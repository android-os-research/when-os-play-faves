.class public Lcom/android/server/power/ShutdownThread$getDelayDumpstate$1;
.super Ljava/lang/Object;
.source "ShutdownThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread$getDelayDumpstate;->startState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1407
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1410
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetBIN_TYPE_PRODUCTSHIP()Z

    move-result p0

    const-string v0, "ShutdownDelay"

    if-nez p0, :cond_36

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetmReason()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "recovery"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_36

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetmReason()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "recovery-update"

    .line 1411
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_36

    :cond_23
    const-string p0, "!@ShutdownThread.run() : checking timeout, done."

    .line 1415
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    new-instance p0, Landroid/os/BugreportParams;

    const/16 v0, 0x11

    invoke-direct {p0, v0}, Landroid/os/BugreportParams;-><init>(I)V

    const-string/jumbo v0, "shutdownthread"

    invoke-static {p0, v0}, Landroid/os/Debug;->saveDump(Landroid/os/BugreportParams;Ljava/lang/String;)V

    goto :goto_4e

    :cond_36
    :goto_36
    const-string p0, "!@ShutdownThread.run() : Checking timeout, done. Try force shutdown again."

    .line 1412
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1413
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetsInstance()Lcom/android/server/power/ShutdownThread;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/power/ShutdownThread;->-$$Nest$fgetmContext(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetmReboot()Z

    move-result v0

    invoke-static {}, Lcom/android/server/power/ShutdownThread;->-$$Nest$sfgetmReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    :goto_4e
    return-void
.end method
