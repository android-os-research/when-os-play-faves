.class Lcom/android/server/spay/TAController;
.super Landroid/spay/ITAController$Stub;
.source "TAController.java"


# static fields
.field private static final CMD_ABORT_MST:I = 0x3

.field private static final CMD_MOVE_SEC_OS_CORE0:I = 0x6

.field private static final CMD_MOVE_SEC_OS_CORE4:I = 0x5

.field private static final CMD_MST_OFF:I = 0x2

.field private static final CMD_MST_ON:I = 0x1

.field private static final CMD_RESET_MST:I = 0x4

.field private static final DEBUG:Z

.field private static final FILE_MIGRATE_SEC_OS:Ljava/lang/String; = "/sys/devices/system/sec_os_ctrl/migrate_os"

.field private static final FILE_MST_INTERRUPT:Ljava/lang/String; = "/dev/mst_ctrl"

.field private static final FILE_MST_POWER_ON_OFF:Ljava/lang/String; = "/sys/class/mstldo/mst_drv/transmit"

.field private static final SPAY_TUI_CMD_QSEE_START_SECURE_UI:I = 0x90190

.field private static final TAG:Ljava/lang/String; = "PaymentManagerService"


# instance fields
.field public SET_QSEE_SECURE_UI:Z

.field private mContext:Landroid/content/Context;

.field private mNative:Lcom/android/server/spay/PaymentTZNative;

.field private mTAId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 47
    sget-boolean v0, Lcom/android/server/spay/PaymentManagerService;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/spay/PaymentTZServiceConfig$TAConfig;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "taId"    # I
    .param p3, "config"    # Landroid/spay/PaymentTZServiceConfig$TAConfig;

    .line 49
    invoke-direct {p0}, Landroid/spay/ITAController$Stub;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 50
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAController constructor: taId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; maxSendCmdSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; maxRecvRespSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_3a
    iput-object p1, p0, Lcom/android/server/spay/TAController;->mContext:Landroid/content/Context;

    .line 52
    iput p2, p0, Lcom/android/server/spay/TAController;->mTAId:I

    .line 53
    new-instance v0, Lcom/android/server/spay/PaymentTZNative;

    iget-object v4, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    iget-object v5, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    iget-object v6, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    iget v7, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    iget v8, p3, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    move-object v2, v0

    move v3, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/server/spay/PaymentTZNative;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    .line 54
    return-void
.end method

