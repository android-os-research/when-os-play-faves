.class public final Lcom/android/server/HermesService;
.super Lcom/samsung/android/service/HermesService/IHermesService$Stub;
.source "HermesService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field public static final AM_WAITING_COUNT:I = 0x6

.field public static final AM_WAITING_TIME:I = 0x1f4

.field public static final DIAGMON_AGENT_PKGNAME:Ljava/lang/String; = "com.sec.android.diagmonagent"

.field public static final DIAGMON_REPORT_INTENT:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

.field public static final ERR_INVALID_BIGDATA_TYPE:I = -0x18

.field public static final ERR_NO_BIGDATA:I = -0x19

.field public static final ERR_NO_BIGDATA_SERVICE:I = -0x1a

.field public static final ERR_PERMISSION_DENIED:I = -0x5

.field public static final ERR_SEND_BIGDATA:I = -0x17

.field public static final HERMESSERVICE_CLIENT_VERSION:Ljava/lang/String; = "1.0.1"

.field public static final HERMESSERVICE_ERROR_CODE:Ljava/lang/String; = "Device Key"

.field public static final HERMESSERVICE_SERVICEID:Ljava/lang/String; = "hgi9mdaexj"

.field public static final LOCAL_TEST_INTENT:Ljava/lang/String; = "com.sec.android.intent.action.TEST_TRIGGER"

.field public static final NO_ERROR:I = 0x0

.field public static final TAG:Ljava/lang/String; = "HERMES#Service"

.field public static mContext:Landroid/content/Context;


