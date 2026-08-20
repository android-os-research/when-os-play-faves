.class public Lcom/android/server/enterprise/security/PasswordPolicy$5;
.super Landroid/content/BroadcastReceiver;
.source "PasswordPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/PasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .registers 2

    .line 822
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11

    .line 827
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 828
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    .line 829
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object v1, v1, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {v1}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderClearCallingIdentity()J

    move-result-wide v1

    .line 830
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const-string v4, "com.samsung.android.knox.intent.action.PWD_CHANGE_TIMEOUT_INTERNAL"

    .line 832
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    .line 834
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p1, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$menforcePwdChangeIfNeededOnTimeout(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto/16 :goto_d1

    :cond_23
    const-string v4, "android.intent.action.USER_STARTED"

    .line 836
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    const-string v6, "android.intent.extra.user_handle"

    if-eqz v4, :cond_3b

    .line 837
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_d1

    .line 839
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$menforcePwdChangeIfNeededOnStart(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto/16 :goto_d1

    :cond_3b
    const-string v4, "android.intent.action.USER_SWITCHED"

    .line 842
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    .line 843
    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz p1, :cond_d1

    .line 845
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p2, p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$menforcePwdChangeIfNeededOnSwitch(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto/16 :goto_d1

    :cond_50
    const-string v4, "android.intent.action.PHONE_STATE"

    .line 848
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6a

    .line 849
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmTelManager(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    if-nez p1, :cond_d1

    .line 850
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p1, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$menforcePwdChangeIfNeededAfterCall(Lcom/android/server/enterprise/security/PasswordPolicy;I)V

    goto :goto_d1

    :cond_6a
    const-string v3, "com.samsung.android.knox.intent.action.NOTIFICATION_PASSWORD_EXPIRED_INTERNAL"

    .line 853
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d1

    const-string p1, "PasswordPolicy"

    const-string v3, "Received ACTION_PASSWORD_EXPIRING_NOTIFICATION_INTERNAL intent"

    .line 854
    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "expiration"

    const-wide/16 v4, -0x1

    .line 856
    invoke-virtual {p2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    cmp-long p2, v6, v4

    if-eqz p2, :cond_b5

    .line 857
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long p2, v6, v3

    if-lez p2, :cond_8e

    goto :goto_b5

    :cond_8e
    const-string p2, "Password expired already so launching password screen"

    .line 862
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmPersonaManagerAdapter(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isValidKnoxId(I)Z

    move-result p2

    if-eqz p2, :cond_ae

    .line 868
    :try_start_9f
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object p2

    const-string v3, "com.android.settings"

    .line 869
    invoke-interface {p2, v3, v0}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_a8
    .catch Landroid/os/RemoteException; {:try_start_9f .. :try_end_a8} :catch_a9

    goto :goto_ae

    :catch_a9
    const-string p2, "forceStopPackage failed"

    .line 871
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :cond_ae
    :goto_ae
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$menforcePwdChangeForUser(Lcom/android/server/enterprise/security/PasswordPolicy;II)Z

    goto :goto_d1

    .line 858
    :cond_b5
    :goto_b5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "In grace period or failed to get "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderRestoreCallingIdentity(J)V

    return-void

    .line 876
    :cond_d1
    :goto_d1
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$5;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy;->mInjector:Lcom/android/server/enterprise/security/PasswordPolicy$Injector;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy$Injector;->binderRestoreCallingIdentity(J)V

    return-void
.end method
