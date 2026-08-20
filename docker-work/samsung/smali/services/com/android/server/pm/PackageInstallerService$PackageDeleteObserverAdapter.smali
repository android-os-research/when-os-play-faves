.class public Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;
.super Landroid/app/PackageDeleteObserver;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PackageDeleteObserverAdapter"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mNotification:Landroid/app/Notification;

.field public final mPackageName:Ljava/lang/String;

.field public final mTarget:Landroid/content/IntentSender;


# direct methods
.method public static synthetic $r8$lambda$NQ57yrN3xiAWkZQK7Rvh3XAyZCw(Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->lambda$getDeviceOwnerDeletedPackageMsg$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/IntentSender;Ljava/lang/String;ZI)V
    .registers 6

    .line 1570
    invoke-direct {p0}, Landroid/app/PackageDeleteObserver;-><init>()V

    .line 1571
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    .line 1572
    iput-object p2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    .line 1573
    iput-object p3, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    if-eqz p4, :cond_16

    .line 1576
    invoke-virtual {p0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->getDeviceOwnerDeletedPackageMsg()Ljava/lang/String;

    move-result-object p2

    .line 1575
    invoke-static {p1, p2, p3, p5}, Lcom/android/server/pm/PackageInstallerService;->buildSuccessNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    goto :goto_19

    :cond_16
    const/4 p1, 0x0

    .line 1580
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    :goto_19
    return-void
.end method

.method private synthetic lambda$getDeviceOwnerDeletedPackageMsg$0()Ljava/lang/String;
    .registers 2

    .line 1587
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const v0, 0x10408a1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getDeviceOwnerDeletedPackageMsg()Ljava/lang/String;
    .registers 3

    .line 1585
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1586
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;)V

    const-string p0, "Core.PACKAGE_DELETED_BY_DO"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    .registers 12

    const/4 v0, 0x1

    if-ne v0, p2, :cond_19

    .line 1611
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_19

    .line 1612
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 1613
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x15

    .line 1614
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mNotification:Landroid/app/Notification;

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1618
    :cond_19
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    if-nez p1, :cond_1e

    return-void

    .line 1621
    :cond_1e
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1622
    iget-object p1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    const-string v0, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1624
    invoke-static {p2}, Landroid/content/pm/PackageManager;->deleteStatusToPublicStatus(I)I

    move-result p1

    const-string v0, "android.content.pm.extra.STATUS"

    .line 1623
    invoke-virtual {v3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1626
    invoke-static {p2, p3}, Landroid/content/pm/PackageManager;->deleteStatusToString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "android.content.pm.extra.STATUS_MESSAGE"

    .line 1625
    invoke-virtual {v3, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.content.pm.extra.LEGACY_STATUS"

    .line 1627
    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1629
    :try_start_41
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    const/4 p2, 0x0

    .line 1630
    invoke-virtual {p1, p2}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1631
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1632
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v7

    .line 1631
    invoke-virtual/range {v0 .. v7}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_58
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_41 .. :try_end_58} :catch_58

    :catch_58
    return-void
.end method

.method public onUserActionRequired(Landroid/content/Intent;)V
    .registers 11

    .line 1592
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    if-nez v0, :cond_5

    return-void

    .line 1595
    :cond_5
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1596
    iget-object v0, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mPackageName:Ljava/lang/String;

    const-string v1, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    const-string v1, "android.content.pm.extra.STATUS"

    .line 1597
    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.INTENT"

    .line 1599
    invoke-virtual {v4, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1601
    :try_start_1c
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    const/4 v0, 0x0

    .line 1602
    invoke-virtual {p1, v0}, Landroid/app/BroadcastOptions;->setPendingIntentBackgroundActivityLaunchAllowed(Z)V

    .line 1603
    iget-object v1, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mTarget:Landroid/content/IntentSender;

    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$PackageDeleteObserverAdapter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1604
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v8

    .line 1603
    invoke-virtual/range {v1 .. v8}, Landroid/content/IntentSender;->sendIntent(Landroid/content/Context;ILandroid/content/Intent;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_33
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1c .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
