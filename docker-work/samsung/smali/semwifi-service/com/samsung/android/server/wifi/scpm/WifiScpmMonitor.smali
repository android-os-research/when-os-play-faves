.class public Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;
.super Ljava/lang/Object;
.source "WifiScpmMonitor.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;
.implements Lcom/samsung/android/server/wifi/diagnostics/AutoTestProvider;


# static fields
.field static final ACTION_SCPM_CLEAR_DATA:Ljava/lang/String; = "com.samsung.android.scpm.policy.CLEAR_DATA"

.field static final ACTION_SCPM_UPDATED_PREFIX:Ljava/lang/String; = "com.samsung.android.scpm.policy.UPDATE."

.field static final APP_ID:Ljava/lang/String; = "2g2wnlhqx9"

.field static final APP_VERSION:Ljava/lang/String;

.field static final FRAMEWORK_PACKAGE_NAME:Ljava/lang/String; = "android"

.field private static final INTENT_DATA_SCHEME_PACKAGE:Ljava/lang/String; = "package"

.field static final KEY_RESULT:Ljava/lang/String; = "result"

.field static final KEY_RESULT_CODE:Ljava/lang/String; = "rcode"

.field static final KEY_RESULT_MESSAGE:Ljava/lang/String; = "rmsg"

.field static final KEY_TOKEN:Ljava/lang/String; = "token"

.field static final METHOD_GET_LAST_ERROR:Ljava/lang/String; = "getLastError"

.field static final METHOD_REGISTER:Ljava/lang/String; = "register"

.field static final METHOD_UNREGISTER:Ljava/lang/String; = "unregister"

.field static final PROVIDER_AUTHORITY:Ljava/lang/String; = "com.samsung.android.scpm.policy"

.field private static final TAG:Ljava/lang/String; = "SemWifi.Scpm"

.field static final UNKNOWN_ERROR_CODE:I = -0x1


# instance fields
.field private activeScpmPackageName:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private isPendingToUpdateToken:Z

.field private lastErrorMessage:Ljava/lang/String;

.field private final receiverLock:Ljava/lang/Object;

.field private final receivers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private final resolver:Landroid/content/ContentResolver;

.field private testScpmExecutor:Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;

