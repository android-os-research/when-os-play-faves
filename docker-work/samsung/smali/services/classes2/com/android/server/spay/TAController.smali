.class public Lcom/android/server/spay/TAController;
.super Landroid/spay/ITAController$Stub;
.source "TAController.java"


# static fields
.field public static final CMD_ABORT_MST:I = 0x3

.field public static final CMD_MOVE_SEC_OS_CORE0:I = 0x6

.field public static final CMD_MOVE_SEC_OS_CORE4:I = 0x5

.field public static final CMD_MST_OFF:I = 0x2

.field public static final CMD_MST_ON:I = 0x1

.field public static final CMD_RESET_MST:I = 0x4

.field public static final DEBUG:Z

.field public static final FILE_MIGRATE_SEC_OS:Ljava/lang/String; = "/sys/devices/system/sec_os_ctrl/migrate_os"

.field public static final FILE_MST_INTERRUPT:Ljava/lang/String; = "/dev/mst_ctrl"

.field public static final FILE_MST_POWER_ON_OFF:Ljava/lang/String; = "/sys/class/mstldo/mst_drv/transmit"

.field public static final SPAY_TUI_CMD_QSEE_START_SECURE_UI:I = 0x90190

.field public static final TAG:Ljava/lang/String; = "PaymentManagerService"


# instance fields
.field public SET_QSEE_SECURE_UI:Z

.field public mContext:Landroid/content/Context;

.field public mNative:Lcom/android/server/spay/PaymentTZNative;

.field public mTAId:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 47
    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V
    .registers 13

    .line 49
    invoke-direct {p0}, Landroid/spay/ITAController$Stub;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 50
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAController constructor: taId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; maxSendCmdSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; maxRecvRespSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_34
    iput-object p1, p0, Lcom/android/server/spay/TAController;->mContext:Landroid/content/Context;

    .line 52
    iput p2, p0, Lcom/android/server/spay/TAController;->mTAId:I

    .line 53
    new-instance p1, Lcom/android/server/spay/PaymentTZNative;

    iget-object v4, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    iget-object v5, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    iget-object v6, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    iget v7, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    iget v8, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/spay/PaymentTZNative;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object p1, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    return-void
.end method


# virtual methods
.method public checkCertInfo(Ljava/util/List;)Landroid/spay/CertInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/spay/CertInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string p0, "checkCertInfo"

    .line 216
    invoke-static {p0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 217
    sget-boolean p0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz p0, :cond_10

    const-string p0, "PaymentManagerService"

    const-string v0, "TAController::checkCertInfo: Lets fetch them if exist"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_10
    new-instance p0, Landroid/spay/CertInfo;

    invoke-direct {p0}, Landroid/spay/CertInfo;-><init>()V

    const/4 v0, 0x0

    .line 219
    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 220
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 221
    invoke-static {v1}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v2

    .line 222
    iget-object v3, p0, Landroid/spay/CertInfo;->mCerts:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2e
    return-object p0
.end method

.method public clearDeviceCertificates(Ljava/lang/String;)Z
    .registers 3

    const-string p0, "clearDeviceCertificates"

    .line 209
    invoke-static {p0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 210
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TAController::clearDeviceCertificates: Deleting the device certificates for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PaymentManagerService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/spay/Utils;->deleteDirectory(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method public loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "loadTA"

    .line 77
    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 78
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    const-string v1, "PaymentManagerService"

    if-eqz v0, :cond_10

    const-string v2, "TAController::loadTA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    if-nez p1, :cond_14

    const/4 p0, 0x0

    return p0

    .line 82
    :cond_14
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v2

    if-eqz v0, :cond_3e

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TA fd="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " offset="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_3e
    :try_start_3e
    iget-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    iget-object v1, p0, Lcom/android/server/spay/TAController;->mContext:Landroid/content/Context;

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/spay/PaymentTZNative;->loadTA(Landroid/content/Context;IJJ)Z

    move-result p0
    :try_end_48
    .catchall {:try_start_3e .. :try_end_48} :catchall_51

    .line 90
    :try_start_48
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4b
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4b} :catch_4c

    goto :goto_50

    :catch_4c
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_50
    return p0

    :catchall_51
    move-exception p0

    .line 90
    :try_start_52
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 95
    :goto_5a
    throw p0
.end method

.method public final makeSysCallInternal(I)Z
    .registers 10

    const/4 p0, 0x0

    const-string v0, "/sys/devices/system/sec_os_ctrl/migrate_os"

    const-string v1, "/dev/mst_ctrl"

    const-string v2, "0"

    const-string v3, "1"

    const-string v4, "/sys/class/mstldo/mst_drv/transmit"

    const-string v5, "PaymentManagerService"

    packed-switch p1, :pswitch_data_d6

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN Command ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :pswitch_25
    const-string v2, "L0"

    goto :goto_32

    :pswitch_28
    const-string v2, "b0"

    goto :goto_32

    :pswitch_2b
    move-object v0, v1

    goto :goto_32

    :pswitch_2d
    move-object v0, v1

    move-object v2, v3

    goto :goto_32

    :pswitch_30
    move-object v2, v3

    :pswitch_31
    move-object v0, v4

    .line 174
    :goto_32
    sget-boolean p1, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz p1, :cond_52

    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Writting \""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" to -> "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_52
    const/4 p1, 0x0

    .line 179
    :try_start_53
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    new-instance v3, Ljava/io/FileWriter;

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_61} :catch_87
    .catchall {:try_start_53 .. :try_end_61} :catchall_84

    .line 181
    :try_start_61
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_66} :catch_7f
    .catchall {:try_start_61 .. :try_end_66} :catchall_7d

    .line 182
    :try_start_66
    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_7b
    .catchall {:try_start_66 .. :try_end_69} :catchall_bf

    .line 191
    :try_start_69
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception p0

    .line 194
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 198
    :goto_71
    :try_start_71
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75

    goto :goto_79

    :catch_75
    move-exception p0

    .line 201
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_79
    const/4 p0, 0x1

    return p0

    :catch_7b
    move-exception p1

    goto :goto_8b

    :catchall_7d
    move-exception p0

    goto :goto_c1

    :catch_7f
    move-exception v1

    move-object v7, v1

    move-object v1, p1

    move-object p1, v7

    goto :goto_8b

    :catchall_84
    move-exception p0

    move-object v3, p1

    goto :goto_c1

    :catch_87
    move-exception v1

    move-object v3, p1

    move-object p1, v1

    move-object v1, v3

    .line 184
    :goto_8b
    :try_start_8b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error writting \""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" to file -> "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_aa
    .catchall {:try_start_8b .. :try_end_aa} :catchall_bf

    if-eqz v1, :cond_b4

    .line 191
    :try_start_ac
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_af
    .catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b0

    goto :goto_b4

    :catch_b0
    move-exception p1

    .line 194
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_b4
    :goto_b4
    if-eqz v3, :cond_be

    .line 198
    :try_start_b6
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_be

    :catch_ba
    move-exception p1

    .line 201
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_be
    :goto_be
    return p0

    :catchall_bf
    move-exception p0

    move-object p1, v1

    :goto_c1
    if-eqz p1, :cond_cb

    .line 191
    :try_start_c3
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_c7

    goto :goto_cb

    :catch_c7
    move-exception p1

    .line 194
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_cb
    :goto_cb
    if-eqz v3, :cond_d5

    .line 198
    :try_start_cd
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d1

    goto :goto_d5

    :catch_d1
    move-exception p1

    .line 201
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 203
    :cond_d5
    :goto_d5
    throw p0

    :pswitch_data_d6
    .packed-switch 0x1
        :pswitch_30
        :pswitch_31
        :pswitch_2d
        :pswitch_2b
        :pswitch_28
        :pswitch_25
    .end packed-switch
