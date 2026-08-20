.class public final Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;
.super Landroid/os/Handler;
.source "LicenseLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/license/LicenseLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LogHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/license/LicenseLogService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/license/LicenseLogService;Landroid/os/Looper;)V
    .registers 3

    .line 336
    iput-object p1, p0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->this$0:Lcom/android/server/enterprise/license/LicenseLogService;

    .line 337
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    if-eqz p1, :cond_4f

    .line 342
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_43

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    goto :goto_4f

    .line 349
    :cond_b
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 350
    iget-object v0, p0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->this$0:Lcom/android/server/enterprise/license/LicenseLogService;

    const-string p0, "apiName"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "adminUid"

    .line 351
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string/jumbo p0, "isGetterApi"

    .line 352
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo p0, "isOldNamespace"

    .line 353
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string/jumbo p0, "profileUserId"

    .line 354
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string/jumbo p0, "parent"

    .line 355
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string p0, "dalessCallerPackage"

    .line 356
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 350
    invoke-static/range {v0 .. v7}, Lcom/android/server/enterprise/license/LicenseLogService;->-$$Nest$m_log(Lcom/android/server/enterprise/license/LicenseLogService;Ljava/lang/String;IZZIZI)V

    goto :goto_4f

    :cond_43
    const-string p1, "LicenseLogService"

    const-string v0, "MSG_CLEAN_OLD_RECORDS"

    .line 344
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p0, p0, Lcom/android/server/enterprise/license/LicenseLogService$LogHandler;->this$0:Lcom/android/server/enterprise/license/LicenseLogService;

    invoke-static {p0}, Lcom/android/server/enterprise/license/LicenseLogService;->-$$Nest$mhandleLicenseLogCleanNotification(Lcom/android/server/enterprise/license/LicenseLogService;)V

    :cond_4f
    :goto_4f
    return-void
.end method
