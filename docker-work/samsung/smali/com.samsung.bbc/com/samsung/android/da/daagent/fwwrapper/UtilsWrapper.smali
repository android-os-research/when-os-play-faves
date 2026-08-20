.class public Lcom/samsung/android/da/daagent/fwwrapper/UtilsWrapper;
.super Ljava/lang/Object;
.source "UtilsWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UtilsWrapper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createShortcutInfo(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;Landroid/os/PersistableBundle;IILjava/lang/String;Ljava/lang/String;)Landroid/content/pm/ShortcutInfo;
    .registers 50
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Landroid/graphics/drawable/Icon;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[",
            "Landroid/content/Intent;",
            "Landroid/os/PersistableBundle;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/pm/ShortcutInfo;"
        }
    .end annotation

    move/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v18, p13

    move/from16 v21, p14

    move/from16 v22, p15

    move-object/from16 v23, p16

    move-object/from16 v24, p17

    .line 175
    new-instance v31, Landroid/content/pm/ShortcutInfo;

    move-object/from16 v0, v31

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Landroid/content/pm/ShortcutInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/util/Set;[Landroid/content/Intent;ILandroid/os/PersistableBundle;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Landroid/app/Person;Landroid/content/LocusId;Ljava/lang/String;Ljava/util/Map;)V

    return-object v31
.end method

.method public static createShortcutResultIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;I)Landroid/content/Intent;
    .registers 5

    const-string p0, "shortcut"

    .line 142
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object p0

    .line 144
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    .line 146
    :try_start_f
    invoke-interface {p0, p1, p2, p3, v0}, Landroid/content/pm/IShortcutService;->createShortcutResultIntent(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;ILcom/android/internal/infra/AndroidFuture;)V

    .line 148
    invoke-static {v0}, Lcom/samsung/android/da/daagent/fwwrapper/UtilsWrapper;->getFutureOrThrow(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Intent;
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_18} :catch_19

    return-object p0

    :catch_19
    move-exception p0

    .line 150
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static getDualAppProfileId()I
    .registers 3

    .line 106
    sget-object v0, Lcom/samsung/android/da/daagent/fwwrapper/DaWrapper;->DA_PROFILE_ID_PROPERTY_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 107
    sget v1, Lcom/samsung/android/da/daagent/fwwrapper/UmWrapper;->SEM_USER_NULL:I

    if-eqz v0, :cond_1f

    .line 110
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1f

    .line 111
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_19} :catch_1b

    move v1, v0

    goto :goto_1f

    :catch_1b
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    :cond_1f
    :goto_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DualAppProfileId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UtilsWrapper"

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static getFutureOrThrow(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/infra/AndroidFuture<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 181
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/infra/AndroidFuture;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return-object p0

    :catchall_5
    move-exception p0

    .line 183
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_e

    .line 184
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    .line 186
    :cond_e
    instance-of v0, p0, Ljava/lang/RuntimeException;

    if-nez v0, :cond_1f

    .line 189
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_19

    .line 190
    check-cast p0, Ljava/lang/Error;

    throw p0

    .line 192
    :cond_19
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 187
    :cond_1f
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0
.end method

.method public static getIntent(Landroid/app/PendingIntent;)Landroid/content/Intent;
    .registers 1

    .line 97
    invoke-virtual {p0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 49
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isChinaModel()Z
    .registers 1

    .line 69
    invoke-static {}, Lcom/samsung/android/app/SemDualAppManager;->isChinaModel()Z

    move-result v0

    return v0
.end method

.method public static isSamsungLauncher(Ljava/lang/String;)Z
    .registers 1

    .line 78
    invoke-static {p0}, Lcom/samsung/android/app/SemDualAppManager;->isSamsungLauncher(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static requestPinShortcut(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;I)Z
    .registers 11

    const-string p0, "shortcut"

    .line 159
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 158
    invoke-static {p0}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object v0

    .line 162
    :try_start_a
    new-instance p0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {p0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p0

    .line 163
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IShortcutService;->requestPinShortcut(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;Landroid/content/IntentSender;ILcom/android/internal/infra/AndroidFuture;)V

    .line 165
    invoke-static {p0}, Lcom/samsung/android/da/daagent/fwwrapper/UtilsWrapper;->getFutureOrThrow(Lcom/android/internal/infra/AndroidFuture;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_21} :catch_22

    return p0

    :catch_22
    move-exception p0

    .line 167
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public static setClipDataItemAt(Landroid/content/ClipData;ILandroid/content/ClipData$Item;)V
    .registers 3

    .line 60
    invoke-virtual {p0, p1, p2}, Landroid/content/ClipData;->setItemAt(ILandroid/content/ClipData$Item;)V

    return-void
.end method

.method public static setSetupComplete(Landroid/content/Context;I)Z
    .registers 4

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "user_setup_complete"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public static setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .line 39
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
