.class public Lcom/android/server/enterprise/license/LicenseLogService$1;
.super Landroid/content/BroadcastReceiver;
.source "LicenseLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/license/LicenseLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/license/LicenseLogService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/license/LicenseLogService;)V
    .registers 2

    .line 321
    iput-object p1, p0, Lcom/android/server/enterprise/license/LicenseLogService$1;->this$0:Lcom/android/server/enterprise/license/LicenseLogService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 324
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 325
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    const-string p1, "com.samsung.android.knox.intent.action.LICENSE_LOG_DELETE_OLD_RECORDS_INTERNAL"

    .line 326
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 327
    :cond_14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "License log delete old records for action "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LicenseLogService"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {}, Lcom/android/server/enterprise/license/LicenseLogService;->-$$Nest$sfgetmHandler()Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    .line 330
    invoke-static {}, Lcom/android/server/enterprise/license/LicenseLogService;->-$$Nest$sfgetmHandler()Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3a
    return-void
.end method
