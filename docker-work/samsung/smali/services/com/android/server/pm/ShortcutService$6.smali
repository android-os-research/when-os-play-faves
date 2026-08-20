.class public Lcom/android/server/pm/ShortcutService$6;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2

    .line 3843
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14

    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    .line 3846
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_21

    const-string p0, "ShortcutService"

    .line 3848
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Intent broadcast does not contain user handle: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3852
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3856
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v1}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v1

    .line 3858
    :try_start_2b
    iget-object v3, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {v3}, Lcom/android/server/pm/ShortcutService;->-$$Nest$fgetmLock(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_fe
    .catchall {:try_start_2b .. :try_end_32} :catchall_fc

    .line 3859
    :try_start_32
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, p1}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v4

    if-nez v4, :cond_41

    .line 3864
    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_f9

    .line 3910
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    .line 3866
    :cond_41
    :try_start_41
    monitor-exit v3
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_f9

    .line 3868
    :try_start_42
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_4d

    .line 3869
    invoke-virtual {v3}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    goto :goto_4e

    :cond_4d
    const/4 v3, 0x0

    :goto_4e
    if-nez v3, :cond_6c

    const-string p1, "ShortcutService"

    .line 3872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Intent broadcast does not contain package name: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_66} :catch_fe
    .catchall {:try_start_42 .. :try_end_66} :catchall_fc

    .line 3910
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    :cond_6c
    :try_start_6c
    const-string v4, "android.intent.extra.REPLACING"

    const/4 v5, 0x0

    .line 3876
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 3878
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, -0x1

    sparse-switch v6, :sswitch_data_112

    goto :goto_a6

    :sswitch_7f
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    goto :goto_a7

    :sswitch_88
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    move v5, v9

    goto :goto_a7

    :sswitch_92
    const-string v5, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    move v5, v7

    goto :goto_a7

    :sswitch_9c
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    move v5, v8

    goto :goto_a7

    :cond_a6
    :goto_a6
    move v5, v10

    :goto_a7
    if-eqz v5, :cond_eb

    if-eq v5, v9, :cond_e3

    if-eq v5, v8, :cond_b6

    if-eq v5, v7, :cond_b0

    goto :goto_106

    .line 3904
    :cond_b0
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2, v3, p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageDataCleared(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_106

    :cond_b6
    const-string v0, "EM_PKG_HADNLER_ID"

    .line 3893
    invoke-virtual {p2, v0, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v10, :cond_dd

    const-string p1, "ShortcutService"

    .line 3895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip PACKAGE_CHANGED intent from Emergency mode: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", pkg: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_106

    .line 3900
    :cond_dd
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2, v3, p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageChanged(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_106

    :cond_e3
    if-nez v4, :cond_106

    .line 3888
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2, v3, p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageRemoved(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_106

    :cond_eb
    if-eqz v4, :cond_f3

    .line 3881
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2, v3, p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageUpdateFinished(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_106

    .line 3883
    :cond_f3
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-static {p2, v3, p1}, Lcom/android/server/pm/ShortcutService;->-$$Nest$mhandlePackageAdded(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_f8
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_f8} :catch_fe
    .catchall {:try_start_6c .. :try_end_f8} :catchall_fc

    goto :goto_106

    :catchall_f9
    move-exception p1

    .line 3866
    :try_start_fa
    monitor-exit v3
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_f9

    :try_start_fb
    throw p1
    :try_end_fc
    .catch Ljava/lang/Exception; {:try_start_fb .. :try_end_fc} :catch_fe
    .catchall {:try_start_fb .. :try_end_fc} :catchall_fc

    :catchall_fc
    move-exception p1

    goto :goto_10c

    :catch_fe
    move-exception p1

    .line 3908
    :try_start_ff
    iget-object p2, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string v0, "Exception in mPackageMonitor.onReceive"

    invoke-virtual {p2, v0, p1}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_106
    .catchall {:try_start_ff .. :try_end_106} :catchall_fc

    .line 3910
    :cond_106
    :goto_106
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    return-void

    :goto_10c
    iget-object p0, p0, Lcom/android/server/pm/ShortcutService$6;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3911
    throw p1

    :sswitch_data_112
    .sparse-switch
        0xa480416 -> :sswitch_9c
        0xff13fb5 -> :sswitch_92
        0x1f50b9c2 -> :sswitch_88
        0x5c1076e2 -> :sswitch_7f
    .end sparse-switch
.end method
