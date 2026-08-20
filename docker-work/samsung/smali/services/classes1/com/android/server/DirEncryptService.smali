.class public Lcom/android/server/DirEncryptService;
.super Lcom/samsung/android/security/IDirEncryptService$Stub;
.source "DirEncryptService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;
    }
.end annotation


# static fields
.field public static final ENCRYPT_TAG:Ljava/lang/String; = "DirEncryptConnector"

.field public static final RECOVERY_DIR:Ljava/io/File;

.field public static final REQUESTER_DM:Ljava/lang/String; = "dm"

.field public static final REQUESTER_USER:Ljava/lang/String; = "user"

.field public static final REQUESTER_USER_ENC_SETTING_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field public static final SDCARD_ENC_STATUS_ACTIVITY:Ljava/lang/String; = "android.app.action.SDCARD_ENCRYPTION_STATUS"

.field public static final TAG:Ljava/lang/String; = "DirEncryptService"


# instance fields
.field public final ENCRYPT:I

.field public final PRESCAN_FULL_ERR:I

.field public final RESPONSE_BASE:I

.field public mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field public mContext:Landroid/content/Context;

.field public mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

.field public mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

.field public mHandlerThread:Landroid/os/HandlerThread;

.field public mHelper:Lcom/android/server/DirEncryptServiceHelper;

.field public final mListener:Landroid/os/IVoldTaskListener;

.field public mPm:Landroid/content/pm/PackageManager;

.field public mReady:Z

