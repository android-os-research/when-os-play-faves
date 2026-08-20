.class public Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 1831
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 32

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 1834
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_b

    return-void

    :cond_b
    const-string v14, "android.intent.action.PACKAGE_ADDED"

    .line 1847
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const-string v5, "android.intent.action.PACKAGES_UNSUSPENDED"

    const-string v6, "android.intent.action.PACKAGES_SUSPENDED"

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    const-string v13, "android.intent.action.PACKAGE_CHANGED"

    const/4 v12, 0x0

    if-nez v0, :cond_5c

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    .line 1848
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    const-string v8, "android.intent.action.PACKAGE_RESTARTED"

    .line 1849
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5a

    .line 1850
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_57

    const-string v9, "android.intent.action.QUERY_PACKAGE_RESTART"

    .line 1851
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_54

    .line 1852
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_54

    .line 1853
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_54

    .line 1854
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_54

    .line 1855
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2a4

    :cond_54
    move/from16 v16, v9

    goto :goto_60

    :cond_57
    move/from16 v16, v12

    goto :goto_60

    :cond_5a
    move v8, v12

    goto :goto_5e

    :cond_5c
    move v0, v12

    move v8, v0

    :goto_5e
    move/from16 v16, v8

    :goto_60
    const-string v9, "android.intent.extra.user_handle"

    const/4 v11, -0x1

    .line 1856
    invoke-virtual {v2, v9, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v9, 0x1

    if-eqz v0, :cond_76

    const-string v0, "android.intent.extra.REPLACING"

    .line 1861
    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_76

    move-object/from16 p1, v14

    move v14, v9

    goto :goto_79

    :cond_76
    move-object/from16 p1, v14

    move v14, v12

    .line 1862
    :goto_79
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    move-object/from16 v17, v13

    const-string v13, "NotificationService"

    if-eqz v0, :cond_9d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "action="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " removing="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :cond_9d
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v7, "android.intent.extra.changed_uid_list"

    const-string v15, "android.intent.extra.changed_package_list"

    if-eqz v0, :cond_b6

    .line 1864
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1865
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    move-object v15, v0

    move-object v8, v4

    :goto_b1
    move v0, v9

    :goto_b2
    move v5, v12

    move v6, v5

    goto/16 :goto_15e

    .line 1866
    :cond_b6
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_cb

    .line 1867
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1868
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    move-object v15, v0

    move-object v8, v4

    move v5, v9

    move v0, v12

    move v6, v0

    goto/16 :goto_15e

    .line 1871
    :cond_cb
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e0

    .line 1872
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1873
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    move-object v15, v0

    move-object v8, v4

    move v6, v9

    move v0, v12

    move v5, v0

    goto/16 :goto_15e

    .line 1876
    :cond_e0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_109

    const-string v0, "android.intent.extra.distraction_restrictions"

    .line 1878
    invoke-virtual {v2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_fb

    .line 1882
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1883
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    move v5, v9

    move v6, v12

    goto :goto_105

    .line 1887
    :cond_fb
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1888
    invoke-virtual {v2, v7}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v4

    move v6, v9

    move v5, v12

    :goto_105
    move-object v15, v0

    move-object v8, v4

    move v0, v12

    goto :goto_15e

    :cond_109
    const-string v4, "android.intent.extra.UID"

    if-eqz v16, :cond_11e

    const-string v0, "android.intent.extra.PACKAGES"

    .line 1894
    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-array v5, v9, [I

    .line 1895
    invoke-virtual {v2, v4, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    aput v4, v5, v12

    move-object v15, v0

    move-object v8, v5

    goto :goto_b1

    .line 1897
    :cond_11e
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_125

    return-void

    .line 1901
    :cond_125
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_12c

    return-void

    :cond_12c
    if-eqz v8, :cond_14d

    .line 1908
    :try_start_12e
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    if-eq v10, v11, :cond_138

    move v6, v10

    goto :goto_139

    :cond_138
    move v6, v12

    :goto_139
    invoke-interface {v0, v5, v6}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_13d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12e .. :try_end_13d} :catch_143
    .catch Landroid/os/RemoteException; {:try_start_12e .. :try_end_13d} :catch_14d

    if-eq v0, v9, :cond_141

    if-nez v0, :cond_14d

    :cond_141
    move v0, v12

    goto :goto_14e

    :catch_143
    move-exception v0

    .line 1919
    sget-boolean v6, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v6, :cond_14d

    const-string v6, "Exception trying to look up app enabled setting"

    .line 1920
    invoke-static {v13, v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_14d
    :cond_14d
    move v0, v9

    :goto_14e
    new-array v6, v9, [Ljava/lang/String;

    aput-object v5, v6, v12

    new-array v5, v9, [I

    .line 1927
    invoke-virtual {v2, v4, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    aput v4, v5, v12

    move-object v8, v5

    move-object v15, v6

    goto/16 :goto_b2

    :goto_15e
    if-eqz v15, :cond_1ef

    .line 1929
    array-length v4, v15

    if-lez v4, :cond_1ef

    if-eqz v0, :cond_1c5

    .line 1931
    array-length v0, v15

    move v7, v12

    :goto_167
    if-ge v7, v0, :cond_1b7

    aget-object v19, v15, v7

    .line 1932
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_UID()I

    move-result v5

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_PID()I

    move-result v6

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    xor-int/lit8 v23, v16, 0x1

    const/16 v24, 0x0

    move/from16 v25, v7

    move-object/from16 v7, v19

    move-object/from16 v26, v8

    move-object/from16 v8, v20

    move/from16 v9, v21

    move/from16 v19, v10

    move/from16 v10, v22

    move/from16 v11, v23

    move/from16 v20, v12

    move/from16 v12, v19

    move-object/from16 v28, v13

    move-object/from16 v27, v17

    const/16 v17, 0x5

    move/from16 v13, v17

    move-object/from16 v2, p1

    move/from16 v18, v14

    move-object/from16 v14, v24

    invoke-virtual/range {v4 .. v14}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    add-int/lit8 v7, v25, 0x1

    move/from16 v14, v18

    move/from16 v10, v19

    move/from16 v12, v20

    move-object/from16 v8, v26

    move-object/from16 v17, v27

    move-object/from16 v13, v28

    const/4 v9, 0x1

    const/4 v11, -0x1

    move-object/from16 v2, p2

    goto :goto_167

    :cond_1b7
    move-object/from16 v2, p1

    move/from16 v19, v10

    move/from16 v20, v12

    move-object/from16 v28, v13

    move/from16 v18, v14

    move-object/from16 v27, v17

    move-object v4, v8

    goto :goto_1fc

    :cond_1c5
    move-object/from16 v2, p1

    move-object/from16 v26, v8

    move/from16 v19, v10

    move/from16 v20, v12

    move-object/from16 v28, v13

    move/from16 v18, v14

    move-object/from16 v27, v17

    move-object/from16 v4, v26

    if-eqz v5, :cond_1e2

    if-eqz v4, :cond_1e2

    .line 1935
    array-length v0, v4

    if-lez v0, :cond_1e2

    .line 1936
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, v15, v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V

    goto :goto_1fc

    :cond_1e2
    if-eqz v6, :cond_1fc

    if-eqz v4, :cond_1fc

    .line 1937
    array-length v0, v4

    if-lez v0, :cond_1fc

    .line 1938
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, v15, v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$munhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V

    goto :goto_1fc

    :cond_1ef
    move-object/from16 v2, p1

    move-object v4, v8

    move/from16 v19, v10

    move/from16 v20, v12

    move-object/from16 v28, v13

    move/from16 v18, v14

    move-object/from16 v27, v17

    .line 1943
    :cond_1fc
    :goto_1fc
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20f

    move-object/from16 v2, v27

    .line 1944
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20b

    goto :goto_20f

    :cond_20b
    move/from16 v2, v19

    goto/16 :goto_299

    :cond_20f
    :goto_20f
    const/4 v0, 0x0

    .line 1946
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_21a

    .line 1948
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    :cond_21a
    move/from16 v2, v19

    const/4 v3, -0x1

    if-eq v2, v3, :cond_221

    move v12, v2

    goto :goto_223

    :cond_221
    move/from16 v12, v20

    :goto_223
    if-eqz v0, :cond_299

    .line 1953
    :try_start_225
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v5, 0x80

    invoke-interface {v3, v0, v5, v6, v12}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_299

    .line 1955
    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_299

    const-string/jumbo v5, "user"

    const-string v6, "com.samsung.android.notification.listener.autobind"

    const-string v7, "default"

    .line 1956
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_299

    .line 1957
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notification listener autobind, pkg = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v5, v28

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1958
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, v0, v12}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckNotificationAccessSetting(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_299

    .line 1959
    iget-object v3, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    const/high16 v5, 0xc0000

    .line 1960
    invoke-virtual {v3, v0, v5, v12}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v0

    .line 1963
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_276
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_299

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;
    :try_end_282
    .catch Landroid/os/RemoteException; {:try_start_225 .. :try_end_282} :catch_295

    .line 1965
    :try_start_282
    iget-object v5, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v5
    :try_end_288
    .catch Landroid/os/RemoteException; {:try_start_282 .. :try_end_288} :catch_28f

    const/4 v6, 0x1

    :try_start_289
    invoke-interface {v5, v0, v12, v6, v6}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    :try_end_28c
    .catch Landroid/os/RemoteException; {:try_start_289 .. :try_end_28c} :catch_28d

    goto :goto_276

    :catch_28d
    move-exception v0

    goto :goto_291

    :catch_28f
    move-exception v0

    const/4 v6, 0x1

    .line 1967
    :goto_291
    :try_start_291
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_294
    .catch Landroid/os/RemoteException; {:try_start_291 .. :try_end_294} :catch_295

    goto :goto_276

    :catch_295
    move-exception v0

    .line 1974
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1980
    :cond_299
    :goto_299
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v0

    move/from16 v9, v18

    invoke-virtual {v0, v9, v2, v15, v4}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    :cond_2a4
    return-void
.end method
