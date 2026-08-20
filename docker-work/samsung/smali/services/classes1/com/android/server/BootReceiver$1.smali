.class public Lcom/android/server/BootReceiver$1;
.super Ljava/lang/Thread;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BootReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/BootReceiver;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    .registers 3

    .line 1449
    iput-object p1, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iput-object p2, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "BootReceiver"

    .line 1453
    :try_start_2
    iget-object v1, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object v2, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/server/BootReceiver;->-$$Nest$mlogBootEvents(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_9} :catch_a

    goto :goto_10

    :catch_a
    move-exception v1

    const-string v2, "Can\'t log boot events"

    .line 1455
    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_10
    const/4 v1, 0x0

    :try_start_11
    const-string/jumbo v2, "package"

    .line 1460
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    .line 1461
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z

    move-result v1
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_20} :catch_23
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_20} :catch_21

    goto :goto_23

    :catch_21
    move-exception p0

    goto :goto_2d

    :catch_23
    :goto_23
    if-nez v1, :cond_32

    .line 1465
    :try_start_25
    iget-object v1, p0, Lcom/android/server/BootReceiver$1;->this$0:Lcom/android/server/BootReceiver;

    iget-object p0, p0, Lcom/android/server/BootReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/server/BootReceiver;->-$$Nest$mremoveOldUpdatePackages(Lcom/android/server/BootReceiver;Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2c} :catch_21

    goto :goto_32

    :goto_2d
    const-string v1, "Can\'t remove old update packages"

    .line 1468
    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_32
    :goto_32
    return-void
.end method