.field public mSync:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHelper(Lcom/android/server/DirEncryptService;)Lcom/android/server/DirEncryptServiceHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmoveDumpstate(Lcom/android/server/DirEncryptService;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/DirEncryptService;->moveDumpstate()Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 113
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/DirEncryptService;->RECOVERY_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 177
    invoke-direct {p0}, Lcom/samsung/android/security/IDirEncryptService$Stub;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    .line 100
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 103
    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    .line 104
    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 106
    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/16 v0, 0x2a8

    .line 109
    iput v0, p0, Lcom/android/server/DirEncryptService;->RESPONSE_BASE:I

    const/16 v0, 0x2ab

    .line 110
    iput v0, p0, Lcom/android/server/DirEncryptService;->ENCRYPT:I

    const/16 v0, 0x2ae

    .line 111
    iput v0, p0, Lcom/android/server/DirEncryptService;->PRESCAN_FULL_ERR:I

    .line 130
    new-instance v0, Lcom/android/server/DirEncryptService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptService$1;-><init>(Lcom/android/server/DirEncryptService;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mListener:Landroid/os/IVoldTaskListener;

    .line 210
    new-instance v0, Lcom/android/server/DirEncryptService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DirEncryptService$2;-><init>(Lcom/android/server/DirEncryptService;)V

    iput-object v0, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "DirEncryptService"

    const-string v1, "ctor DirEncryptService....."

    .line 178
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iput-object p1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    .line 180
    new-instance p1, Lcom/android/server/DirEncryptServiceHelper;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/DirEncryptServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    .line 182
    new-instance p1, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    return-void
.end method


# virtual methods
.method public final authByUid(I)Z
    .registers 3

    .line 322
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 324
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public final checkSystemUid(I)Z
    .registers 2

    const/16 p0, 0x3e8

    if-eq p1, p0, :cond_d

    const-string p0, "DirEncryptService"

    const-string p1, "Invalid uid. Only SYSTEM can use DirEncryptService Call."

    .line 314
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public final copyFile(Ljava/io/File;Ljava/io/File;)V
    .registers 13

    const-string p0, "Error close FileChannel : "

    const-string v0, "DirEncryptService"

    const/4 v1, 0x0

    .line 267
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v2
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_e} :catch_8e
    .catch Landroid/system/ErrnoException; {:try_start_5 .. :try_end_e} :catch_60
    .catchall {:try_start_5 .. :try_end_e} :catchall_5c

    .line 268
    :try_start_e
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-wide/16 v5, 0x0

    .line 269
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    move-object v3, v1

    move-object v4, v2

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    const/16 v3, 0x1a0

    .line 271
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_2b} :catch_57
    .catch Landroid/system/ErrnoException; {:try_start_e .. :try_end_2b} :catch_52
    .catchall {:try_start_e .. :try_end_2b} :catchall_4c

    .line 281
    :try_start_2b
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 283
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_31} :catch_33

    goto/16 :goto_bd

    :catch_33
    move-exception v1

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_39
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_bd

    :catchall_4c
    move-exception p1

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_db

    :catch_52
    move-exception v3

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_62

    :catch_57
    move-exception v3

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_90

    :catchall_5c
    move-exception p1

    move-object v2, v1

    goto/16 :goto_db

    :catch_60
    move-exception v3

    move-object v2, v1

    .line 276
    :goto_62
    :try_start_62
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error chmod ode logs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7a
    .catchall {:try_start_62 .. :try_end_7a} :catchall_da

    if-eqz v1, :cond_82

    .line 281
    :try_start_7c
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_82

    :catch_80
    move-exception v1

    goto :goto_88

    :cond_82
    :goto_82
    if-eqz v2, :cond_bd

    .line 283
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_87} :catch_80

    goto :goto_bd

    .line 287
    :goto_88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_39

    :catch_8e
    move-exception v3

    move-object v2, v1

    .line 274
    :goto_90
    :try_start_90
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error copy ode logs : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catchall {:try_start_90 .. :try_end_a8} :catchall_da

    if-eqz v1, :cond_b0

    .line 281
    :try_start_aa
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_b0

    :catch_ae
    move-exception v1

    goto :goto_b6

    :cond_b0
    :goto_b0
    if-eqz v2, :cond_bd

    .line 283
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_b5
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b5} :catch_ae

    goto :goto_bd

    .line 287
    :goto_b6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_39

    .line 290
    :cond_bd
    :goto_bd
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "copyFile : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_da
    move-exception p1

    :goto_db
    if-eqz v1, :cond_e3

    .line 281
    :try_start_dd
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    goto :goto_e3

    :catch_e1
    move-exception p2

    goto :goto_e9

    :cond_e3
    :goto_e3
    if-eqz v2, :cond_ff

    .line 283
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_e8
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e8} :catch_e1

    goto :goto_ff

    .line 287
    :goto_e9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_ff
    :goto_ff
    throw p1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 378
    iget-object p1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    const-string p3, "android.permission.DUMP"

    invoke-virtual {p1, p3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_37

    .line 380
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump DirEncryptService from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 380
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 385
    :cond_37
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 387
    :try_start_3b
    invoke-virtual {p0, p2}, Lcom/android/server/DirEncryptService;->dumpInternal(Ljava/io/PrintWriter;)V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_42

    .line 389
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_42
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 390
    throw p0
.end method

.method public final dumpInternal(Ljava/io/PrintWriter;)V
    .registers 5

    .line 395
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 396
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    if-eqz v1, :cond_53

    const-string/jumbo v1, "status"

    .line 397
    invoke-virtual {p0}, Lcom/android/server/DirEncryptService;->getCurrentStatus()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "isSdCardEncryped"

    .line 398
    invoke-virtual {p0}, Lcom/android/server/DirEncryptService;->isSdCardEncryped()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "lasterror"

    .line 399
    invoke-virtual {p0}, Lcom/android/server/DirEncryptService;->getLastError()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "spacerequired"

    .line 400
    invoke-virtual {p0}, Lcom/android/server/DirEncryptService;->getAdditionalSpaceRequired()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string/jumbo v1, "isAdminApplied"

    .line 401
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "EncryptTimestamp"

    .line 402
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v2}, Lcom/android/server/DirEncryptServiceHelper;->getEncryptTimestamp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "DecryptTimestamp"

    .line 403
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getDecryptTimestamp()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    :cond_53
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_56
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_56} :catch_71
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_56} :catch_57

    goto :goto_79

    :catch_57
    move-exception p0

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump ex ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_79

    :catch_71
    move-exception p0

    const-string p1, "DirEncryptService"

    const-string v0, "dump formatting failure"

    .line 407
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_79
    return-void
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .registers 7

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Check the state of external SD card mount path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DirEncryptService"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result p1

    if-nez p1, :cond_1f

    const/16 p0, 0xc8

    return p0

    .line 673
    :cond_1f
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 674
    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v1

    if-eqz v1, :cond_87

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptService;->checkSystemUid(I)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_87

    .line 680
    :cond_30
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 682
    new-instance p1, Lcom/samsung/android/security/DirEncryptionWrapper;

    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v3}, Lcom/samsung/android/security/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    .line 683
    invoke-virtual {p1}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolState()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v3, "mounted"

    .line 685
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/16 v4, 0xd

    if-eqz v3, :cond_5f

    const-string p1, "SD card mounted, need unmount..."

    .line 687
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object p1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {p1}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    .line 689
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_83

    :cond_5f
    const-string v3, "HiddenMount"

    .line 691
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7c

    const-string p1, "SD card ready, need encrypt cycle..."

    .line 692
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object p1, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {p1}, Lcom/android/server/DirEncryptServiceHelper;->ready()V

    .line 694
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_83

    :cond_7c
    const-string p0, "SD card not mounted, so not applying policies this time"

    .line 698
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xca

    .line 702
    :goto_83
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_87
    :goto_87
    const-string p0, "Invalid requester"

    .line 675
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0xcc

    return p0
