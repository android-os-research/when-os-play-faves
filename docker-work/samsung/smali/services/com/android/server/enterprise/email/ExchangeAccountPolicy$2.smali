.class public Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;
.super Landroid/os/Handler;
.source "ExchangeAccountPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/ExchangeAccountPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)V
    .registers 2

    .line 1247
    iput-object p1, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 1251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Handler : message = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ExchangeAccountPolicy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1e

    goto :goto_8f

    .line 1254
    :cond_1e
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1255
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 1256
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-$$Nest$fgetmExchangeServiceDisabled(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_8a

    .line 1257
    iget-object v3, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-static {v3}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1258
    new-instance v5, Landroid/content/ComponentName;

    invoke-static {v0}, Lcom/android/server/enterprise/email/SettingsUtils;->getEasPackageName(I)Ljava/lang/String;

    move-result-object v6

    .line 1259
    invoke-static {v0}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-$$Nest$smgetExchangeServiceName(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v6, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handler / RESTART_EMAIL_APP : Enabling EAS ExchangeService user "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    invoke-virtual {v3, v5, v2, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1264
    iget-object v0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-static {v0, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-$$Nest$fputmExchangeServiceDisabled(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)V

    .line 1266
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1268
    :try_start_62
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.samsung.android.knox.intent.action.EAS_INTENT_INTERNAL"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1269
    iget-object v5, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-static {v5}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-$$Nest$fgetmContext(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string p1, "com.samsung.android.knox.permission.KNOX_EMAIL"

    invoke-virtual {v5, v0, v6, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_79} :catch_7c
    .catchall {:try_start_62 .. :try_end_79} :catchall_7a

    goto :goto_82

    :catchall_7a
    move-exception p0

    goto :goto_86

    :catch_7c
    move-exception p1

    :try_start_7d
    const-string v0, "Handler / RESTART_EMAIL_APP : fail to restart ExchangeService. "

    .line 1271
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_82
    .catchall {:try_start_7d .. :try_end_82} :catchall_7a

    .line 1273
    :goto_82
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_8a

    :goto_86
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1274
    throw p0

    .line 1276
    :cond_8a
    :goto_8a
    iget-object p0, p0, Lcom/android/server/enterprise/email/ExchangeAccountPolicy$2;->this$0:Lcom/android/server/enterprise/email/ExchangeAccountPolicy;

    invoke-static {p0, v4}, Lcom/android/server/enterprise/email/ExchangeAccountPolicy;->-$$Nest$fputmRestartExtendDelay(Lcom/android/server/enterprise/email/ExchangeAccountPolicy;Z)V

    :goto_8f
    return-void
.end method