.method private makeSysCallInternal(I)Z
    .registers 12
    .param p1, "cmd"    # I

    .line 138
    const/4 v0, 0x0

    .line 141
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 142
    .local v1, "fw":Ljava/io/FileWriter;
    const/4 v2, 0x0

    .line 144
    .local v2, "bw":Ljava/io/BufferedWriter;
    const/4 v3, 0x0

    const-string v4, "PaymentManagerService"

    packed-switch p1, :pswitch_data_ea

    .line 170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UNKNOWN Command ID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return v3

    .line 166
    :pswitch_20
    const-string v5, "/sys/devices/system/sec_os_ctrl/migrate_os"

    .line 167
    .local v5, "filename":Ljava/lang/String;
    const-string v6, "L0"

    .line 168
    .local v6, "data":Ljava/lang/String;
    goto :goto_3e

    .line 162
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    :pswitch_25
    const-string v5, "/sys/devices/system/sec_os_ctrl/migrate_os"

    .line 163
    .restart local v5    # "filename":Ljava/lang/String;
    const-string v6, "b0"

    .line 164
    .restart local v6    # "data":Ljava/lang/String;
    goto :goto_3e

    .line 158
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    :pswitch_2a
    const-string v5, "/dev/mst_ctrl"

    .line 159
    .restart local v5    # "filename":Ljava/lang/String;
    const-string v6, "0"

    .line 160
    .restart local v6    # "data":Ljava/lang/String;
    goto :goto_3e

    .line 154
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    :pswitch_2f
    const-string v5, "/dev/mst_ctrl"

    .line 155
    .restart local v5    # "filename":Ljava/lang/String;
    const-string v6, "1"

    .line 156
    .restart local v6    # "data":Ljava/lang/String;
    goto :goto_3e

    .line 150
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    :pswitch_34
    const-string v5, "/sys/class/mstldo/mst_drv/transmit"

    .line 151
    .restart local v5    # "filename":Ljava/lang/String;
    const-string v6, "0"

    .line 152
    .restart local v6    # "data":Ljava/lang/String;
    goto :goto_3e

    .line 146
    .end local v5    # "filename":Ljava/lang/String;
    .end local v6    # "data":Ljava/lang/String;
    :pswitch_39
    const-string v5, "/sys/class/mstldo/mst_drv/transmit"

    .line 147
    .restart local v5    # "filename":Ljava/lang/String;
    const-string v6, "1"

    .line 148
    .restart local v6    # "data":Ljava/lang/String;
    nop

    .line 174
    :goto_3e
    sget-boolean v7, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v7, :cond_62

    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Writting \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" to -> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_62
    :try_start_62
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    .line 180
    new-instance v7, Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v1, v7

    .line 181
    new-instance v7, Ljava/io/BufferedWriter;

    invoke-direct {v7, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v2, v7

    .line 182
    invoke-virtual {v2, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_62 .. :try_end_7b} :catch_92
    .catchall {:try_start_62 .. :try_end_7b} :catchall_90

    .line 190
    nop

    .line 191
    :try_start_7c
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80

    .line 195
    goto :goto_84

    .line 193
    :catch_80
    move-exception v3

    .line 194
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 197
    .end local v3    # "e":Ljava/io/IOException;
    :goto_84
    nop

    .line 198
    :try_start_85
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_88} :catch_89

    .line 202
    goto :goto_8e

    .line 200
    :catch_89
    move-exception v3

    .line 201
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 203
    .end local v3    # "e":Ljava/io/IOException;
    nop

    .line 204
    :goto_8e
    const/4 v3, 0x1

    return v3

    .line 189
    :catchall_90
    move-exception v3

    goto :goto_d0

    .line 183
    :catch_92
    move-exception v7

    .line 184
    .local v7, "e":Ljava/io/IOException;
    :try_start_93
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error writting \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" to file -> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b6
    .catchall {:try_start_93 .. :try_end_b6} :catchall_90

    .line 186
    nop

    .line 190
    if-eqz v2, :cond_c2

    .line 191
    :try_start_b9
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_bc
    .catch Ljava/io/IOException; {:try_start_b9 .. :try_end_bc} :catch_bd

    goto :goto_c2

    .line 193
    :catch_bd
    move-exception v4

    .line 194
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c3

    .line 195
    .end local v4    # "e":Ljava/io/IOException;
    :cond_c2
    :goto_c2
    nop

    .line 197
    :goto_c3
    if-eqz v1, :cond_ce

    .line 198
    :try_start_c5
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_c8
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_c8} :catch_c9

    goto :goto_ce

    .line 200
    :catch_c9
    move-exception v4

    .line 201
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_cf

    .line 202
    .end local v4    # "e":Ljava/io/IOException;
    :cond_ce
    :goto_ce
    nop

    .line 186
    :goto_cf
    return v3

    .line 190
    .end local v7    # "e":Ljava/io/IOException;
    :goto_d0
    if-eqz v2, :cond_db

    .line 191
    :try_start_d2
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_d5
    .catch Ljava/io/IOException; {:try_start_d2 .. :try_end_d5} :catch_d6

    goto :goto_db

    .line 193
    :catch_d6
    move-exception v4

    .line 194
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_dc

    .line 195
    .end local v4    # "e":Ljava/io/IOException;
    :cond_db
    :goto_db
    nop

    .line 197
    :goto_dc
    if-eqz v1, :cond_e7

    .line 198
    :try_start_de
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_e1
    .catch Ljava/io/IOException; {:try_start_de .. :try_end_e1} :catch_e2

    goto :goto_e7

    .line 200
    :catch_e2
    move-exception v4

    .line 201
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e8

    .line 202
    .end local v4    # "e":Ljava/io/IOException;
    :cond_e7
    :goto_e7
    nop

    .line 203
    :goto_e8
    throw v3

    nop

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_39
        :pswitch_34
        :pswitch_2f
        :pswitch_2a
        :pswitch_25
        :pswitch_20
    .end packed-switch
.end method