.field private token:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$PqDQHI_Gc0AnklaCESW6AlU-AyI(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->lambda$notifyToClients$0(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x296YFMhAUhyEZhYnAEYOP6-c3Y(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;Landroid/content/BroadcastReceiver;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->lambda$dump$1(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetisPendingToUpdateToken(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isPendingToUpdateToken:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisPendingToUpdateToken(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isPendingToUpdateToken:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateToken(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)Z
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->updateToken()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".0.3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->APP_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->context:Landroid/content/Context;

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->resolver:Landroid/content/ContentResolver;

    .line 76
    iput-object p2, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->handler:Landroid/os/Handler;

    .line 77
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receiverLock:Ljava/lang/Object;

    .line 78
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receivers:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 84
    iput-object p3, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->activeScpmPackageName:Ljava/lang/String;

    return-void
.end method

.method private getResultCode(Landroid/os/Bundle;)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "rcode"

    const/4 v0, -0x1

    .line 287
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string v0, "rmsg"

    const-string v1, ""

    .line 288
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 289
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$dump$1(Ljava/io/PrintWriter;Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;Landroid/content/BroadcastReceiver;)V
    .registers 4

    .line 298
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;->getScpmConfigurationName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$notifyToClients$0(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V
    .registers 2

    .line 246
    :try_start_0
    invoke-interface {p1, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;->onScpmRegistered(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception p0

    .line 248
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-void
.end method

.method private notifyToClients()V
    .registers 4

    .line 243
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receiverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 244
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receivers:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 251
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method private registerAppToSpcm()Ljava/lang/String;
    .registers 9

    const-string v0, ""

    const-string v1, "android"

    const-string v2, "SemWifi.Scpm"

    const-string v3, "content://com.samsung.android.scpm.policy/"

    .line 146
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 148
    :try_start_c
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "packageName"

    .line 149
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "appId"

    const-string v6, "2g2wnlhqx9"

    .line 150
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "version"

    .line 151
    sget-object v6, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->APP_VERSION:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "receiverPackageName"

    .line 152
    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v5, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->resolver:Landroid/content/ContentResolver;

    const-string v7, "register"

    invoke-virtual {v5, v3, v7, v1, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_aa

    const-string v3, "result"

    const/4 v4, 0x1

    .line 156
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_3d

    goto :goto_3e

    :cond_3d
    const/4 v4, 0x0

    .line 157
    :goto_3e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trying to register package: android version:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " status: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_55

    const-string v5, "registered"

    goto :goto_57

    :cond_55
    const-string v5, "failed"

    .line 159
    :goto_57
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_8c

    .line 161
    invoke-direct {p0, v1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->getResultCode(Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object v1

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "register fail rCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->lastErrorMessage:Ljava/lang/String;

    .line 164
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_8c
    const-string v3, "token"

    .line 167
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_92} :catch_93

    return-object p0

    :catch_93
    move-exception v1

    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to register (maybe scpm agent was disabled) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->lastErrorMessage:Ljava/lang/String;

    .line 171
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_aa
    return-object v0
.end method

.method private setScpmPackageReceiver()V
    .registers 14

    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->activeScpmPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 101
    :cond_9
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    .line 102
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    .line 103
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->activeScpmPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    const-string v0, "SemWifi.Scpm"

    const-string v1, "setup scpm package status receiver"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->context:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$1;-><init>(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->handler:Landroid/os/Handler;

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 115
    iget-object v7, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->context:Landroid/content/Context;

    new-instance v8, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;

    invoke-direct {v8, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$2;-><init>(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;)V

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    new-instance v10, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.android.scpm.policy.CLEAR_DATA"

    invoke-direct {v10, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->handler:Landroid/os/Handler;

    invoke-virtual/range {v7 .. v12}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private unregisterAppToSpcm()V
    .registers 5

    const-string v0, "content://com.samsung.android.scpm.policy/"

    .line 177
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 179
    :try_start_6
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appId"

    const-string v3, "2g2wnlhqx9"

    .line 180
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->resolver:Landroid/content/ContentResolver;

    const-string v2, "unregister"

    const-string v3, "android"

    invoke-virtual {p0, v0, v2, v3, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1b} :catch_1c

    goto :goto_33

    :catch_1c
    move-exception p0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to unregister (maybe scpm agent was disabled) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifi.Scpm"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_33
    return-void
.end method

.method private updateToken()Z
    .registers 4

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isPendingToUpdateToken:Z

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 130
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 131
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->unregisterAppToSpcm()V

    .line 133
    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->registerAppToSpcm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->token:Ljava/lang/String;

    goto :goto_1d

    :cond_19
    const-string v0, ""

    .line 135
    iput-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->token:Ljava/lang/String;

    .line 137
    :goto_1d
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v1, "SemWifi.Scpm"

    const-string v2, "token was updated"

    .line 139
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->notifyToClients()V

    :cond_2d
    return v0
.end method


# virtual methods
.method public checkAndStart()V
    .registers 3

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isAvailable()Z

    move-result v0

    const-string v1, "SemWifi.Scpm"

    if-nez v0, :cond_10

    const-string v0, "unavailable SCPM service"

    .line 89
    iput-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->lastErrorMessage:Ljava/lang/String;

    .line 90
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 93
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->setScpmPackageReceiver()V

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->updateToken()Z

    move-result p0

    if-eqz p0, :cond_1e

    const-string p0, "ready"

    .line 95
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WifiScpmMonitor is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "active"

    goto :goto_15

    :cond_13
    const-string v1, "inactive"

    :goto_15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - agent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->activeScpmPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, " - managed config names:"

    .line 296
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receivers:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-interface {p0, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 299
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_6c

    .line 301
    :cond_4e
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->lastErrorMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - last error message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->lastErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_6c
    :goto_6c
    return-void
.end method

.method public getData(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 259
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.samsung.android.scpm.policy/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->token:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 261
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->resolver:Landroid/content/ContentResolver;

    const-string v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_30

    return-object p0

    :catchall_30
    move-exception p0

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to get data, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifi.Scpm"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getLastError()Landroid/util/Pair;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_44

    :try_start_6
    const-string v0, "content://com.samsung.android.scpm.policy/"

    .line 272
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 273
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "token"

    .line 274
    iget-object v3, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->token:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->resolver:Landroid/content/ContentResolver;

    const-string v3, "getLastError"

    const-string v4, "android"

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_44

    .line 277
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->getResultCode(Landroid/os/Bundle;)Landroid/util/Pair;

    move-result-object p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_28} :catch_29

    return-object p0

    :catch_29
    move-exception p0

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cannot get error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemWifi.Scpm"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    const/4 p0, -0x1

    .line 283
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public isActive()Z
    .registers 1

    .line 198
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->token:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method isAvailable()Z
    .registers 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.samsung.android.scpm.policy"

    const/4 v2, 0x0

    .line 190
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 191
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_19

    .line 192
    iget-object v1, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->activeScpmPackageName:Ljava/lang/String;

    :cond_19
    if-eqz v0, :cond_1c

    const/4 v2, 0x1

    :cond_1c
    return v2
.end method

.method public register(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V
    .registers 7

    .line 202
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receivers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_4f

    .line 204
    new-instance v0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor$3;-><init>(Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    .line 214
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "com.samsung.android.scpm.policy.UPDATE."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-interface {p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;->getScpmConfigurationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 215
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    iget-object v2, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->context:Landroid/content/Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 218
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receiverLock:Ljava/lang/Object;

    monitor-enter v1

    .line 219
    :try_start_37
    iget-object v2, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receivers:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_4c

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 224
    :try_start_43
    invoke-interface {p1, p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;->onScpmRegistered(Lcom/samsung/android/server/wifi/scpm/ScpmDataProvider;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47

    goto :goto_4f

    :catch_47
    move-exception p0

    .line 226
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4f

    :catchall_4c
    move-exception p0

    .line 220
    :try_start_4d
    monitor-exit v1
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    throw p0

    :cond_4f
    :goto_4f
    return-void
.end method

.method public setTestSettings(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "enable"

    .line 309
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 310
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->testScpmExecutor:Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;

    if-nez v0, :cond_13

    .line 311
    new-instance v0, Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->testScpmExecutor:Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;

    :cond_13
    if-eqz p1, :cond_24

    .line 314
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->testScpmExecutor:Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->isActive()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;->notifyScpmState(Z)V

    .line 315
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->testScpmExecutor:Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->register(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    goto :goto_29

    .line 317
    :cond_24
    iget-object p1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->testScpmExecutor:Lcom/samsung/android/server/wifi/scpm/TestScpmExecutor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->unregister(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V

    :goto_29
    return-void
.end method

.method public unregister(Lcom/samsung/android/server/wifi/scpm/WifiScpmExecutor;)V
    .registers 4

    .line 233
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receivers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1c

    .line 235
    iget-object v1, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 236
    iget-object v0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receiverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_12
    iget-object p0, p0, Lcom/samsung/android/server/wifi/scpm/WifiScpmMonitor;->receivers:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    monitor-exit v0

    goto :goto_1c

    :catchall_19
    move-exception p0

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_19

    throw p0

    :cond_1c
    :goto_1c
    return-void
.end method
