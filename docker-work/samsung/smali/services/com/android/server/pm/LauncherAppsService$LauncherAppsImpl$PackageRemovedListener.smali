.class public Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;
.super Landroid/content/BroadcastReceiver;
.source "LauncherAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PackageRemovedListener"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .registers 2

    .line 1614
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    return-void
.end method


# virtual methods
.method public final getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    .registers 2

    .line 1684
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_b

    .line 1685
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    const-string p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    .line 1618
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "LauncherAppsService"

    if-ne p1, v0, :cond_21

    .line 1621
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Intent broadcast does not contain user handle: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1624
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.PACKAGE_REMOVED_INTERNAL"

    .line 1626
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16c

    .line 1627
    invoke-virtual {p0, p2}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.VISIBILITY_ALLOW_LIST"

    .line 1629
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 1631
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calling onPackageRemoved: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", EXTRA_REPLACING: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "android.intent.extra.REPLACING"

    const/4 v6, 0x0

    .line 1632
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1631
    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_16c

    .line 1636
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_16c

    .line 1638
    new-instance p2, Landroid/os/UserHandle;

    invoke-direct {p2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 1639
    iget-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result p1

    :goto_71
    if-ge v6, p1, :cond_163

    .line 1642
    :try_start_73
    iget-object v3, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v3}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v3

    .line 1643
    invoke-virtual {v3, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IOnAppsChangedListener;

    .line 1644
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v5

    .line 1645
    invoke-virtual {v5, v6}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;

    .line 1646
    iget-object v7, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    iget-object v8, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    const-string/jumbo v9, "onPackageRemoved"

    invoke-static {v7, v8, p2, v9}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$misEnabledProfileOf(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v7
    :try_end_96
    .catchall {:try_start_73 .. :try_end_96} :catchall_158

    const-string v8, ")"

    const-string v9, "("

    const-string v10, ", listener: "

    const-string v11, ", "

    if-nez v7, :cond_d9

    .line 1648
    :try_start_a0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip onPackageRemoved(not enabled): "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_154

    .line 1655
    :cond_d9
    iget v7, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    invoke-static {v2, v7}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$smisCallingAppIdAllowed([II)Z

    move-result v7

    if-nez v7, :cond_11d

    .line 1658
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skip onPackageRemoved(not allowed): "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11c
    .catchall {:try_start_a0 .. :try_end_11c} :catchall_158

    goto :goto_154

    .line 1667
    :cond_11d
    :try_start_11d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    invoke-interface {v3, p2, v0}, Landroid/content/pm/IOnAppsChangedListener;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_14d
    .catch Landroid/os/RemoteException; {:try_start_11d .. :try_end_14d} :catch_14e
    .catchall {:try_start_11d .. :try_end_14d} :catchall_158

    goto :goto_154

    :catch_14e
    move-exception v3

    :try_start_14f
    const-string v5, "Callback failed "

    .line 1673
    invoke-static {v1, v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_154
    .catchall {:try_start_14f .. :try_end_154} :catchall_158

    :goto_154
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_71

    :catchall_158
    move-exception p1

    .line 1677
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1678
    throw p1

    .line 1677
    :cond_163
    iget-object p0, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageRemovedListener;->this$0:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-static {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->-$$Nest$fgetmListeners(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_16c
    return-void
.end method