# virtual methods
.method public checkCertInfo(Ljava/util/List;)Landroid/spay/CertInfo;
    .registers 7
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

    .line 216
    .local p1, "certFilePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "checkCertInfo"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 217
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_10

    const-string v0, "PaymentManagerService"

    const-string v1, "TAController::checkCertInfo: Lets fetch them if exist"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_10
    new-instance v0, Landroid/spay/CertInfo;

    invoke-direct {v0}, Landroid/spay/CertInfo;-><init>()V

    .line 219
    .local v0, "certInfo":Landroid/spay/CertInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 220
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    .local v2, "certPath":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/spay/Utils;->readFile(Ljava/lang/String;)[B

    move-result-object v3

    .line 222
    .local v3, "certSign":[B
    iget-object v4, v0, Landroid/spay/CertInfo;->mCerts:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .end local v2    # "certPath":Ljava/lang/String;
    .end local v3    # "certSign":[B
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 224
    .end local v1    # "i":I
    :cond_2e
    return-object v0
.end method

.method public clearDeviceCertificates(Ljava/lang/String;)Z
    .registers 4
    .param p1, "certFolderPath"    # Ljava/lang/String;

    .line 209
    const-string v0, "clearDeviceCertificates"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TAController::clearDeviceCertificates: Deleting the device certificates for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PaymentManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/spay/Utils;->deleteDirectory(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method public loadTA(Landroid/os/ParcelFileDescriptor;JJ)Z
    .registers 15
    .param p1, "pFd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "offset"    # J
    .param p4, "size"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    const-string v0, "loadTA"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 78
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    const-string v1, "PaymentManagerService"

    if-eqz v0, :cond_10

    const-string v2, "TAController::loadTA"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_10
    if-nez p1, :cond_14

    .line 80
    const/4 v0, 0x0

    return v0

    .line 82
    :cond_14
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v8

    .line 83
    .local v8, "fdInt":I
    if-eqz v0, :cond_44

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TA fd="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " offset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_44
    :try_start_44
    iget-object v1, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    iget-object v2, p0, Lcom/android/server/spay/TAController;->mContext:Landroid/content/Context;

    move v3, v8

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/spay/PaymentTZNative;->loadTA(Landroid/content/Context;IJJ)Z

    move-result v0
    :try_end_4f
    .catchall {:try_start_44 .. :try_end_4f} :catchall_5a

    .line 88
    if-eqz p1, :cond_59

    .line 90
    :try_start_51
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_55

    .line 93
    goto :goto_59

    .line 91
    :catch_55
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    .end local v1    # "e":Ljava/io/IOException;
    :cond_59
    :goto_59
    return v0

    .line 88
    :catchall_5a
    move-exception v0

    if-eqz p1, :cond_65

    .line 90
    :try_start_5d
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_61

    .line 93
    goto :goto_65

    .line 91
    :catch_61
    move-exception v1

    .line 92
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 95
    .end local v1    # "e":Ljava/io/IOException;
    :cond_65
    :goto_65
    throw v0
.end method

.method public makeSystemCall(I)Z
    .registers 10
    .param p1, "cmd"    # I

    .line 110
    const/4 v0, 0x0

    .line 111
    .local v0, "process":Ljava/lang/Process;
    sget-boolean v1, Lcom/android/server/spay/TAController;->DEBUG:Z

    const-string v2, "PaymentManagerService"

    if-eqz v1, :cond_c

    .line 112
    const-string v3, "entered makeSystemCall in TAController - System Server process"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_c
    const-string v3, "makeSystemCall"

    invoke-static {v3}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 117
    const-string v3, " ms"

    const/4 v4, 0x0

    if-eqz v1, :cond_34

    .line 118
    :try_start_16
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "makesystemcall - start time: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_34
    invoke-direct {p0, p1}, Lcom/android/server/spay/TAController;->makeSysCallInternal(I)Z

    move-result v5

    if-nez v5, :cond_40

    .line 122
    const-string v1, "makeSystemCall: failed to make system call"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v4

    .line 126
    :cond_40
    if-eqz v1, :cond_60

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "makeSystemCall: Successful, end time : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_60} :catch_62

    .line 129
    :cond_60
    const/4 v1, 0x1

    return v1

    .line 130
    :catch_62
    move-exception v1

    .line 131
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    return v4
.end method

.method public processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;
    .registers 5
    .param p1, "request"    # Landroid/spay/TACommandRequest;

    .line 58
    invoke-virtual {p0}, Lcom/android/server/spay/TAController;->isBinderAlive()Z

    move-result v0

    if-eqz v0, :cond_58

    .line 59
    monitor-enter p0

    .line 60
    :try_start_7
    const-string v0, "processTACommand"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 61
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_40

    const-string v0, "PaymentManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TAController::processTACommand: request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; request.mCommandId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/spay/TACommandRequest;->mCommandId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; this.mTAId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/spay/TAController;->mTAId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_40
    iget v0, p1, Landroid/spay/TACommandRequest;->mCommandId:I

    const v1, 0x90190

    if-ne v0, v1, :cond_4a

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 65
    :cond_4a
    iget-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    invoke-virtual {v0, p1}, Lcom/android/server/spay/PaymentTZNative;->processTACommand(Landroid/spay/TACommandRequest;)Landroid/spay/TACommandResponse;

    move-result-object v0

    .line 66
    .local v0, "result":Landroid/spay/TACommandResponse;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 67
    monitor-exit p0

    return-object v0

    .line 68
    .end local v0    # "result":Landroid/spay/TACommandResponse;
    :catchall_55
    move-exception v0

    monitor-exit p0
    :try_end_57
    .catchall {:try_start_7 .. :try_end_57} :catchall_55

    throw v0

    .line 70
    :cond_58
    const-string v0, "PaymentManagerService"

    const-string v1, "binder for cmd is died"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    const/4 v0, 0x0

    return-object v0
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

    .line 101
    :try_start_1
    const-string v0, "unloadTA"

    invoke-static {v0}, Lcom/android/server/spay/PaymentManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I

    .line 102
    sget-boolean v0, Lcom/android/server/spay/TAController;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "PaymentManagerService"

    const-string v1, "TAController::unloadTA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/spay/TAController;->SET_QSEE_SECURE_UI:Z

    .line 104
    iget-object v0, p0, Lcom/android/server/spay/TAController;->mNative:Lcom/android/server/spay/PaymentTZNative;

    invoke-virtual {v0}, Lcom/android/server/spay/PaymentTZNative;->unloadTA()V

    .line 105
    monitor-exit p0

    .line 106
    return-void

    .line 105
    :catchall_1b
    move-exception v0

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_1b

    throw v0
.end method
