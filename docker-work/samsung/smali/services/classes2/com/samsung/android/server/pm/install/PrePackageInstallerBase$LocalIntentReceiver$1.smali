.class public Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "PrePackageInstallerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;)V
    .registers 2

    .line 363
    iput-object p1, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver$1;->this$0:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 8

    .line 369
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver$1;->this$0:Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;

    invoke-static {p0}, Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;->-$$Nest$fgetmResult(Lcom/samsung/android/server/pm/install/PrePackageInstallerBase$LocalIntentReceiver;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object p0

    const-wide/16 p3, 0x3c

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p2, p3, p4, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 371
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method
