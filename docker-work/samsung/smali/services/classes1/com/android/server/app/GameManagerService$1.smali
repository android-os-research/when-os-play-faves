.class public Lcom/android/server/app/GameManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/app/GameManagerService;->registerPackageReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameManagerService;)V
    .registers 2

    .line 1562
    iput-object p1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10

    .line 1565
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 1567
    :try_start_4
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->getSendingUserId()I

    move-result v0

    .line 1568
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-eq v0, v1, :cond_f

    return-void

    .line 1571
    :cond_f
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1
    :try_end_13
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_13} :catch_c0

    .line 1573
    :try_start_13
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/app/GameManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x20000

    .line 1574
    invoke-virtual {v1, p1, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1576
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->category:I
    :try_end_21
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_21} :catch_24
    .catch Ljava/lang/NullPointerException; {:try_start_13 .. :try_end_21} :catch_c0

    if-eqz v1, :cond_24

    return-void

    .line 1582
    :catch_24
    :cond_24
    :try_start_24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x1f50b9c2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v3, v4, :cond_44

    const v4, 0x5c1076e2

    if-eq v3, v4, :cond_3a

    goto :goto_4d

    :cond_3a
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    move v2, v5

    goto :goto_4d

    :cond_44
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    move v2, v6

    :cond_4d
    :goto_4d
    if-eqz v2, :cond_b6

    if-eq v2, v6, :cond_52

    goto :goto_c7

    .line 1587
    :cond_52
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/app/GameManagerService;->disableCompatScale(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.REPLACING"

    .line 1595
    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_c7

    .line 1596
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmOverrideConfigLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_66
    .catch Ljava/lang/NullPointerException; {:try_start_24 .. :try_end_66} :catch_c0

    .line 1597
    :try_start_66
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmOverrideConfigs(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1598
    monitor-exit p2
    :try_end_70
    .catchall {:try_start_66 .. :try_end_70} :catchall_b3

    .line 1599
    :try_start_70
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmDeviceConfigLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_77
    .catch Ljava/lang/NullPointerException; {:try_start_70 .. :try_end_77} :catch_c0

    .line 1600
    :try_start_77
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmConfigs(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1601
    monitor-exit p2
    :try_end_81
    .catchall {:try_start_77 .. :try_end_81} :catchall_b0

    .line 1602
    :try_start_81
    iget-object p2, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p2}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmLock(Lcom/android/server/app/GameManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2
    :try_end_88
    .catch Ljava/lang/NullPointerException; {:try_start_81 .. :try_end_88} :catch_c0

    .line 1603
    :try_start_88
    iget-object v1, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {v1}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ab

    .line 1604
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    invoke-static {p0}, Lcom/android/server/app/GameManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/app/GameManagerService;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/app/GameManagerSettings;

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameManagerSettings;->removeGame(Ljava/lang/String;)V

    .line 1606
    :cond_ab
    monitor-exit p2

    goto :goto_c7

    :catchall_ad
    move-exception p0

    monitor-exit p2
    :try_end_af
    .catchall {:try_start_88 .. :try_end_af} :catchall_ad

    :try_start_af
    throw p0
    :try_end_b0
    .catch Ljava/lang/NullPointerException; {:try_start_af .. :try_end_b0} :catch_c0

    :catchall_b0
    move-exception p0

    .line 1601
    :try_start_b1
    monitor-exit p2
    :try_end_b2
    .catchall {:try_start_b1 .. :try_end_b2} :catchall_b0

    :try_start_b2
    throw p0
    :try_end_b3
    .catch Ljava/lang/NullPointerException; {:try_start_b2 .. :try_end_b3} :catch_c0

    :catchall_b3
    move-exception p0

    .line 1598
    :try_start_b4
    monitor-exit p2
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    :try_start_b5
    throw p0

    .line 1584
    :cond_b6
    iget-object p0, p0, Lcom/android/server/app/GameManagerService$1;->this$0:Lcom/android/server/app/GameManagerService;

    new-array p2, v6, [Ljava/lang/String;

    aput-object p1, p2, v5

    invoke-virtual {p0, v0, p2}, Lcom/android/server/app/GameManagerService;->updateConfigsForUser(I[Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/NullPointerException; {:try_start_b5 .. :try_end_bf} :catch_c0

    goto :goto_c7

    :catch_c0
    const-string p0, "GameManagerService"

    const-string p1, "Failed to get package name for new package"

    .line 1614
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c7
    :goto_c7
    return-void
.end method
