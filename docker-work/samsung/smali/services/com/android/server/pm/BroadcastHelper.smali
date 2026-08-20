.class public final Lcom/android/server/pm/BroadcastHelper;
.super Ljava/lang/Object;
.source "BroadcastHelper.java"


# static fields
.field public static final DEBUG_BROADCASTS:Z = false

.field public static final INSTANT_APP_BROADCAST_PERMISSION:[Ljava/lang/String;

.field public static final TAG_CSCFEATURE_COMMON_CONFIGIMPLICITBROADCASTS:Ljava/lang/String; = "CscFeature_COMMON_ConfigImplicitBroadcasts"

.field public static final vzwTag:Ljava/lang/String;


# instance fields
.field public final mAmInternal:Landroid/app/ActivityManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

.field public final mUmInternal:Lcom/android/server/pm/UserManagerInternal;


# direct methods
.method public static synthetic $r8$lambda$19b-IeogupQNP2Th8BJz1BXsn5A(Landroid/app/IActivityManager;Landroid/content/Intent;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/BroadcastHelper;->lambda$doSendBroadcast$0(Landroid/app/IActivityManager;Landroid/content/Intent;I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string v0, "android.permission.ACCESS_INSTANT_APPS"

    .line 100
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/BroadcastHelper;->INSTANT_APP_BROADCAST_PERMISSION:[Ljava/lang/String;

    .line 111
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_COMMON_ConfigImplicitBroadcasts"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/BroadcastHelper;->vzwTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageManagerServiceInjector;)V
    .registers 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    .line 116
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 117
    invoke-virtual {p1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    .line 119
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz v0, :cond_1f

    .line 120
    invoke-static {p1}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/BroadcastHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    :cond_1f
    return-void
.end method

.method public static synthetic lambda$doSendBroadcast$0(Landroid/app/IActivityManager;Landroid/content/Intent;I)V
    .registers 21

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v17, p2

    .line 321
    :try_start_15
    invoke-interface/range {v1 .. v17}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception v0

    move-object v1, v0

    .line 325
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public static synthetic lambda$sendSessionCommitBroadcast$1()Ljava/lang/Boolean;
    .registers 1

    .line 481
    const-class v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;

    if-eqz v0, :cond_12

    .line 483
    invoke-virtual {v0}, Lcom/samsung/android/desktopmode/DesktopModeManagerInternal;->isDesktopModeEnablingOrEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public static sendDeviceCustomizationReadyBroadcast()V
    .registers 18

    .line 444
    new-instance v4, Landroid/content/Intent;

    const-string v0, "android.intent.action.DEVICE_CUSTOMIZATION_READY"

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x1000000

    .line 445
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 446
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v0, "android.permission.RECEIVE_DEVICE_CUSTOMIZATION_READY"

    .line 447
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    .line 451
    :try_start_26
    invoke-interface/range {v1 .. v17}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    return-void

    :catch_2a
    move-exception v0

    move-object v1, v0

    .line 455
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Landroid/os/Bundle;)V
    .registers 38
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/IIntentReceiver;",
            "[IZ",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p7

    move-object/from16 v6, p9

    .line 191
    array-length v7, v5

    const/4 v8, 0x0

    move v9, v8

    :goto_11
    if-ge v9, v7, :cond_299

    aget v15, v5, v9

    .line 192
    new-instance v14, Landroid/content/Intent;

    const/4 v13, 0x0

    if-eqz v2, :cond_22

    const-string/jumbo v10, "package"

    .line 193
    invoke-static {v10, v2, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    goto :goto_23

    :cond_22
    move-object v10, v13

    :goto_23
    invoke-direct {v14, v1, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    if-eqz p8, :cond_2d

    .line 195
    sget-object v10, Lcom/android/server/pm/BroadcastHelper;->INSTANT_APP_BROADCAST_PERMISSION:[Ljava/lang/String;

    move-object/from16 v16, v10

    goto :goto_2f

    :cond_2d
    move-object/from16 v16, v13

    :goto_2f
    if-eqz v3, :cond_34

    .line 197
    invoke-virtual {v14, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_34
    if-eqz v4, :cond_39

    .line 200
    invoke-virtual {v14, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_39
    const-string v10, "android.intent.extra.UID"

    const/4 v12, -0x1

    .line 203
    invoke-virtual {v14, v10, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-ltz v11, :cond_53

    .line 204
    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v12

    if-eq v12, v15, :cond_53

    .line 205
    invoke-static {v11}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v11

    invoke-static {v15, v11}, Landroid/os/UserHandle;->getUid(II)I

    move-result v11

    .line 206
    invoke-virtual {v14, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_53
    if-eqz v6, :cond_68

    const-string v10, "android"

    .line 208
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_68

    .line 210
    invoke-virtual {v6, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [I

    const-string v11, "android.intent.extra.VISIBILITY_ALLOW_LIST"

    .line 209
    invoke-virtual {v14, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    :cond_68
    const-string v10, "android.intent.extra.user_handle"

    .line 212
    invoke-virtual {v14, v10, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v10, 0x4000000

    or-int v10, p4, v10

    .line 213
    invoke-virtual {v14, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 221
    iget-object v10, v0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v12, 0x1

    if-eqz p6, :cond_7c

    move/from16 v18, v12

    goto :goto_7e

    :cond_7c
    move/from16 v18, v8

    :goto_7e
    if-nez v6, :cond_83

    move-object/from16 v19, v13

    goto :goto_8b

    .line 224
    :cond_83
    invoke-virtual {v6, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    move-object/from16 v19, v11

    :goto_8b
    move-object v11, v14

    move v5, v12

    const/16 v20, -0x1

    move-object/from16 v12, p6

    move-object/from16 v21, v13

    move-object/from16 v13, v16

    move-object/from16 v22, v14

    move/from16 v14, v18

    move/from16 v18, v15

    move-object/from16 v16, v19

    move-object/from16 v17, p10

    .line 221
    invoke-virtual/range {v10 .. v17}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILandroid/os/Bundle;)I

    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    .line 228
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b6

    const-string v10, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    .line 229
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b3

    goto :goto_b6

    :cond_b3
    move/from16 v15, v18

    goto :goto_f1

    :cond_b6
    :goto_b6
    const-string v10, "android.intent.extra.changed_package_list"

    .line 230
    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 231
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " : user "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v18

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    invoke-static {v12, v11}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    if-eqz v10, :cond_f1

    .line 233
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "pkgs: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Lcom/android/server/pm/PackageManagerServiceUtils;->logCriticalInfo(ILjava/lang/String;)V

    :cond_f1
    :goto_f1
    const-string v14, "android.intent.action.PACKAGE_ADDED"

    const-string v13, "android.intent.action.PACKAGE_REMOVED"

    if-nez v4, :cond_10f

    .line 240
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_104

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_104

    goto :goto_10f

    .line 243
    :cond_104
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/Intent;

    .line 244
    iget-object v11, v0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {v11, v15, v10}, Lcom/android/server/DualAppManagerService;->sendBroadcastCustomIntent(Landroid/content/Context;ILandroid/content/Intent;)V

    :cond_10f
    :goto_10f
    if-nez v4, :cond_159

    .line 249
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/BroadcastHelper;->getDSPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_159

    .line 252
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_129

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_126

    move-object/from16 v11, v21

    goto :goto_12b

    :cond_126
    const-string v11, "com.samsung.android.sm.devicesecurity.PACKAGE_ADDED"

    goto :goto_12b

    :cond_129
    const-string v11, "com.samsung.android.sm.devicesecurity.PACKAGE_REMOVED"

    :goto_12b
    if-eqz v11, :cond_159

    .line 261
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Intent;

    .line 262
    invoke-virtual {v12, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    invoke-virtual {v12, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    iget-object v10, v0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    move-object v11, v12

    move-object/from16 v12, v16

    move-object v5, v13

    move-object/from16 v13, v17

    move-object/from16 v25, v14

    move/from16 v14, v18

    move/from16 v18, v15

    move-object/from16 v16, v19

    move-object/from16 v17, v23

    invoke-virtual/range {v10 .. v17}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILandroid/os/Bundle;)I

    goto :goto_15e

    :cond_159
    move-object v5, v13

    move-object/from16 v25, v14

    move/from16 v18, v15

    .line 270
    :goto_15e
    sget-boolean v10, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz v10, :cond_185

    .line 271
    iget-object v10, v0, Lcom/android/server/pm/BroadcastHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    invoke-virtual {v10}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->isGalaxyStoreFeatureEnabled()Z

    move-result v10

    if-eqz v10, :cond_185

    .line 272
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_185

    move/from16 v15, v18

    if-nez v15, :cond_187

    const-string v10, "com.sec.android.app.samsungapps"

    .line 273
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_187

    if-eqz v2, :cond_187

    .line 274
    iget-object v10, v0, Lcom/android/server/pm/BroadcastHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    const/4 v14, 0x1

    invoke-virtual {v10, v2, v14, v8, v8}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    goto :goto_188

    :cond_185
    move/from16 v15, v18

    :cond_187
    const/4 v14, 0x1

    :goto_188
    const/16 v18, 0x2

    const-string v13, "android.intent.action.PACKAGE_REPLACED"

    if-nez v4, :cond_21d

    .line 279
    sget-object v10, Lcom/android/server/pm/BroadcastHelper;->vzwTag:Ljava/lang/String;

    const-string v11, "VZW"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a0

    const-string v11, "VZW_OPEN"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21d

    .line 281
    :cond_1a0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/BroadcastHelper;->getMVSPackageName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_21d

    .line 283
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_29a

    move/from16 v11, v20

    move-object/from16 v12, v25

    goto :goto_1d5

    :sswitch_1b2
    move-object/from16 v12, v25

    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1bb

    goto :goto_1d1

    :cond_1bb
    move/from16 v11, v18

    goto :goto_1d5

    :sswitch_1be
    move-object/from16 v12, v25

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1c7

    goto :goto_1d1

    :cond_1c7
    move v11, v14

    goto :goto_1d5

    :sswitch_1c9
    move-object/from16 v12, v25

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1d4

    :goto_1d1
    move/from16 v11, v20

    goto :goto_1d5

    :cond_1d4
    move v11, v8

    :goto_1d5
    packed-switch v11, :pswitch_data_2a8

    move-object/from16 v11, v21

    goto :goto_1e3

    :pswitch_1db
    const-string v11, "com.verizon.provider.PACKAGE_ADDED"

    goto :goto_1e3

    :pswitch_1de
    const-string v11, "com.verizon.provider.PACKAGE_REMOVED"

    goto :goto_1e3

    :pswitch_1e1
    const-string v11, "com.verizon.provider.PACKAGE_REPLACED"

    :goto_1e3
    if-eqz v11, :cond_215

    .line 296
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroid/content/Intent;

    .line 297
    invoke-virtual {v8, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    invoke-virtual {v8, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    iget-object v10, v0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v11, v8

    move-object v8, v12

    move-object/from16 v12, v16

    move-object/from16 v26, v13

    move-object/from16 v13, v17

    move/from16 v25, v14

    move/from16 v14, v21

    move/from16 v21, v15

    move-object/from16 v16, v23

    move-object/from16 v17, v24

    invoke-virtual/range {v10 .. v17}, Landroid/app/ActivityManagerInternal;->broadcastIntent(Landroid/content/Intent;Landroid/content/IIntentReceiver;[Ljava/lang/String;ZI[ILandroid/os/Bundle;)I

    goto :goto_225

    :cond_215
    move-object v8, v12

    move-object/from16 v26, v13

    move/from16 v25, v14

    move/from16 v21, v15

    goto :goto_225

    :cond_21d
    move-object/from16 v26, v13

    move/from16 v21, v15

    move-object/from16 v8, v25

    move/from16 v25, v14

    .line 306
    :goto_225
    sget-boolean v10, Lcom/samsung/android/rune/PMRune;->PM_SPROTECT_HIDE:Z

    if-eqz v10, :cond_292

    move/from16 v10, v21

    if-nez v10, :cond_292

    if-nez v4, :cond_292

    .line 307
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v11

    .line 308
    invoke-static {}, Lcom/android/server/pm/SProtect;->getSProtectPackage()Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v12

    .line 309
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v13

    sparse-switch v13, :sswitch_data_2b2

    goto :goto_25e

    :sswitch_23f
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_246

    goto :goto_25e

    :cond_246
    move/from16 v20, v18

    goto :goto_25e

    :sswitch_249
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_250

    goto :goto_25e

    :cond_250
    move/from16 v20, v25

    goto :goto_25e

    :sswitch_253
    move-object/from16 v5, v26

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25c

    goto :goto_25e

    :cond_25c
    const/16 v20, 0x0

    :goto_25e
    packed-switch v20, :pswitch_data_2c0

    goto :goto_292

    :pswitch_262
    const-string v5, "com.samsung.android.app.sprotect"

    if-nez v12, :cond_271

    if-eqz v2, :cond_271

    .line 313
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_271

    .line 314
    invoke-static {}, Lcom/android/server/pm/SProtect;->resetSProtectList()V

    :cond_271
    if-nez v12, :cond_27b

    if-eqz v2, :cond_292

    .line 316
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_292

    .line 317
    :cond_27b
    invoke-virtual/range {v22 .. v22}, Landroid/content/Intent;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Intent;

    const-string v8, "com.samsung.android.applock"

    .line 318
    invoke-virtual {v5, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 319
    invoke-static {}, Lcom/android/server/pm/SProtect;->getPackageManagerHandler()Landroid/os/Handler;

    move-result-object v8

    new-instance v12, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;

    invoke-direct {v12, v11, v5, v10}, Lcom/android/server/pm/BroadcastHelper$$ExternalSyntheticLambda0;-><init>(Landroid/app/IActivityManager;Landroid/content/Intent;I)V

    invoke-virtual {v8, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_292
    :goto_292
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, p7

    const/4 v8, 0x0

    goto/16 :goto_11

    :cond_299
    return-void

    :sswitch_data_29a
    .sparse-switch
        -0x304ed112 -> :sswitch_1c9
        0x1f50b9c2 -> :sswitch_1be
        0x5c1076e2 -> :sswitch_1b2
    .end sparse-switch

    :pswitch_data_2a8
    .packed-switch 0x0
        :pswitch_1e1
        :pswitch_1de
        :pswitch_1db
    .end packed-switch

    :sswitch_data_2b2
    .sparse-switch
        -0x304ed112 -> :sswitch_253
        0x1f50b9c2 -> :sswitch_249
        0x5c1076e2 -> :sswitch_23f
    .end sparse-switch

    :pswitch_data_2c0
    .packed-switch 0x0
        :pswitch_262
        :pswitch_262
        :pswitch_262
    .end packed-switch
.end method

.method public final getDSPackageName()Ljava/lang/String;
    .registers 4

    .line 126
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SECURITY_CONFIG_DEVICEMONITOR_PACKAGE_NAME"

    const-string v2, "com.samsung.android.sm.devicesecurity"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :try_start_c
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 130
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 131
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_20} :catch_25

    and-int/lit16 p0, p0, 0x81

    if-eqz p0, :cond_25

    return-object v0

    :catch_25
    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMVSPackageName()Ljava/lang/String;
    .registers 4

    .line 142
    sget-object v0, Lcom/android/server/pm/BroadcastHelper;->vzwTag:Ljava/lang/String;

    const-string v1, "VZW"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "com.verizon.mips.services"

    goto :goto_f

    :cond_d
    const-string v0, "com.verizon.loginengine.unbranded"

    .line 144
    :goto_f
    :try_start_f
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 145
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_23} :catch_28

    and-int/lit16 p0, p0, 0x81

    if-eqz p0, :cond_28

    return-object v0

    :catch_28
    :cond_28
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;
    .registers 10

    .line 407
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mAmInternal:Landroid/app/ActivityManagerInternal;

    if-eqz p0, :cond_9

    .line 408
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getBootTimeTempAllowListDuration()J

    move-result-wide v0

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x2710

    :goto_b
    move-wide v3, v0

    .line 410
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p0

    const/4 v5, 0x0

    const-string v7, ""

    move-object v2, p0

    move v6, p1

    .line 411
    invoke-virtual/range {v2 .. v7}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    return-object p0
.end method

.method public sendBootCompletedBroadcastToSystemApp(Ljava/lang/String;ZI)V
    .registers 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v15, p3

    .line 371
    iget-object v2, v0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {v2, v15}, Lcom/android/server/pm/UserManagerInternal;->isUserRunning(I)Z

    move-result v2

    if-nez v2, :cond_f

    return-void

    .line 374
    :cond_f
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v19

    .line 377
    :try_start_13
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const/16 v14, 0x20

    if-eqz p2, :cond_25

    .line 380
    invoke-virtual {v5, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_25
    const-string v2, "android.permission.RECEIVE_BOOT_COMPLETED"

    .line 382
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v20

    const/16 v2, 0xca

    .line 383
    invoke-virtual {v0, v2}, Lcom/android/server/pm/BroadcastHelper;->getTemporaryAppAllowlistBroadcastOptions(I)Landroid/app/BroadcastOptions;

    move-result-object v21

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v18, -0x1

    .line 387
    invoke-virtual/range {v21 .. v21}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v22

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v2, v19

    move-object/from16 v11, v20

    move/from16 v14, v18

    move-object/from16 v15, v22

    move/from16 v18, p3

    .line 385
    invoke-interface/range {v2 .. v18}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I

    .line 390
    iget-object v0, v0, Lcom/android/server/pm/BroadcastHelper;->mUmInternal:Lcom/android/server/pm/UserManagerInternal;

    move/from16 v13, p3

    invoke-virtual {v0, v13}, Lcom/android/server/pm/UserManagerInternal;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 391
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz p2, :cond_6d

    const/16 v0, 0x20

    .line 393
    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :cond_6d
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    .line 397
    invoke-virtual/range {v21 .. v21}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v16

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, v19

    move-object/from16 v9, v20

    move-object/from16 v13, v16

    move/from16 v16, p3

    .line 395
    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_88} :catch_89

    :cond_88
    return-void

    :catch_89
    move-exception v0

    .line 400
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public sendFirstLaunchBroadcast(Ljava/lang/String;Ljava/lang/String;[I[I)V
    .registers 21

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 522
    sget-boolean v0, Lcom/samsung/android/rune/PMRune;->PM_BADGE_ON_MONETIZED_APP_SUPPORTED:Z

    if-eqz v0, :cond_54

    const-string v0, "MONETIZED_APP_OPENED"

    .line 523
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v15, 0x1

    if-eqz v0, :cond_20

    .line 524
    iget-object v0, v11, Lcom/android/server/pm/BroadcastHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    invoke-virtual {v0, v12, v15, v15, v15}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    .line 525
    iget-object v0, v11, Lcom/android/server/pm/BroadcastHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    invoke-virtual {v0, v12, v14}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->sendChangePackageIconInfo(Ljava/lang/String;[I)V

    goto :goto_68

    :cond_20
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 527
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    .line 530
    iget-object v0, v11, Lcom/android/server/pm/BroadcastHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    invoke-virtual {v0}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->isGalaxyStoreFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_68

    const-string v0, "com.sec.android.app.samsungapps"

    .line 531
    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    const/4 v0, 0x0

    aget v1, v14, v0

    if-nez v1, :cond_68

    .line 532
    iget-object v1, v11, Lcom/android/server/pm/BroadcastHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    invoke-virtual {v1, v12, v15, v0, v0}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->updateSettingsForMonetization(Ljava/lang/String;ZZZ)V

    .line 533
    iget-object v0, v11, Lcom/android/server/pm/BroadcastHelper;->mMonetizationUtils:Lcom/samsung/android/server/pm/monetization/MonetizationUtils;

    invoke-virtual {v0, v12, v14}, Lcom/samsung/android/server/pm/monetization/MonetizationUtils;->sendChangePackageIconInfo(Ljava/lang/String;[I)V

    goto :goto_68

    :cond_54
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v1, "android.intent.action.PACKAGE_FIRST_LAUNCH"

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    .line 537
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    :cond_68
    :goto_68
    return-void
.end method

.method public sendPackageAddedForNewUsers(Ljava/lang/String;I[I[IILandroid/util/SparseArray;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[I[II",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    .line 508
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 511
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    aget v0, p4, v1

    goto :goto_12

    :cond_10
    aget v0, p3, v1

    :goto_12
    move v1, p2

    .line 510
    invoke-static {v0, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    const-string v1, "android.intent.extra.UID"

    .line 512
    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "android.content.pm.extra.DATA_LOADER_TYPE"

    move/from16 v1, p5

    .line 513
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v10, 0x0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    move-object v0, p0

    move-object v2, p1

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p6

    .line 515
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/lang/String;",
            "Landroid/content/IIntentReceiver;",
            "[I[I",
            "Landroid/util/SparseArray<",
            "[I>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 160
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-nez p7, :cond_f

    .line 164
    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object v0

    move-object v8, v0

    goto :goto_11

    :cond_f
    move-object/from16 v8, p7

    .line 168
    :goto_11
    invoke-static/range {p8 .. p8}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v9, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    .line 169
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Landroid/os/Bundle;)V

    goto :goto_47

    :cond_2e
    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move/from16 v14, p4

    move-object/from16 v15, p5

    move-object/from16 v16, p6

    move-object/from16 v17, p8

    move-object/from16 v20, p10

    .line 173
    invoke-virtual/range {v10 .. v20}, Lcom/android/server/pm/BroadcastHelper;->doSendBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[IZLandroid/util/SparseArray;Landroid/os/Bundle;)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_47} :catch_47

    :catch_47
    :goto_47
    return-void
.end method

.method public sendPackageChangedBroadcast(Ljava/lang/String;ZLjava/util/ArrayList;ILjava/lang/String;[I[ILandroid/util/SparseArray;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "[I[I",
            "Landroid/util/SparseArray<",
            "[I>;)V"
        }
    .end annotation

    move-object v0, p3

    move-object/from16 v1, p5

    .line 424
    new-instance v3, Landroid/os/Bundle;

    const/4 v2, 0x4

    invoke-direct {v3, v2}, Landroid/os/Bundle;-><init>(I)V

    const/4 v2, 0x0

    .line 425
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "android.intent.extra.changed_component_name"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 427
    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string v5, "android.intent.extra.changed_component_name_list"

    .line 428
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v4, "android.intent.extra.DONT_KILL_APP"

    move v5, p2

    .line 429
    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "android.intent.extra.UID"

    move v5, p4

    .line 430
    invoke-virtual {v3, v4, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v1, :cond_36

    const-string v4, "android.intent.extra.REASON"

    .line 432
    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    move-object v4, p1

    .line 437
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    const/high16 v0, 0x40000000    # 2.0f

    move v5, v0

    goto :goto_42

    :cond_41
    move v5, v2

    :goto_42
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    move-object v0, p0

    move-object v2, p1

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 439
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendPreferredActivityChangedBroadcast(I)V
    .registers 19

    .line 489
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 494
    :cond_7
    new-instance v3, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.user_handle"

    move/from16 v15, p1

    .line 495
    invoke-virtual {v3, v1, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 496
    invoke-virtual {v3, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    move/from16 v16, p1

    .line 498
    :try_start_2d
    invoke-interface/range {v0 .. v16}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_30

    :catch_30
    return-void
.end method

.method public sendResourcesChangedBroadcast(ZZLjava/util/ArrayList;[ILandroid/content/IIntentReceiver;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[I",
            "Landroid/content/IIntentReceiver;",
            ")V"
        }
    .end annotation

    .line 339
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    move-object v3, p3

    check-cast v3, [Ljava/lang/String;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p4

    move-object v5, p5

    .line 338
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/BroadcastHelper;->sendResourcesChangedBroadcast(ZZ[Ljava/lang/String;[ILandroid/content/IIntentReceiver;)V

    return-void
.end method

.method public sendResourcesChangedBroadcast(ZZ[Ljava/lang/String;[ILandroid/content/IIntentReceiver;)V
    .registers 21

    move/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 344
    array-length v3, v1

    if-lez v3, :cond_36

    .line 347
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v3, "android.intent.extra.changed_package_list"

    .line 348
    invoke-virtual {v7, v3, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    if-eqz v2, :cond_1a

    const-string v1, "android.intent.extra.changed_uid_list"

    .line 350
    invoke-virtual {v7, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    :cond_1a
    if-eqz v0, :cond_21

    const-string v1, "android.intent.extra.REPLACING"

    .line 353
    invoke-virtual {v7, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_21
    if-eqz p1, :cond_26

    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    goto :goto_28

    :cond_26
    const-string v0, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    :goto_28
    move-object v5, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v4, p0

    move-object/from16 v10, p5

    .line 358
    invoke-virtual/range {v4 .. v14}, Lcom/android/server/pm/BroadcastHelper;->sendPackageBroadcast(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/content/IIntentReceiver;[I[ILandroid/util/SparseArray;Landroid/os/Bundle;)V

    :cond_36
    return-void
.end method

.method public sendSessionCommitBroadcast(Landroid/content/pm/PackageInstaller$SessionInfo;IILandroid/content/ComponentName;Ljava/lang/String;)V
    .registers 11

    const-string v0, "android.intent.extra.USER"

    const-string v1, "android.content.pm.extra.SESSION"

    const-string v2, "android.content.pm.action.SESSION_COMMITTED"

    if-eqz p4, :cond_2a

    .line 463
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    .line 465
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v3

    .line 466
    invoke-virtual {p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v3, p4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p4

    .line 467
    iget-object v3, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v3, p4, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2a
    if-eqz p5, :cond_4a

    .line 471
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p4, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 473
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 474
    invoke-virtual {p1, p5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 475
    iget-object p0, p0, Lcom/android/server/pm/BroadcastHelper;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_4a
    return-void
.end method
