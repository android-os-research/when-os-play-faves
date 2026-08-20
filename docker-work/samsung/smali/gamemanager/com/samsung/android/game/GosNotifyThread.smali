.class public Lcom/samsung/android/game/GosNotifyThread;
.super Landroid/os/HandlerThread;
.source "GosNotifyThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/GosNotifyThread$NetworkReceiver;
    }
.end annotation


# static fields
.field static final CHANGE_TYPE_INSTALLED:I = 0x0

.field static final CHANGE_TYPE_REMOVED:I = 0x1

.field static final CHANGE_TYPE_REPLACED:I = 0x8

.field private static final MSG_GOS_ENABLED:I = 0x67

.field private static final MSG_PACKAGE_SIGNAL:I = 0x64

.field private static final MSG_USER_SWITCHED:I = 0x66

.field private static final MSG_WIFI_CONNECTED:I = 0x65

.field private static final NOTIFY_GOS_TIME_INTERVAL:I = 0x3a98

.field private static final SECURE_BOOSTER_ALLOWED_48HZ:Ljava/lang/String; = "game_display_hz_48"

.field private static final SECURE_BOOSTER_REFRESH_RATE_MAX_HZ:Ljava/lang/String; = "game_refresh_rate_max_hz"

.field private static final SECURE_SETTINGS_REFRESH_RATE_MODE:Ljava/lang/String; = "refresh_rate_mode"

.field private static final TAG:Ljava/lang/String; = "GosNotifyThread"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mNetworkReceiver:Lcom/samsung/android/game/GosNotifyThread$NetworkReceiver;

.field private mNotifyToGosCnt:I

