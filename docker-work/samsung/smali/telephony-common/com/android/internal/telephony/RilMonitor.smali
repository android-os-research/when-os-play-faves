.class public Lcom/android/internal/telephony/RilMonitor;
.super Landroid/os/Handler;
.source "RilMonitor.java"


# static fields
.field private static blacklist mSyncCmd:Ljava/lang/Object;


# instance fields
.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mLogs:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mMonitorDuration:I

.field private blacklist mPhoneId:I

.field private blacklist mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

.field private blacklist mStatus:I

.field private blacklist mTimeoutCount:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/RilMonitor;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/RilMonitor;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSemCi(Lcom/android/internal/telephony/RilMonitor;)Lcom/android/internal/telephony/SemCommandsInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/RilMonitor;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdoShellCmd(Lcom/android/internal/telephony/RilMonitor;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->doShellCmd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/RilMonitor;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/RilMonitor;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogv(Lcom/android/internal/telephony/RilMonitor;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetmSyncCmd()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/internal/telephony/RilMonitor;->mSyncCmd:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/RilMonitor;->mSyncCmd:Ljava/lang/Object;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/HandlerThread;ILcom/android/internal/telephony/SemCommandsInterface;)V
    .registers 6

    .line 79
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/android/internal/telephony/RilMonitor;->mPhoneId:I

    const v1, 0x927c0

    .line 72
    iput v1, p0, Lcom/android/internal/telephony/RilMonitor;->mMonitorDuration:I

    .line 73
    iput v0, p0, Lcom/android/internal/telephony/RilMonitor;->mTimeoutCount:I

    .line 74
    iput v0, p0, Lcom/android/internal/telephony/RilMonitor;->mStatus:I

    .line 76
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/RilMonitor;->mLogs:Lcom/android/internal/telephony/LocalLog;

    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/RilMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    .line 82
    iput p2, p0, Lcom/android/internal/telephony/RilMonitor;->mPhoneId:I

    .line 83
    iput-object p3, p0, Lcom/android/internal/telephony/RilMonitor;->mSemCi:Lcom/android/internal/telephony/SemCommandsInterface;

    .line 85
    sget-boolean p1, Landroid/os/Build;->IS_ENG:Z

    if-eqz p1, :cond_29

    .line 86
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->checkValidityOfCarrierConfigVendorXml()V

    :cond_29
    const/4 p1, 0x3

    .line 89
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget p2, p0, Lcom/android/internal/telephony/RilMonitor;->mMonitorDuration:I

    int-to-long p2, p2

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string p1, "RilMonitor"

    .line 90
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist IsOverLimitOfWaitingTime(Lcom/android/internal/telephony/RILRequest;)Z
    .registers 6

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/internal/telephony/RILRequest;->mStartTimeMs:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_41

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Response for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/internal/telephony/SemRIL;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") during "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "ms"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;Z)V

    return v0

    :cond_41
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist checkPendingRequest()V
    .registers 4

    const-string v0, "checkPendingRequest"

    .line 187
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 189
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCommandsInterfaces()[Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/RilMonitor;->mPhoneId:I

    aget-object v0, v0, v1

    check-cast v0, Lcom/android/internal/telephony/RIL;

    if-eqz v0, :cond_2f

    .line 191
    invoke-virtual {v0}, Lcom/android/internal/telephony/RIL;->getRilRequestList()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 192
    :goto_16
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2f

    .line 193
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/RILRequest;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RilMonitor;->IsOverLimitOfWaitingTime(Lcom/android/internal/telephony/RILRequest;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 194
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->restartProcess()V

    goto :goto_2f

    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2f
    :goto_2f
    return-void
.end method

.method private blacklist checkStatus()V
    .registers 3

    const-string v0, "checkStatus"

    .line 247
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 249
    iget v0, p0, Lcom/android/internal/telephony/RilMonitor;->mTimeoutCount:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_17

    const v0, 0x927c0

    .line 250
    iput v0, p0, Lcom/android/internal/telephony/RilMonitor;->mMonitorDuration:I

    const/4 v0, 0x0

    .line 251
    iput v0, p0, Lcom/android/internal/telephony/RilMonitor;->mTimeoutCount:I

    .line 253
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->restartProcess()V

    goto :goto_1f

    :cond_17
    const/16 v1, 0x2710

    .line 255
    iput v1, p0, Lcom/android/internal/telephony/RilMonitor;->mMonitorDuration:I

    add-int/lit8 v0, v0, 0x1

    .line 256
    iput v0, p0, Lcom/android/internal/telephony/RilMonitor;->mTimeoutCount:I

    .line 259
    :goto_1f
    iget v0, p0, Lcom/android/internal/telephony/RilMonitor;->mTimeoutCount:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    .line 260
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->dumpLog()V

    :cond_27
    return-void
.end method

.method private blacklist checkValidityOfCarrierConfigVendorXml()V
    .registers 6

    const/4 v0, 0x0

    .line 302
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/system/etc/carrierconfig_vendor.xml"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_8} :catch_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_8} :catch_15

    .line 303
    :try_start_8
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const-string v3, "utf-8"

    .line 304
    invoke-interface {v2, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_11} :catch_13
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_11} :catch_13

    move-object v0, v2

    goto :goto_1e

    :catch_13
    move-exception v2

    goto :goto_17

    :catch_15
    move-exception v2

    move-object v1, v0

    .line 306
    :goto_17
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;)V

    :goto_1e
    if-eqz v0, :cond_63

    :cond_20
    :goto_20
    const/4 v2, 0x1

    .line 313
    :try_start_21
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_3a

    const/4 v4, 0x2

    if-ne v3, v4, :cond_20

    const-string v3, "carrier_config"

    .line 314
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 315
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/os/PersistableBundle;

    goto :goto_20

    :cond_3a
    const-string v0, "No Error in parsing carrier config vendor.xml"

    .line 318
    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;Z)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_3f} :catch_42
    .catchall {:try_start_21 .. :try_end_3f} :catchall_40

    goto :goto_63

    :catchall_40
    move-exception p0

    goto :goto_5d

    :catch_42
    move-exception v0

    .line 321
    :try_start_43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in parsing carrier config vendor.xml. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;Z)V
    :try_end_57
    .catchall {:try_start_43 .. :try_end_57} :catchall_40

    if-eqz v1, :cond_66

    .line 325
    :goto_59
    :try_start_59
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_66

    goto :goto_66

    :goto_5d
    if-eqz v1, :cond_62

    :try_start_5f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_62} :catch_62

    .line 330
    :catch_62
    :cond_62
    throw p0

    :cond_63
    :goto_63
    if-eqz v1, :cond_66

    goto :goto_59

    :catch_66
    :cond_66
    :goto_66
    return-void