.end method

.method public makeSystemCall(I)Z
    .registers 9

    .line 111
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    const-string v1, "PaymentManagerService"

    if-eqz v0, :cond_b

    const-string v2, "entered makeSystemCall in TAController - System Server process"

    .line 112
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string v2, "makeSystemCall"

    .line 115
    invoke-static {v2}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    const-string v2, " ms"

    const/4 v3, 0x0

    if-eqz v0, :cond_30

    .line 118
    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makesystemcall - start time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_30
    invoke-virtual {p0, p1}, Lcom/android/server/spay/TAController;->makeSysCallInternal(I)Z

    move-result p0

    if-nez p0, :cond_3c

    const-string p0, "makeSystemCall: failed to make system call"

    .line 122
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_3c
    if-eqz v0, :cond_59

    .line 127
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "makeSystemCall: Successful, end time : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_59} :catch_5b

    :cond_59
    const/4 p0, 0x1

    return p0

    :catch_5b
    move-exception p0

    .line 131
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v3
.end method

.method public processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .registers 5

    .line 58
    invoke-virtual {p0}, Landroid/spay/ITAController$Stub;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 59
    monitor-enter p0

    :try_start_7
    const-string/jumbo v0, "processTACommand"

    .line 60
    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 61
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_3b

    const-string v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAController::processTACommand: request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; request.mCommandId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/spay/TACommandRequest;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; this.mTAId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/spay/TAController;->mTAId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_3b
    iget v0, p1, Landroid/spay/TACommandRequest;->mCommandId:I

    const v1, 0x90190

    if-ne v0, v1, :cond_45

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 65
    :cond_45
    iget-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    invoke-virtual {v0, p1}, Lcom/android/server/spay/PaymentTZNative;->processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;

    move-result-object p1

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 67
    monitor-exit p0

    return-object p1

    :catchall_50
    move-exception p1

    .line 68
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_7 .. :try_end_52} :catchall_50

    throw p1

    :cond_53
    const-string p0, "PaymentManagerService"

    const-string p1, "binder for cmd is died"

    .line 70
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public unloadTA()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 100
    monitor-enter p0

    :try_start_1
    const-string/jumbo v0, "unloadTA"

    .line 101
    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 102
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "PaymentManagerService"

    const-string v1, "TAController::unloadTA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 104
    iget-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    invoke-virtual {v0}, Lcom/android/server/spay/PaymentTZNative;->unloadTA()V

    .line 105
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method