.end method

.method public final findRequester(I)Ljava/lang/String;
    .registers 8

    .line 332
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    .line 333
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name uidApp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "DirEncryptService"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Package name myUID  = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "REQUESTER_APP..."

    if-eqz v1, :cond_c0

    .line 338
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_59

    goto :goto_c0

    .line 343
    :cond_59
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0, p1}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v3

    const-string v5, ""

    if-eqz v3, :cond_69

    const-string p0, "REQUESTER_UNKNOWN..."

    .line 344
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_69
    if-eq v0, p1, :cond_6f

    .line 349
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 353
    :cond_6f
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptService;->getCallingProcessPkg(I)Ljava/lang/String;

    move-result-object p0

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling pid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "calling pid package = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_a7

    const-string p0, "Calling package name is null..."

    .line 360
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_a7
    const-string p1, "com.android.settings"

    .line 364
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b8

    const-string p0, "REQUESTER_USER..."

    .line 365
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "user"

    return-object p0

    :cond_b8
    const-string p0, "REQUESTER_DM..."

    .line 372
    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "dm"

    return-object p0

    .line 339
    :cond_c0
    :goto_c0
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getAdditionalSpaceRequired()I
    .registers 1

    .line 653
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getAdditionalSpaceRequired()I

    move-result p0

    return p0
.end method

.method public final getCallingProcessPkg(I)Ljava/lang/String;
    .registers 5

    const-string p0, "activity"

    .line 296
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x0

    if-eqz p0, :cond_28

    .line 299
    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getRunningAppProcesses()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_28

    .line 301
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_15
    :goto_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 302
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_15

    .line 303
    iget-object v0, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_15

    :cond_28
    return-object v0
.end method

.method public getCurrentStatus()I
    .registers 1

    .line 645
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result p0

    return p0
.end method

.method public getLastError()I
    .registers 1

    .line 649
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->getLastError()I

    move-result p0

    return p0
.end method

.method public getListener()Landroid/os/IVoldTaskListener;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mListener:Landroid/os/IVoldTaskListener;

    return-object p0
.end method

.method public isSdCardEncryped()Z
    .registers 1

    .line 707
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isSdCardEncryped()Z

    move-result p0

    return p0
.end method

.method public isStorageCardEncryptionPoliciesApplied()I
    .registers 5

    .line 607
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 611
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-string v2, "DirEncryptService"

    const-string/jumbo v3, "isStorageCardEncryptionPoliciesApplied....."

    .line 613
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->isStorageCardEncryptionPoliciesApplied()I

    move-result p0

    .line 616
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method public final moveDumpstate()Z
    .registers 7

    const-string/jumbo v0, "vold.decrypt"

    .line 226
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "trigger_restart_min_framework"

    .line 229
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_74

    .line 233
    :cond_11
    sget-object v0, Lcom/android/server/DirEncryptService;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const-string v2, "DirEncryptService"

    const/4 v3, 0x0

    if-nez v1, :cond_23

    const-string/jumbo p0, "moveDumpstate - RECOVERY_DIR was not exist!!"

    .line 234
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 238
    :cond_23
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_76

    .line 239
    array-length v1, v0

    if-gtz v1, :cond_2d

    goto :goto_76

    .line 244
    :cond_2d
    :goto_2d
    array-length v1, v0

    if-ge v3, v1, :cond_74

    .line 245
    aget-object v1, v0, v3

    if-eqz v1, :cond_71

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_71

    aget-object v1, v0, v3

    const-string/jumbo v2, "last_ode_dumpstate"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 246
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/android/server/DirEncryptService;->RECOVERY_DIR:Ljava/io/File;

    aget-object v4, v0, v3

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/log/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/DirEncryptService;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 250
    :try_start_69
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception v1

    .line 252
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_71
    :goto_71
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    :cond_74
    :goto_74
    const/4 p0, 0x1

    return p0

    :cond_76
    :goto_76
    const-string/jumbo p0, "moveDumpstate - fileList is null!!"

    .line 240
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    .registers 2

    .line 416
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->registerListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V

    return-void
.end method

