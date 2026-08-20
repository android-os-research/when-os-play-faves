.class public final Lcom/android/server/am/BugReportHandlerUtil;
.super Ljava/lang/Object;
.source "BugReportHandlerUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BugReportHandlerUtil$BugreportHandlerResponseBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final INTENT_BUGREPORT_REQUESTED:Ljava/lang/String; = "com.android.internal.intent.action.BUGREPORT_REQUESTED"

.field public static final INTENT_GET_BUGREPORT_HANDLER_RESPONSE:Ljava/lang/String; = "com.android.internal.intent.action.GET_BUGREPORT_HANDLER_RESPONSE"

.field public static final SHELL_APP_PACKAGE:Ljava/lang/String; = "com.android.shell"

.field public static final TAG:Ljava/lang/String; = "ActivityManager"


# direct methods
.method public static bridge synthetic -$$Nest$smlaunchBugReportHandlerApp(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/am/BugReportHandlerUtil;->launchBugReportHandlerApp(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBugReportHandlerAppReceivers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.BUGREPORT_REQUESTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x100000

    .line 200
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getBugReportHandlerAppResponseReceivers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 207
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.intent.action.GET_BUGREPORT_HANDLER_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 p1, 0x100000

    .line 210
    invoke-virtual {p0, v0, p1, p2}, Landroid/content/pm/PackageManager;->queryBroadcastReceiversAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "custom_bugreport_handler_app"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomBugReportHandlerUser(Landroid/content/Context;)I
    .registers 3

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "custom_bugreport_handler_user"

    const/16 v1, -0x2710

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getDefaultBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 215
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1040318

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isBugReportHandlerEnabled(Landroid/content/Context;)Z
    .registers 2

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110046

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public static isBugreportWhitelistedApp(Ljava/lang/String;)Z
    .registers 2

    .line 188
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getBugreportWhitelistedPackages()Landroid/util/ArraySet;

    move-result-object v0

    .line 190
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isShellApp(Ljava/lang/String;)Z
    .registers 2

    const-string v0, "com.android.shell"

    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isValidBugReportHandlerApp(Ljava/lang/String;)Z
    .registers 2

    .line 183
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/android/server/am/BugReportHandlerUtil;->isBugreportWhitelistedApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static launchBugReportHandlerApp(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 8

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Launching bug report handler app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.internal.intent.action.BUGREPORT_REQUESTED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 150
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 151
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 153
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p1

    const/4 v2, 0x1

    .line 154
    invoke-virtual {p1, v2}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 155
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 157
    :try_start_36
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const-string v4, "android.permission.DUMP"

    .line 159
    invoke-virtual {p1}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    .line 157
    invoke-virtual {p0, v0, p2, v4, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_43
    .catch Ljava/lang/RuntimeException; {:try_start_36 .. :try_end_43} :catch_49
    .catchall {:try_start_36 .. :try_end_43} :catchall_47

    .line 163
    :goto_43
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_50

    :catchall_47
    move-exception p0

    goto :goto_51

    :catch_49
    move-exception p0

    :try_start_4a
    const-string p1, "Error while trying to launch bugreport handler app."

    .line 161
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4f
    .catchall {:try_start_4a .. :try_end_4f} :catchall_47

    goto :goto_43

    :goto_50
    return-void

    .line 163
    :goto_51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    throw p0
.end method

.method public static launchBugReportHandlerApp(Landroid/content/Context;)Z
    .registers 19

    move-object/from16 v0, p0

    .line 78
    invoke-static/range {p0 .. p0}, Lcom/android/server/am/BugReportHandlerUtil;->isBugReportHandlerEnabled(Landroid/content/Context;)Z

    move-result v1

    const/4 v12, 0x0

    if-nez v1, :cond_a

    return v12

    .line 82
    :cond_a
    invoke-static/range {p0 .. p0}, Lcom/android/server/am/BugReportHandlerUtil;->getCustomBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Lcom/android/server/am/BugReportHandlerUtil;->isShellApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    return v12

    .line 87
    :cond_15
    invoke-static/range {p0 .. p0}, Lcom/android/server/am/BugReportHandlerUtil;->getCustomBugReportHandlerUser(Landroid/content/Context;)I

    move-result v2

    .line 88
    invoke-static {v1}, Lcom/android/server/am/BugReportHandlerUtil;->isValidBugReportHandlerApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_25

    .line 89
    invoke-static/range {p0 .. p0}, Lcom/android/server/am/BugReportHandlerUtil;->getDefaultBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    :goto_23
    move v2, v12

    goto :goto_37

    .line 91
    :cond_25
    invoke-static {v0, v1, v2}, Lcom/android/server/am/BugReportHandlerUtil;->getBugReportHandlerAppReceivers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 100
    invoke-static/range {p0 .. p0}, Lcom/android/server/am/BugReportHandlerUtil;->getDefaultBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 102
    invoke-static/range {p0 .. p0}, Lcom/android/server/am/BugReportHandlerUtil;->resetCustomBugreportHandlerAppAndUser(Landroid/content/Context;)V

    goto :goto_23

    .line 105
    :cond_37
    :goto_37
    invoke-static {v1}, Lcom/android/server/am/BugReportHandlerUtil;->isShellApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c2

    invoke-static {v1}, Lcom/android/server/am/BugReportHandlerUtil;->isValidBugReportHandlerApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c2

    .line 106
    invoke-static {v0, v1, v2}, Lcom/android/server/am/BugReportHandlerUtil;->getBugReportHandlerAppReceivers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4f

    goto/16 :goto_c2

    .line 110
    :cond_4f
    invoke-static {v0, v1, v2}, Lcom/android/server/am/BugReportHandlerUtil;->getBugReportHandlerAppResponseReceivers(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v13, 0x1

    if-eqz v3, :cond_5e

    .line 114
    invoke-static {v0, v1, v2}, Lcom/android/server/am/BugReportHandlerUtil;->launchBugReportHandlerApp(Landroid/content/Context;Ljava/lang/String;I)V

    return v13

    .line 118
    :cond_5e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting response from bug report handler app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v14, "ActivityManager"

    invoke-static {v14, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.internal.intent.action.GET_BUGREPORT_HANDLER_RESPONSE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    .line 121
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v4, 0x1000000

    .line 122
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v15

    .line 128
    :try_start_8c
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const-string v5, "android.permission.DUMP"

    const/4 v6, -0x1

    const/4 v7, 0x0

    new-instance v8, Lcom/android/server/am/BugReportHandlerUtil$BugreportHandlerResponseBroadcastReceiver;

    invoke-direct {v8, v1, v2}, Lcom/android/server/am/BugReportHandlerUtil$BugreportHandlerResponseBroadcastReceiver;-><init>(Ljava/lang/String;I)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move v9, v10

    move-object v10, v11

    move-object/from16 v11, v17

    .line 127
    invoke-virtual/range {v1 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V
    :try_end_ae
    .catch Ljava/lang/RuntimeException; {:try_start_8c .. :try_end_ae} :catch_b4
    .catchall {:try_start_8c .. :try_end_ae} :catchall_b2

    .line 140
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v13

    :catchall_b2
    move-exception v0

    goto :goto_be

    :catch_b4
    move-exception v0

    :try_start_b5
    const-string v1, "Error while trying to get response from bug report handler app."

    .line 137
    invoke-static {v14, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_ba
    .catchall {:try_start_b5 .. :try_end_ba} :catchall_b2

    .line 140
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v12

    :goto_be
    invoke-static/range {v15 .. v16}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 141
    throw v0

    :cond_c2
    :goto_c2
    return v12
.end method

.method public static resetCustomBugreportHandlerAppAndUser(Landroid/content/Context;)V
    .registers 6

    .line 220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 222
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "custom_bugreport_handler_app"

    .line 224
    invoke-static {p0}, Lcom/android/server/am/BugReportHandlerUtil;->getDefaultBugReportHandlerApp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 222
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 225
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "custom_bugreport_handler_user"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1f

    .line 228
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 229
    throw p0
.end method
