.class public Lcom/android/server/power/ShutdownThread$7;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->uncrypt()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field public final synthetic val$done:[Z

.field public final synthetic val$progressListener:Landroid/os/RecoverySystem$ProgressListener;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownThread;Landroid/os/RecoverySystem$ProgressListener;[Z)V
    .registers 4

    .line 1198
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$7;->val$progressListener:Landroid/os/RecoverySystem$ProgressListener;

    iput-object p3, p0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const-string v0, "ShutdownThread"

    .line 1201
    iget-object v1, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v1}, Lcom/android/server/power/ShutdownThread;->-$$Nest$fgetmContext(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "recovery"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RecoverySystem;

    const/4 v1, 0x3

    :goto_12
    const/4 v2, 0x0

    if-lez v1, :cond_4e

    .line 1207
    :try_start_15
    sget-object v3, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1208
    iget-object v4, p0, Lcom/android/server/power/ShutdownThread$7;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-static {v4}, Lcom/android/server/power/ShutdownThread;->-$$Nest$fgetmContext(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/power/ShutdownThread$7;->val$progressListener:Landroid/os/RecoverySystem$ProgressListener;

    invoke-static {v4, v5, v3}, Landroid/os/RecoverySystem;->processPackage(Landroid/content/Context;Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;)V

    const-string v3, "!@uncrypt finished. No need to retry uncrypt"

    .line 1209
    invoke-static {v0, v3}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_31} :catch_32

    goto :goto_4e

    :catch_32
    move-exception v2

    add-int/lit8 v1, v1, -0x1

    .line 1213
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@Error uncrypting file : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1216
    :cond_4e
    :goto_4e
    iget-object p0, p0, Lcom/android/server/power/ShutdownThread$7;->val$done:[Z

    const/4 v0, 0x1

    aput-boolean v0, p0, v2

    return-void
.end method