.method public setMountSDcardToHelper(Z)V
    .registers 5

    .line 727
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 731
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 732
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 734
    invoke-virtual {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 735
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->setMountSDcardToHelper(Z)V

    goto :goto_23

    :cond_1b
    const-string p0, "DirEncryptService"

    const-string/jumbo p1, "setMountSDcardToHelper error: invalid uid"

    .line 737
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :goto_23
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setNeedToCreateKey(Z)V
    .registers 6

    .line 711
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 715
    :cond_7
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 716
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 718
    invoke-virtual {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {p0, v0}, Lcom/android/server/DirEncryptService;->checkSystemUid(I)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 719
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->setNeedToCreateKey(Z)V

    goto :goto_29

    :cond_21
    const-string p0, "DirEncryptService"

    const-string/jumbo p1, "setNeedToCreateKey error: invalid uid"

    .line 721
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :goto_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method

.method public setPassword(Ljava/lang/String;)I
    .registers 9

    .line 621
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    const/16 p0, 0xc8

    return p0

    .line 625
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 626
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 629
    iget-object v3, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    .line 630
    invoke-virtual {p0, v0}, Lcom/android/server/DirEncryptService;->checkSystemUid(I)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_28

    const-string v4, ".*android.uid.systemui.*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    const/4 v3, 0x0

    goto :goto_29

    :cond_28
    move v3, v5

    :goto_29
    const-string v4, "DirEncryptService"

    const-string/jumbo v6, "setPassword....."

    .line 634
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    invoke-virtual {p0, v0}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result v0

    if-eqz v0, :cond_43

    if-eqz v3, :cond_43

    .line 636
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    invoke-virtual {p0, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_49

    :cond_43
    const-string/jumbo p0, "setPassword error: invalid uid"

    .line 638
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :goto_49
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, 0xd

    return p0
.end method

.method public setSdCardEncryptionPolicy(IILjava/lang/String;)I
    .registers 13

    .line 544
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    const/16 v1, 0xc8

    if-nez v0, :cond_9

    return v1

    :cond_9
    const-string v0, "DirEncryptService"

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSdCardEncryptionPolicy: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 558
    :try_start_38
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/DirEncryptService;->findRequester(I)Ljava/lang/String;

    move-result-object v2

    .line 559
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 560
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    if-nez p3, :cond_54

    .line 563
    iget-object p3, p0, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {p3}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_54

    const-string p3, "FFFF-FFFF"

    :cond_54
    const-string v6, "DirEncryptService"

    .line 568
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSdCardEncryptionPolicy : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v6, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    iget-object p3, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {p3}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result p3

    if-eqz p3, :cond_81

    const-string p0, "DirEncryptService"

    const-string p1, "Cannot save the policy if SD card is being encrypted/decrypted"

    .line 571
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, 0xf

    .line 573
    monitor-exit v0

    return p0

    :cond_81
    const-string p3, "DirEncryptService"

    .line 576
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Called by: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-virtual {p0, v3}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result p3

    const/16 v3, 0x8

    const/16 v6, 0x9

    if-eqz p3, :cond_bf

    const-string/jumbo p3, "user"

    .line 578
    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_ac

    :cond_aa
    :goto_aa
    move v1, v3

    goto :goto_c8

    :cond_ac
    if-eqz p2, :cond_aa

    const/4 p3, 0x1

    if-eq p2, p3, :cond_aa

    if-ne p1, p3, :cond_b4

    goto :goto_aa

    :cond_b4
    if-nez p1, :cond_b7

    goto :goto_c7

    :cond_b7
    const-string p1, "DirEncryptService"

    const-string p2, "Do not need to disable SD card encryption policy by EAS/MDM requests"

    .line 590
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c8

    :cond_bf
    const-string p1, "DirEncryptService"

    const-string/jumbo p2, "setSdCardEncryptionPolicy error: invalid uid"

    .line 595
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c7
    move v1, v6

    .line 599
    :goto_c8
    invoke-virtual {p0}, Lcom/android/server/DirEncryptService;->moveDumpstate()Z

    .line 600
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 601
    monitor-exit v0

    return v1

    :catchall_d0
    move-exception p0

    monitor-exit v0
    :try_end_d2
    .catchall {:try_start_38 .. :try_end_d2} :catchall_d0

    throw p0
.end method

.method public setStorageCardEncryptionPolicy(III)I
    .registers 12

    .line 425
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v0

    const/16 v1, 0xc8

    if-nez v0, :cond_9

    return v1

    :cond_9
    const-string v0, "DirEncryptService"

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setStorageCardEncryption: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3c

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3c

    return v1

    :cond_3c
    const/4 v2, 0x4

    if-eq p2, v2, :cond_43

    const/4 v3, 0x5

    if-eq p2, v3, :cond_43

    return v1

    :cond_43
    if-ne p2, v2, :cond_48

    if-eq p1, v0, :cond_48

    return v1

    :cond_48
    const/4 p1, 0x6

    if-eq p3, p1, :cond_4f

    const/4 p1, 0x7

    if-eq p3, p1, :cond_4f

    return v1

    .line 499
    :cond_4f
    iget-object p1, p0, Lcom/android/server/DirEncryptService;->mSync:Ljava/lang/Object;

    monitor-enter p1

    .line 501
    :try_start_52
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/DirEncryptService;->findRequester(I)Ljava/lang/String;

    move-result-object p2

    .line 502
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    .line 503
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 506
    iget-object v0, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    const-string v4, "device_policy"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    .line 508
    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager;->semGetRequireStorageCardEncryption(Landroid/content/ComponentName;)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_76

    move v0, v4

    goto :goto_77

    :cond_76
    const/4 v0, 0x0

    :goto_77
    const-string v5, "DirEncryptService"

    .line 510
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setStorageCardEncryptionPolicy : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/DirEncryptService;->mDew:Lcom/samsung/android/security/DirEncryptionWrapper;

    invoke-virtual {v7}, Lcom/samsung/android/security/DirEncryptionWrapper;->getExternalSDvolFsUuid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    iget-object v5, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v5}, Lcom/android/server/DirEncryptServiceHelper;->getCurrentStatus()I

    move-result v5

    if-eqz v5, :cond_aa

    const-string p0, "DirEncryptService"

    const-string p2, "Cannot save the policy if SD card is being encrypted/decrypted"

    .line 513
    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/16 p0, 0xf

    .line 515
    monitor-exit p1

    return p0

    :cond_aa
    const-string v5, "DirEncryptService"

    .line 518
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Called by: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    invoke-virtual {p0, p3}, Lcom/android/server/DirEncryptService;->authByUid(I)Z

    move-result p3

    const/16 v5, 0x8

    if-eqz p3, :cond_de

    const-string/jumbo p3, "user"

    .line 520
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d3

    :goto_d1
    move v1, v5

    goto :goto_e8

    :cond_d3
    if-ne v0, v4, :cond_d6

    goto :goto_d1

    :cond_d6
    const-string p2, "DirEncryptService"

    const-string p3, "Do not need to disable SD card encryption policy by EAS/MDM requests"

    .line 526
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e8

    :cond_de
    const-string p2, "DirEncryptService"

    const-string/jumbo p3, "setStorageCardEncryptionPolicy error: invalid uid"

    .line 530
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x9

    .line 533
    :goto_e8
    invoke-virtual {p0}, Lcom/android/server/DirEncryptService;->moveDumpstate()Z

    .line 534
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 535
    monitor-exit p1

    return v1

    :catchall_f0
    move-exception p0

    monitor-exit p1
    :try_end_f2
    .catchall {:try_start_52 .. :try_end_f2} :catchall_f0

    throw p0
.end method

.method public systemReady()V
    .registers 6

    const-string v0, "DirEncryptService"

    const-string v1, "Calling systemReady"

    .line 186
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-static {}, Lcom/samsung/android/security/SemSdCardEncryption;->isEncryptionFeatureEnabled()Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    .line 192
    :cond_e
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mPm:Landroid/content/pm/PackageManager;

    .line 193
    iget-object v1, p0, Lcom/android/server/DirEncryptService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 197
    :try_start_25
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 198
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 199
    new-instance v1, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;-><init>(Lcom/android/server/DirEncryptService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/DirEncryptService;->mHandler:Lcom/android/server/DirEncryptService$DirEncryptServiceHandler;

    .line 201
    iget-object v2, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {v2, v1}, Lcom/android/server/DirEncryptServiceHelper;->setExecParams(Landroid/os/Handler;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_41} :catch_42

    goto :goto_5e

    :catch_42
    move-exception v1

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HandlerThread exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 204
    iput-boolean v0, p0, Lcom/android/server/DirEncryptService;->mReady:Z

    .line 207
    :goto_5e
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->registerStorageEventListener()Z

    return-void
.end method

.method public unmountSDCardByAdmin()V
    .registers 1

    .line 657
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {p0}, Lcom/android/server/DirEncryptServiceHelper;->unmountSDCardByAdmin()V

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V
    .registers 2

    .line 420
    iget-object p0, p0, Lcom/android/server/DirEncryptService;->mHelper:Lcom/android/server/DirEncryptServiceHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/DirEncryptServiceHelper;->unregisterListener(Lcom/samsung/android/security/IDirEncryptServiceListener;)V

    return-void
.end method
