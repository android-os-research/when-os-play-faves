.class public Lcom/android/server/enterprise/security/SecurityPolicy$3;
.super Landroid/content/BroadcastReceiver;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/SecurityPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/SecurityPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/SecurityPolicy;)V
    .registers 2

    .line 339
    iput-object p1, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 342
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, -0x1

    .line 343
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecurityPolicy"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_29
    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    const-string v1, "com.samsung.android.knox.intent.action.EDM_BOOT_COMPLETED_INTERNAL"

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 349
    :cond_39
    iget-object v0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->-$$Nest$fputmBootCompleted(Lcom/android/server/enterprise/security/SecurityPolicy;Z)V

    .line 352
    const-class v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-static {v0}, Lcom/android/server/enterprise/adapter/AdapterRegistry;->getAdapter(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    invoke-interface {v0, p2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result p2

    if-eqz p2, :cond_4e

    return-void

    .line 357
    :cond_4e
    iget-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->isRebootBannerEnabled(I)Z

    move-result p2

    if-eqz p2, :cond_93

    .line 358
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result p2

    if-eqz p2, :cond_6c

    const-string p1, "Saving Device safe mode to true in generic table"

    .line 359
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {p0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->-$$Nest$msaveDeviceBootMode(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z

    goto :goto_93

    .line 362
    :cond_6c
    iget-object p2, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/security/SecurityPolicy;->-$$Nest$misLastBootInSafeMode(Lcom/android/server/enterprise/security/SecurityPolicy;)Z

    move-result p2

    if-eqz p2, :cond_93

    const-string p2, "Sending broadcast: com.samsung.android.knox.intent.action.LAST_BOOT_SAFE_MODE_INTERNAL"

    .line 363
    invoke-static {v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance p2, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.LAST_BOOT_SAFE_MODE_INTERNAL"

    invoke-direct {p2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 365
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    .line 364
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 367
    iget-object p0, p0, Lcom/android/server/enterprise/security/SecurityPolicy$3;->this$0:Lcom/android/server/enterprise/security/SecurityPolicy;

    invoke-static {p0, v0}, Lcom/android/server/enterprise/security/SecurityPolicy;->-$$Nest$msaveDeviceBootMode(Lcom/android/server/enterprise/security/SecurityPolicy;Z)Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_8e} :catch_8f

    goto :goto_93

    :catch_8f
    move-exception p0

    .line 373
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_93
    :goto_93
    return-void
.end method