.end method

.method private blacklist doShellCmd(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doShellCmd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    const-string v0, ""

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/sh"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "-c"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    :try_start_26
    const-string v2, "doShellCmd: exec command"

    .line 272
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 273
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 275
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    :cond_38
    const-string v1, "doShellCmd: exec done"

    .line 277
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_3d} :catch_52
    .catch Ljava/lang/SecurityException; {:try_start_26 .. :try_end_3d} :catch_52
    .catch Ljava/lang/InterruptedException; {:try_start_26 .. :try_end_3d} :catch_52

    .line 283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doShellCmd done: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    return-object v0

    :catch_52
    move-exception p1

    const-string v1, "doShellCmd: fail"

    .line 279
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/RilMonitor;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    return-object v0
.end method

.method private blacklist dumpLog()V
    .registers 2

    const/4 v0, 0x0

    .line 211
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->dumpLog(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist dumpLog(Ljava/lang/String;)V
    .registers 4

    .line 215
    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const-string v0, "dumpLog"

    .line 219
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 221
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/RilMonitor$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/RilMonitor$2;-><init>(Lcom/android/internal/telephony/RilMonitor;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 243
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private blacklist getRilStatus()V
    .registers 4

    const-string v0, "getRilStatus"

    .line 153
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 155
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 157
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/RilMonitor$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/RilMonitor$1;-><init>(Lcom/android/internal/telephony/RilMonitor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 164
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private blacklist handleRilStatusResult(I)V
    .registers 4

    const-string v0, "handleRilStatusResult"

    .line 168
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRilStatusResult: status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1f

    .line 172
    iput v0, p0, Lcom/android/internal/telephony/RilMonitor;->mTimeoutCount:I

    goto :goto_36

    :cond_1f
    const/4 v1, 0x1

    if-ne p1, v1, :cond_33

    .line 174
    iput v0, p0, Lcom/android/internal/telephony/RilMonitor;->mTimeoutCount:I

    .line 175
    iget v0, p0, Lcom/android/internal/telephony/RilMonitor;->mStatus:I

    if-eq v0, v1, :cond_36

    const-string v0, "status=1"

    .line 176
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;Z)V

    const-string v0, "reqcnt"

    .line 177
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->dumpLog(Ljava/lang/String;)V

    goto :goto_36

    .line 180
    :cond_33
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->checkStatus()V

    .line 183
    :cond_36
    :goto_36
    iput p1, p0, Lcom/android/internal/telephony/RilMonitor;->mStatus:I

    return-void
.end method

.method private final blacklist log(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 345
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method private final blacklist log(Ljava/lang/String;Z)V
    .registers 7

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/RilMonitor;->mPhoneId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RilMonitor"

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3e

    .line 352
    iget-object p2, p0, Lcom/android/internal/telephony/RilMonitor;->mLogs:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/RilMonitor;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_3e
    return-void
.end method

.method private final blacklist loge(Ljava/lang/String;)V
    .registers 4

    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/RilMonitor;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RilMonitor"

    invoke-static {p1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final blacklist loge(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 5

    .line 362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/RilMonitor;->mPhoneId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RilMonitor"

    invoke-static {p1, p0, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private final blacklist logv(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static blacklist makeRilMonitor(ILcom/android/internal/telephony/SemCommandsInterface;)Lcom/android/internal/telephony/RilMonitor;
    .registers 5

    .line 94
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/internal/telephony/RilMonitor;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 95
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 96
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v1, Lcom/android/internal/telephony/RilMonitor;

    invoke-direct {v1, v0, p0, p1}, Lcom/android/internal/telephony/RilMonitor;-><init>(Landroid/os/HandlerThread;ILcom/android/internal/telephony/SemCommandsInterface;)V

    return-object v1
.end method

.method private blacklist restartProcess()V
    .registers 3

    const-string v0, "restartProcess"

    .line 288
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;)V

    .line 290
    sget-object v0, Lcom/android/internal/telephony/RilMonitor;->mSyncCmd:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    const-string v1, "restartProcess:"

    .line 291
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;)V

    const-string p0, "ctl.restart"

    const-string v1, "ril-daemon"

    .line 293
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    monitor-exit v0

    return-void

    :catchall_16
    move-exception p0

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_16

    throw p0
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 2

    const-string v0, "dispose"

    .line 372
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/RilMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_f

    .line 375
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 376
    iput-object v0, p0, Lcom/android/internal/telephony/RilMonitor;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_f
    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "++++++++++++++++++++++++++++++++"

    .line 334
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "RilMonitor:"

    .line 335
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMonitorDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RilMonitor;->mMonitorDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mTimeoutCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RilMonitor;->mTimeoutCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/RilMonitor;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v0, :cond_55

    .line 340
    iget-object p0, p0, Lcom/android/internal/telephony/RilMonitor;->mLogs:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    :cond_55
    return-void
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 103
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v0, v1, :cond_34

    if-eq v0, v2, :cond_18

    if-eq v0, v3, :cond_c

    goto :goto_72

    :cond_c
    const-string p1, "EVENT_MONITOR_TIMEOUT"

    .line 138
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->getRilStatus()V

    .line 141
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->checkPendingRequest()V

    goto :goto_72

    :cond_18
    const-string p1, "EVENT_RIL_RESPONSE_TIMEOUT"

    .line 127
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/android/internal/telephony/RilMonitor;->checkStatus()V

    .line 131
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_29

    .line 132
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 134
    :cond_29
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/RilMonitor;->mMonitorDuration:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_72

    :cond_34
    const-string v0, "EVENT_GET_RIL_STATUS_DONE"

    .line 105
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->logv(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 109
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    if-eqz p1, :cond_55

    .line 111
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_55

    .line 112
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_50

    .line 113
    check-cast p1, [B

    aget-byte v0, p1, v0

    goto :goto_55

    :cond_50
    const-string p1, "result is null"

    .line 115
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/RilMonitor;->log(Ljava/lang/String;)V

    .line 118
    :cond_55
    :goto_55
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/RilMonitor;->handleRilStatusResult(I)V

    .line 120
    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 121
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    :cond_61
    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget v0, p0, Lcom/android/internal/telephony/RilMonitor;->mMonitorDuration:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6b} :catch_6c

    goto :goto_72

    :catch_6c
    move-exception p1

    const-string v0, "handleMessage"

    .line 148
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/RilMonitor;->loge(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_72
    return-void
.end method