.field private mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mVrrSecureSettingObserver:Landroid/database/ContentObserver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .line 102
    const-string v0, "GosNotifyThread"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 49
    new-instance v0, Lcom/samsung/android/game/GosNotifyThread$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/game/GosNotifyThread$1;-><init>(Lcom/samsung/android/game/GosNotifyThread;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mVrrSecureSettingObserver:Landroid/database/ContentObserver;

    .line 81
    new-instance v0, Lcom/samsung/android/game/GosNotifyThread$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/GosNotifyThread$2;-><init>(Lcom/samsung/android/game/GosNotifyThread;)V

    iput-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    iput-object p1, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    .line 104
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mNotifyToGosCnt:I

    .line 106
    new-instance v0, Lcom/samsung/android/game/GosNotifyThread$NetworkReceiver;

    iget-object v1, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/game/GosNotifyThread$NetworkReceiver;-><init>(Lcom/samsung/android/game/GosNotifyThread;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mNetworkReceiver:Lcom/samsung/android/game/GosNotifyThread$NetworkReceiver;

    .line 107
    iget-object v3, p0, Lcom/samsung/android/game/GosNotifyThread;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v5, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 109
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 110
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "game_display_hz_48"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 111
    .local v1, "settings":Landroid/net/Uri;
    iget-object v2, p0, Lcom/samsung/android/game/GosNotifyThread;->mVrrSecureSettingObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 112
    const-string v2, "game_refresh_rate_max_hz"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 113
    .local v2, "maxHzSettings":Landroid/net/Uri;
    iget-object v4, p0, Lcom/samsung/android/game/GosNotifyThread;->mVrrSecureSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/GosNotifyThread;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GosNotifyThread;

    .line 23
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/game/GosNotifyThread;ILjava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/samsung/android/game/GosNotifyThread;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/game/GosNotifyThread;->notifyPackageChangedToGos(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/game/GosNotifyThread;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/game/GosNotifyThread;

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/game/GosNotifyThread;->notifyWifiConnectedToGos()V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/game/GosNotifyThread;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/game/GosNotifyThread;

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/game/GosNotifyThread;->notifyUserSwitchedToGos()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/game/GosNotifyThread;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/game/GosNotifyThread;

    .line 23
    invoke-direct {p0}, Lcom/samsung/android/game/GosNotifyThread;->notifyGosEnabledToGos()V

    return-void
.end method

.method private isGeneralNonGame(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userHandleId"    # I

    .line 189
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v0

    .line 190
    .local v0, "pkgDataHelper":Lcom/samsung/android/game/PkgDataHelper;
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/game/PkgDataHelper;->getPkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v1

    .line 191
    .local v1, "pkgData":Lcom/samsung/android/game/PkgData;
    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    .line 192
    invoke-virtual {v1}, Lcom/samsung/android/game/PkgData;->getCategory()I

    move-result v3

    if-eq v3, v2, :cond_19

    invoke-virtual {v1}, Lcom/samsung/android/game/PkgData;->getCategory()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v2, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    nop

    .line 191
    :goto_1c
    return v2
.end method

.method private isSupportedUserId(I)Z
    .registers 4
    .param p1, "userHandleId"    # I

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "supported":Z
    if-eqz p1, :cond_9

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 146
    :cond_9
    const/4 v0, 0x1

    .line 148
    :cond_a
    return v0
.end method

.method private isUninstallEventMonitoredPkgName(Ljava/lang/String;)Z
    .registers 9
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 196
    const-string v0, "com.samsung.android.game"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 197
    return v1

    .line 199
    :cond_a
    const-string v0, "com.samsung.android.perf_z"

    const-string v2, "com.samsung.android.plugin.dailylimits"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "pluginPkgNames":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_15
    if-ge v4, v2, :cond_23

    aget-object v5, v0, v4

    .line 203
    .local v5, "tempPkgName":Ljava/lang/String;
    invoke-static {p1, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_20

    .line 204
    return v1

    .line 202
    .end local v5    # "tempPkgName":Ljava/lang/String;
    :cond_20
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 208
    :cond_23
    return v3
.end method

.method private notifyGosEnabledToGos()V
    .registers 6

    .line 253
    const-string v0, "GosNotifyThread"

    const-string v1, "notifyGosEnabledToGos(), before send intent to GOS. type:19"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .local v1, "gosIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v2, "type"

    const/16 v3, 0x13

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    :try_start_1a
    iget-object v2, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v2

    .line 259
    .local v2, "retGos":Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyGosEnabledToGos(), after send intent to GOS. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_38} :catch_39
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_38} :catch_39

    .line 263
    .end local v2    # "retGos":Landroid/content/ComponentName;
    goto :goto_42

    .line 260
    :catch_39
    move-exception v2

    .line 261
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "notifyGosEnabledToGos(), failed to send intent to GOS"

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 264
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_42
    return-void
.end method

.method private notifyPackageChangedToGos(ILjava/lang/String;I)V
    .registers 10
    .param p1, "changeType"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userHandleId"    # I

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPackageChangedToGos(), before send intent to GOS. type:15, changeType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userHandleId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GosNotifyThread"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0, p3}, Lcom/samsung/android/game/GosNotifyThread;->isSupportedUserId(I)Z

    move-result v0

    if-nez v0, :cond_49

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyPackageChangedToGos(), not supported user. do nothing. userHandleId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    return-void

    .line 161
    :cond_49
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5e

    .line 162
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/game/GosNotifyThread;->isGeneralNonGame(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-direct {p0, p2}, Lcom/samsung/android/game/GosNotifyThread;->isUninstallEventMonitoredPkgName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5e

    .line 163
    const-string v0, "notifyPackageChangedToGos(), Sending is blocked because it is not an uninstall event monitored app"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void

    .line 168
    :cond_5e
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "gosIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const/16 v2, 0xf

    const-string v3, "type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 171
    const-string v2, "packageName"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    const-string v2, "pkgName"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v2, "changeType"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 174
    const-string v2, "userId"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 176
    move v2, p3

    .line 177
    .local v2, "targetUserId":I
    :try_start_86
    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-eqz v3, :cond_8d

    .line 178
    const/4 v2, 0x0

    .line 180
    :cond_8d
    iget-object v3, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    .line 181
    .local v3, "retGos":Landroid/content/ComponentName;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyPackageChangedToGos(), after send intent to GOS. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ae
    .catch Ljava/lang/SecurityException; {:try_start_86 .. :try_end_ae} :catch_af
    .catch Ljava/lang/IllegalStateException; {:try_start_86 .. :try_end_ae} :catch_af

    .line 185
    .end local v2    # "targetUserId":I
    .end local v3    # "retGos":Landroid/content/ComponentName;
    goto :goto_b8

    .line 182
    :catch_af
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "notifyPackageChangedToGos(), failed to send intent to GOS"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 186
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_b8
    return-void
.end method

.method private notifyUserSwitchedToGos()V
    .registers 9

    .line 212
    const-string v0, "GosNotifyThread"

    const-string v1, "notifyUserSwitchedToGos(), before send intent to GOS. type:18"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, "gosIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    const-string v2, "type"

    const/16 v3, 0x12

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 217
    :try_start_1a
    iget-object v2, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v2

    .line 218
    .local v2, "retGos":Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyUserSwitchedToGos(), after send intent to GOS. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v3, 0x1

    if-nez v2, :cond_6f

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyUserSwitchedToGos(), send intent failed retry to GOS. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/samsung/android/game/GosNotifyThread;->mNotifyToGosCnt:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget v4, p0, Lcom/samsung/android/game/GosNotifyThread;->mNotifyToGosCnt:I

    const/4 v5, 0x3

    if-ge v4, v5, :cond_6c

    .line 223
    iget-object v4, p0, Lcom/samsung/android/game/GosNotifyThread;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x66

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 224
    iget-object v4, p0, Lcom/samsung/android/game/GosNotifyThread;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x3a98

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 225
    iget v4, p0, Lcom/samsung/android/game/GosNotifyThread;->mNotifyToGosCnt:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/samsung/android/game/GosNotifyThread;->mNotifyToGosCnt:I

    goto :goto_71

    .line 227
    :cond_6c
    iput v3, p0, Lcom/samsung/android/game/GosNotifyThread;->mNotifyToGosCnt:I

    goto :goto_71

    .line 230
    :cond_6f
    iput v3, p0, Lcom/samsung/android/game/GosNotifyThread;->mNotifyToGosCnt:I
    :try_end_71
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_71} :catch_72
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_71} :catch_72

    .line 235
    .end local v2    # "retGos":Landroid/content/ComponentName;
    :goto_71
    goto :goto_7b

    .line 232
    :catch_72
    move-exception v2

    .line 233
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "notifyUserSwitchedToGos(), failed to send intent to GOS"

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 236
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_7b
    return-void
.end method

.method private notifyWifiConnectedToGos()V
    .registers 6

    .line 239
    const-string v0, "GosNotifyThread"

    const-string v1, "notifyWifiConnectedToGos(), before send intent to GOS. type:16"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.android.game.gos.GameIntentService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .local v1, "gosIntent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.game.gos"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    const-string v2, "type"

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
    :try_start_1a
    iget-object v2, p0, Lcom/samsung/android/game/GosNotifyThread;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v2

    .line 245
    .local v2, "retGos":Landroid/content/ComponentName;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyWifiConnectedToGos(), after send intent to GOS. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_1a .. :try_end_38} :catch_39
    .catch Ljava/lang/IllegalStateException; {:try_start_1a .. :try_end_38} :catch_39

    .line 249
    .end local v2    # "retGos":Landroid/content/ComponentName;
    goto :goto_42

    .line 246
    :catch_39
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v3, "notifyWifiConnectedToGos(), failed to send intent to GOS"

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 250
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :goto_42
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .registers 3

    .line 118
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 119
    new-instance v0, Lcom/samsung/android/game/GosNotifyThread$3;

    invoke-virtual {p0}, Lcom/samsung/android/game/GosNotifyThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/game/GosNotifyThread$3;-><init>(Lcom/samsung/android/game/GosNotifyThread;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mHandler:Landroid/os/Handler;

    .line 141
    return-void
.end method

.method public sendGosEnabledMessage()V
    .registers 3

    .line 283
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 284
    return-void
.end method

.method public sendPackageMessage(ILjava/lang/String;I)V
    .registers 6
    .param p1, "changeType"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "userHandleId"    # I

    .line 267
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 268
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 269
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 270
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 271
    iget-object v1, p0, Lcom/samsung/android/game/GosNotifyThread;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 272
    return-void
.end method

.method public sendUserSwitchMessage()V
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 280
    return-void
.end method

.method public sendWifiConnectedMessage()V
    .registers 3

    .line 275
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    return-void
.end method