# instance fields
.field public final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$mCollectSkeymasterDumpThread(Lcom/android/server/HermesService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/HermesService;->CollectSkeymasterDumpThread()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mTransmitCollectedDataToServer(Lcom/android/server/HermesService;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/HermesService;->TransmitCollectedDataToServer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPdpData(Lcom/android/server/HermesService;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/android/server/HermesService;->getPdpData()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$msendBigData(Lcom/android/server/HermesService;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/HermesService;->sendBigData(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smreportToDiagmon()V
    .registers 0

    invoke-static {}, Lcom/android/server/HermesService;->reportToDiagmon()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "hermes_jni"

    .line 68
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 343
    invoke-direct {p0}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;-><init>()V

    .line 398
    new-instance v0, Lcom/android/server/HermesService$3;

    invoke-direct {v0, p0}, Lcom/android/server/HermesService$3;-><init>(Lcom/android/server/HermesService;)V

    iput-object v0, p0, Lcom/android/server/HermesService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 344
    sput-object p1, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    .line 345
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.SCREEN_ON"

    .line 346
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    sget-object p1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    const-string p1, "com.sec.android.intent.action.TEST_TRIGGER"

    .line 348
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_26
    const-string p1, "android.intent.action.DATE_CHANGED"

    .line 350
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    sget-object p1, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private native getPdpData()Ljava/lang/String;
.end method

.method private native getSecureHWInfo()[B
.end method

.method private native provisioning()I
.end method

.method public static reportToDiagmon()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/BigdataException;
        }
    .end annotation

    const-string v0, "1"

    const-string/jumbo v1, "hgi9mdaexj"

    const-string v2, "/data/log/sepunion/hermes/parsed_skeymast.txt"

    .line 147
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    .line 148
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    :try_start_13
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_b4

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_b4

    .line 156
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 157
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 158
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 159
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 160
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "DiagMon"

    .line 162
    invoke-virtual {v5, v10, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v10, "CFailLogUpload"

    .line 163
    invoke-virtual {v6, v10, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v6, "ServiceID"

    .line 164
    invoke-virtual {v7, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "Ext"

    .line 165
    invoke-virtual {v7, v6, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v6, "IntentOnly"

    .line 166
    invoke-virtual {v7, v6, v9}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    const-string v6, "ClientV"

    const-string v7, "1.0.1"

    .line 168
    invoke-virtual {v8, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "UiMode"

    const-string v7, "0"

    .line 169
    invoke-virtual {v8, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "ResultCode"

    const-string v7, "Device Key"

    .line 170
    invoke-virtual {v8, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "WifiOnlyFeature"

    .line 171
    invoke-virtual {v8, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "EventID"

    .line 172
    invoke-virtual {v8, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Description"

    const-string v6, "DEVICE KEY DETECTED"

    .line 173
    invoke-virtual {v8, v1, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "IntentOnlyMode"

    .line 176
    invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Agree"

    const-string v1, "D"

    .line 177
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "LogPath"

    .line 178
    invoke-virtual {v9, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ServiceName"

    const-string v1, "SAMSUNG KEYMASTER"

    .line 179
    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "uploadMO"

    .line 181
    invoke-virtual {v3, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 182
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "com.sec.android.diagmonagent"

    .line 183
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    sget-object v0, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_ab} :catch_bc

    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "reportToDiagmon done"

    .line 190
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 153
    :cond_b4
    :try_start_b4
    new-instance v0, Lcom/android/server/BigdataException;

    sget-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_FILE_NOT_FOUND:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {v0, v1}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw v0
    :try_end_bc
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_bc} :catch_bc

    .line 187
    :catch_bc
    new-instance v0, Lcom/android/server/BigdataException;

    sget-object v1, Lcom/android/server/HermesBigdataFunction$BigdataError;->ERR_SEND_DIAGMON:Lcom/android/server/HermesBigdataFunction$BigdataError;

    invoke-direct {v0, v1}, Lcom/android/server/BigdataException;-><init>(Lcom/android/server/HermesBigdataFunction$BigdataError;)V

    throw v0
.end method

.method private native secnvmPowerOff()I
.end method

.method private native secnvmPowerOn()I
.end method

.method private native selftest()[B
.end method

.method private native terminateService()I
.end method

.method private native updateCryptoFW()[B
.end method

.method private native verifyProvisioning()I
.end method


# virtual methods
.method public final CollectSkeymasterDumpThread()V
    .registers 4

    const-string v0, "HERMES#Service"

    const-string v1, "CollectSkeymasterDumpThread"

    .line 194
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :try_start_7
    new-instance v1, Lcom/android/server/HermesService$1;

    invoke-direct {v1, p0}, Lcom/android/server/HermesService$1;-><init>(Lcom/android/server/HermesService;)V

    .line 208
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f} :catch_10

    goto :goto_29

    :catch_10
    move-exception p0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurs on CollectSkeymasterDumpThread. Err = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_29
    const-string p0, "CollectSkeymasterDumpThread done"

    .line 212
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final TransmitCollectedDataToServer()V
    .registers 3

    .line 217
    :try_start_0
    new-instance v0, Lcom/android/server/HermesService$2;

    invoke-direct {v0, p0}, Lcom/android/server/HermesService$2;-><init>(Lcom/android/server/HermesService;)V

    .line 231
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_24

    :catch_9
    move-exception p0

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error occurs on TransmitCollectedDataToServer. Err = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HERMES#Service"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 2

    const/4 p0, 0x0

    return-object p0
.end method

.method public final hasAccessPermission(II)Z
    .registers 5

    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hasAccessPermission start."

    .line 317
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/server/HermesService;->isServiceReady(I)Z

    move-result p0

    const/4 p1, 0x0

    if-nez p0, :cond_15

    const-string p0, "HermesService isn\'t ready."

    .line 320
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_15
    const/16 p0, 0x3e8

    if-ne p0, p2, :cond_1a

    const/4 p1, 0x1

    :cond_1a
    return p1
.end method

.method public final hasAccessPermissionForTerm(II)Z
    .registers 3

    const-string p0, "HERMES#Service"

    const-string/jumbo p1, "hasAccessPermissionForTerm start."

    .line 334
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x3e8

    if-ne p0, p2, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public hermesGetSecureHWInfo()[B
    .registers 3

    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hermesGetSecureHWInfo called."

    .line 355
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    invoke-direct {p0}, Lcom/android/server/HermesService;->getSecureHWInfo()[B

    move-result-object p0

    return-object p0
.end method

.method public hermesProvisioning()I
    .registers 3

    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hermesProvisioning called."

    .line 370
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-direct {p0}, Lcom/android/server/HermesService;->provisioning()I

    move-result p0

    return p0
.end method

.method public hermesSecnvmPowerOff()I
    .registers 3

    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hermesSecnvmPowerOff called!."

    .line 394
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {p0}, Lcom/android/server/HermesService;->secnvmPowerOff()I

    move-result p0

    return p0
.end method

.method public hermesSecnvmPowerOn()I
    .registers 3

    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hermesSecnvmPowerOn called!."

    .line 389
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-direct {p0}, Lcom/android/server/HermesService;->secnvmPowerOn()I

    move-result p0

    return p0
.end method

.method public hermesSelftest()[B
    .registers 3

    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hermesSelftest called."

    .line 365
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-direct {p0}, Lcom/android/server/HermesService;->selftest()[B

    move-result-object p0

    return-object p0
.end method

.method public hermesTerminateService()I
    .registers 4

    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hermesTerminateService called."

    .line 380
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static {}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->getCallingPid()I

    move-result v1

    invoke-static {}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/HermesService;->hasAccessPermissionForTerm(II)Z

    move-result v1

    if-nez v1, :cond_1e

    const-string/jumbo p0, "hermesTerminateService denied."

    .line 382
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x5

    return p0

    .line 385
    :cond_1e
    invoke-direct {p0}, Lcom/android/server/HermesService;->terminateService()I

    move-result p0

    return p0
.end method

.method public hermesUpdateCryptoFW()[B
    .registers 3

    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hermesUpdateCryptoFW called."

    .line 360
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-direct {p0}, Lcom/android/server/HermesService;->updateCryptoFW()[B

    move-result-object p0

    return-object p0
.end method

.method public hermesVerifyProvisioning()I
    .registers 3

    const-string v0, "HERMES#Service"

    const-string/jumbo v1, "hermesVerifyProvisioning called."

    .line 375
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-direct {p0}, Lcom/android/server/HermesService;->verifyProvisioning()I

    move-result p0

    return p0
.end method

.method public final declared-synchronized isServiceReady(I)Z
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_4
    const/4 v3, 0x6

    if-ge v1, v3, :cond_74

    .line 294
    :try_start_7
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    if-eqz v3, :cond_36

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_18

    goto :goto_36

    .line 299
    :cond_18
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_24
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 300
    iget v4, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, p1, :cond_24

    const/4 v2, 0x1

    goto :goto_51

    :cond_36
    :goto_36
    const-string v3, "HERMES#Service"

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get object of ActivityManagerService count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x1f4

    .line 296
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_51} :catch_56
    .catchall {:try_start_7 .. :try_end_51} :catchall_54

    :cond_51
    :goto_51
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :catchall_54
    move-exception p1

    goto :goto_72

    :catch_56
    move-exception p1

    :try_start_57
    const-string v1, "HERMES#Service"

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Err = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catchall {:try_start_57 .. :try_end_71} :catchall_54

    goto :goto_75

    :goto_72
    monitor-exit p0

    throw p1

    :cond_74
    move v0, v2

    .line 311
    :goto_75
    monitor-exit p0

    return v0
.end method

.method public onBootPhase(I)V
    .registers 4

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1d

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HermesService onBootPhase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HERMES#Service"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Lcom/android/server/HermesService;->TransmitCollectedDataToServer()V

    :cond_1d
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method

.method public onStart()V
    .registers 1

    return-void
.end method

.method public onStartUser(I)V
    .registers 2

    return-void
.end method

.method public onStopUser(I)V
    .registers 2

    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2

    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2

    return-void
.end method

.method public final sendBigData(Ljava/lang/String;)I
    .registers 15

    const-string/jumbo p0, "ro.hardware.chipname"

    .line 242
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "ro.hardware"

    .line 243
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 244
    new-instance v11, Ljava/util/StringTokenizer;

    const-string v0, "\r\n"

    invoke-direct {v11, p1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 246
    :cond_16
    :goto_16
    invoke-virtual {v11}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 247
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "="

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    const-string v12, "HERMES#Service"

    if-eqz v1, :cond_91

    .line 250
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 252
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 253
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 257
    sget-object v0, Lcom/android/server/HermesService;->mContext:Landroid/content/Context;

    const-string v1, "HqmManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/SemHqmManager;

    if-eqz v0, :cond_83

    .line 260
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendToHQM data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_7b

    const/4 v1, 0x0

    const-string v2, "GPU"

    const-string/jumbo v4, "ph"

    const-string v7, ""

    const-string v9, ""

    move-object v5, p0

    move-object v6, v10

    .line 262
    invoke-virtual/range {v0 .. v9}, Landroid/os/SemHqmManager;->sendHWParamToHQM(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string/jumbo p1, "sendHWParamToHQM is failed."

    .line 263
    invoke-static {v12, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x17

    goto :goto_16

    :cond_7b
    const-string p1, "bigdata is null."

    .line 267
    invoke-static {v12, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x19

    goto :goto_16

    :cond_83
    const-string p1, "HQM service is not alive, skip sending a data."

    .line 271
    invoke-static {v12, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, -0x1a

    goto :goto_16

    :cond_8b
    const-string v0, "Hermes bigdata has wrong value."

    .line 280
    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_91
    const-string v0, "Hermes feature has wrong value."

    .line 283
    invoke-static {v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    :cond_97
    return p1
.end method
