.class public Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "registerAppRunnable"
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;)V
    .registers 2

    .line 4680
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 4684
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->-$$Nest$fgetisTriggered(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;)Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    const-string v0, "PhoneWindowManagerExt"

    const-string/jumbo v1, "start registerHotKeyApp."

    .line 4687
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4688
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->-$$Nest$fputisTriggered(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;Z)V

    .line 4691
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mSystemKeyPolicy:Lcom/android/server/policy/SystemKeyManager;

    invoke-virtual {v1}, Lcom/android/server/policy/SystemKeyManager;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_24

    return-void

    .line 4695
    :cond_24
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 4696
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 4697
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not register hot key. packageName is empty. componentName="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4703
    :cond_43
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    .line 4706
    :try_start_4e
    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception v5

    .line 4708
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_57
    if-nez v4, :cond_5a

    return-void

    .line 4713
    :cond_5a
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v5, v5, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_ab

    .line 4715
    iget-object v6, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    invoke-static {v6, v3}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->-$$Nest$misMatchWithLauncherApps(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_ab

    .line 4717
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    iget-object v3, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v3, v3, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->-$$Nest$fgetkeyCode(Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;)I

    move-result v0

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v0, v5}, Lcom/android/server/policy/KeyCustomizationManager;->putHotKey(ILandroid/content/ComponentName;)V

    .line 4724
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    const v3, 0x10405df

    .line 4725
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 4726
    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 4724
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4727
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey$registerAppRunnable;->this$1:Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$HotKey;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/policy/PhoneWindowManagerExt;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 4719
    :cond_ab
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Can not register hot key. packageName="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
