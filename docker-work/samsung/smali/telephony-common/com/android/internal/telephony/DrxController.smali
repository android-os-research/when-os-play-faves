.class public final Lcom/android/internal/telephony/DrxController;
.super Landroid/os/Handler;
.source "DrxController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DrxController$GetDrxThread;,
        Lcom/android/internal/telephony/DrxController$ChangeDrxThread;
    }
.end annotation


# static fields
.field protected static final blacklist ATT_PK_NAME:Ljava/lang/String; = "com.att.eptt"

.field protected static final blacklist DEFAULT_CYCLE:I = 0x500

.field protected static final blacklist DRX_CN6_T32:I = 0x6

.field protected static final blacklist DRX_CN7_T64:I = 0x7

.field protected static final blacklist DRX_CN8_T128:I = 0x8

.field protected static final blacklist DRX_CN9_T256:I = 0x9

.field protected static final blacklist DRX_CURRENT_CYCLE_FAIL:I

.field protected static final blacklist DRX_CYCLE_CN6_T32:I = 0x140

.field protected static final blacklist DRX_CYCLE_CN7_T64:I = 0x280

.field protected static final blacklist DRX_CYCLE_CN8_T128:I = 0x500

.field protected static final blacklist DRX_CYCLE_CN9_T256:I = 0xa00

.field protected static final blacklist DRX_CYCLE_CURRENT_CYCLE_FAIL:I = 0x500

.field protected static final blacklist DRX_CYCLE_NO_DRX:I = 0x0

.field protected static final blacklist DRX_DEFAULT:I = 0x0

.field protected static final blacklist DRX_LIBRARY_TYPE_MCPTT:I = 0x2

.field protected static final blacklist DRX_LIBRARY_TYPE_PTT:I = 0x1

.field protected static final blacklist SIGN_SHA256_KODIAK:Ljava/lang/String; = "48:25:91:ff:3e:38:68:45:b3:25:68:d9:d1:21:f9:24:ce:c0:2c:9d:24:70:c9:c9:f0:fa:09:89:6d:4f:cf:de"

.field protected static final blacklist SUPPORTED_CYCLES:[I

.field protected static final blacklist TMO_PK_NAME:Ljava/lang/String; = "com.sprint.sdcplus"

.field protected static final blacklist VZW_MCPTT_ACCESS_PERMISSION:Ljava/lang/String; = "com.verizon.mcptt.API_ACCESS"

.field protected static final blacklist VZW_MCPTT_NO_PERMISSION_ERROR_MESSAGE:Ljava/lang/String; = "Requires MCPTT access permission"

.field protected static final blacklist VZW_PTT_ACCESS_PERMISSION:Ljava/lang/String; = "com.verizon.ptt.API_ACCESS"

.field protected static final blacklist VZW_PTT_NO_PERMISSION_ERROR_MESSAGE:Ljava/lang/String; = "Requires PTT access permission"


# instance fields
.field private blacklist mBackToDefaultIntent:Landroid/app/PendingIntent;

.field private blacklist mCurrentDrx:I

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mNewDrx:I

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;

.field private blacklist mSyncDrx:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/DrxController;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/DrxController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mchangeDrxToDefault(Lcom/android/internal/telephony/DrxController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/telephony/DrxController;->changeDrxToDefault()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 41
    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/internal/telephony/DrxController;->SUPPORTED_CYCLES:[I

    const/16 v0, 0x500

    .line 45
    invoke-static {v0}, Lcom/android/internal/telephony/DrxController;->drxCycleToCn(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/DrxController;->DRX_CURRENT_CYCLE_FAIL:I

    return-void

    nop

    :array_12
    .array-data 4
        0x0
        0x140
        0x280
        0x500
        0xa00
    .end array-data
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 3

    .line 100
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/android/internal/telephony/DrxController;->mBackToDefaultIntent:Landroid/app/PendingIntent;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DrxController;->mSyncDrx:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/android/internal/telephony/DrxController;->mNewDrx:I

    .line 74
    iput v0, p0, Lcom/android/internal/telephony/DrxController;->mCurrentDrx:I

    .line 84
    new-instance v0, Lcom/android/internal/telephony/DrxController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DrxController$1;-><init>(Lcom/android/internal/telephony/DrxController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DrxController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    iput-object p1, p0, Lcom/android/internal/telephony/DrxController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 103
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "com.samsung.intent.action.ACTION_DRX_BACK_TO_DEFAULT"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/DrxController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist changeDrxToDefault()V
    .registers 6

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController;->mSyncDrx:Ljava/lang/Object;

    monitor-enter v0

    .line 162
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController;->mBackToDefaultIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_e

    const-string v1, "changeDrxToDefault - Unexpected. it\'s already canceled"

    .line 163
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    .line 164
    monitor-exit v0

    return-void

    .line 166
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_4b

    const/16 v0, 0x500

    .line 168
    invoke-static {v0}, Lcom/android/internal/telephony/DrxController;->drxCycleToCn(I)I

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController;->mSyncDrx:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 171
    :try_start_19
    iput-object v2, p0, Lcom/android/internal/telephony/DrxController;->mBackToDefaultIntent:Landroid/app/PendingIntent;

    .line 173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDrxToDefault - Revert to default DRX cycle. default: 1280("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "), elapsedRealtime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    .line 175
    new-instance v2, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;-><init>(Lcom/android/internal/telephony/DrxController;)V

    .line 176
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 177
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->changeDRX(I)Z

    .line 178
    monitor-exit v1

    return-void

    :catchall_48
    move-exception p0

    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_19 .. :try_end_4a} :catchall_48

    throw p0

    :catchall_4b
    move-exception p0

    .line 166
    :try_start_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method private static blacklist cnToDrxCycle(I)I
    .registers 1

    if-eqz p0, :cond_13

    packed-switch p0, :pswitch_data_16

    const/4 p0, -0x1

    goto :goto_14

    :pswitch_7
    const/16 p0, 0xa00

    goto :goto_14

    :pswitch_a
    const/16 p0, 0x500

    goto :goto_14

    :pswitch_d
    const/16 p0, 0x280

    goto :goto_14

    :pswitch_10
    const/16 p0, 0x140

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0

    nop

    :pswitch_data_16
    .packed-switch 0x6
        :pswitch_10
        :pswitch_d
        :pswitch_a
        :pswitch_7
    .end packed-switch
.end method

.method private static blacklist drxCycleToCn(I)I
    .registers 2

    if-eqz p0, :cond_1e

    const/16 v0, 0x140

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x280

    if-eq p0, v0, :cond_1a

    const/16 v0, 0x500

    if-eq p0, v0, :cond_17

    const/16 v0, 0xa00

    if-eq p0, v0, :cond_14

    const/4 p0, -0x1

    goto :goto_1f

    :cond_14
    const/16 p0, 0x9

    goto :goto_1f

    :cond_17
    const/16 p0, 0x8

    goto :goto_1f

    :cond_1a
    const/4 p0, 0x7

    goto :goto_1f

    :cond_1c
    const/4 p0, 0x6

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/DrxController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DrxController"

    invoke-static {p1, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .registers 4

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/DrxController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DrxController"

    invoke-static {p1, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist sendGetDrx()Z
    .registers 8

    const-string v0, "Exception during sendGetDrx #3: "

    const-string v1, "Exception during sendGetDrx #2: "

    const-string v2, "sendGetDrx"

    .line 567
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    .line 570
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 571
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x2

    .line 573
    :try_start_14
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v5, 0x2c

    .line 574
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v5, 0x4

    .line 575
    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 576
    iget-object v5, p0, Lcom/android/internal/telephony/DrxController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v5, v6, v4}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_2d} :catch_5f
    .catchall {:try_start_14 .. :try_end_2d} :catchall_5d

    const/4 v4, 0x1

    .line 582
    :try_start_2e
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_45

    :catch_32
    move-exception v3

    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    .line 587
    :goto_45
    :try_start_45
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_48
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_a3

    :catch_49
    move-exception v1

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    goto :goto_a3

    :catchall_5d
    move-exception v4

    goto :goto_a4

    :catch_5f
    move-exception v4

    .line 579
    :try_start_60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception during sendGetDrx #1: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V
    :try_end_74
    .catchall {:try_start_60 .. :try_end_74} :catchall_5d

    .line 582
    :try_start_74
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78

    goto :goto_8b

    :catch_78
    move-exception v3

    .line 584
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    .line 587
    :goto_8b
    :try_start_8b
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8e
    .catch Ljava/io/IOException; {:try_start_8b .. :try_end_8e} :catch_8f

    goto :goto_a2

    :catch_8f
    move-exception v1

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    :goto_a2
    const/4 v4, 0x0

    :goto_a3
    return v4

    .line 582
    :goto_a4
    :try_start_a4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_a7
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a7} :catch_a8

    goto :goto_bb

    :catch_a8
    move-exception v3

    .line 584
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    .line 587
    :goto_bb
    :try_start_bb
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_bf

    goto :goto_d2

    :catch_bf
    move-exception v1

    .line 589
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    .line 591
    :goto_d2
    throw v4
.end method

.method private blacklist sendSetDrx(I)Z
    .registers 9

    const-string v0, "Exception during sendSetDrx #3: "

    const-string v1, "Exception during sendSetDrx #2: "

    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSetDrx - value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    .line 535
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 536
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 538
    :try_start_24
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v4, 0x2d

    .line 539
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v4, 0x5

    .line 540
    invoke-virtual {v3, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 541
    invoke-virtual {v3, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 542
    iget-object p1, p0, Lcom/android/internal/telephony/DrxController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p1, v4, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_40} :catch_71
    .catchall {:try_start_24 .. :try_end_40} :catchall_6f

    .line 548
    :try_start_40
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    goto :goto_57

    :catch_44
    move-exception p1

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    .line 553
    :goto_57
    :try_start_57
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5a
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_5a} :catch_5b

    goto :goto_b5

    :catch_5b
    move-exception p1

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    goto :goto_b5

    :catchall_6f
    move-exception p1

    goto :goto_b6

    :catch_71
    move-exception p1

    .line 545
    :try_start_72
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during sendSetDrx #1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V
    :try_end_86
    .catchall {:try_start_72 .. :try_end_86} :catchall_6f

    .line 548
    :try_start_86
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_8a

    goto :goto_9d

    :catch_8a
    move-exception p1

    .line 550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    .line 553
    :goto_9d
    :try_start_9d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1

    goto :goto_b4

    :catch_a1
    move-exception p1

    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    :goto_b4
    const/4 v5, 0x0

    :goto_b5
    return v5

    .line 548
    :goto_b6
    :try_start_b6
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V
    :try_end_b9
    .catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_ba

    goto :goto_cd

    :catch_ba
    move-exception v3

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    .line 553
    :goto_cd
    :try_start_cd
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_d0} :catch_d1

    goto :goto_e4

    :catch_d1
    move-exception v1

    .line 555
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    .line 557
    :goto_e4
    throw p1
.end method


# virtual methods
.method protected blacklist changeDRX(II)Z
    .registers 13

    const/4 v0, 0x0

    if-gez p2, :cond_20

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeDRX - duration is a negative value. cycle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", duration: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    return v0

    .line 114
    :cond_20
    invoke-static {p1}, Lcom/android/internal/telephony/DrxController;->drxCycleToCn(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_44

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeDRX - the cycle is not supported. cycle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", duration: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    return v0

    .line 120
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeDRX - cycle(cn): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "), duration: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    .line 122
    iget-object p1, p0, Lcom/android/internal/telephony/DrxController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "alarm"

    .line 123
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 127
    iget-object v3, p0, Lcom/android/internal/telephony/DrxController;->mSyncDrx:Ljava/lang/Object;

    monitor-enter v3

    .line 128
    :try_start_79
    iget-object v4, p0, Lcom/android/internal/telephony/DrxController;->mBackToDefaultIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_8a

    const-string v4, "changeDRX - Cancel previous DRX alarm"

    .line 129
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/android/internal/telephony/DrxController;->mBackToDefaultIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v4, 0x0

    .line 131
    iput-object v4, p0, Lcom/android/internal/telephony/DrxController;->mBackToDefaultIntent:Landroid/app/PendingIntent;

    .line 134
    :cond_8a
    new-instance v4, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;-><init>(Lcom/android/internal/telephony/DrxController;)V

    .line 135
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 136
    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->changeDRX(I)Z

    move-result v1

    if-eqz p2, :cond_100

    .line 139
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.ACTION_DRX_BACK_TO_DEFAULT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "phone"

    .line 140
    iget-object v6, p0, Lcom/android/internal/telephony/DrxController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v5, 0x4000000

    .line 142
    invoke-static {p1, v0, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/DrxController;->mBackToDefaultIntent:Landroid/app/PendingIntent;

    .line 144
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    int-to-long v8, p2

    mul-long/2addr v8, v6

    add-long/2addr v4, v8

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "changeDRX - DRX cycle will go back to default after "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " mins. elapsedRealtime: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ", triggerAt: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V
    :try_end_e4
    .catchall {:try_start_79 .. :try_end_e4} :catchall_102

    const/4 p1, 0x2

    .line 149
    :try_start_e5
    iget-object p2, p0, Lcom/android/internal/telephony/DrxController;->mBackToDefaultIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1, v4, v5, p2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V
    :try_end_ea
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_ea} :catch_eb
    .catchall {:try_start_e5 .. :try_end_ea} :catchall_102

    goto :goto_100

    :catch_eb
    move-exception p1

    .line 151
    :try_start_ec
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setExact is fail. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    .line 154
    :cond_100
    :goto_100
    monitor-exit v3

    return v1

    :catchall_102
    move-exception p0

    monitor-exit v3
    :try_end_104
    .catchall {:try_start_ec .. :try_end_104} :catchall_102

    throw p0
.end method

.method protected blacklist getCurrentCycle()I
    .registers 5

    const-string v0, "getCurrentCycle"

    .line 281
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController;->mSyncDrx:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_8
    new-instance v1, Lcom/android/internal/telephony/DrxController$GetDrxThread;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/DrxController$GetDrxThread;-><init>(Lcom/android/internal/telephony/DrxController;)V

    .line 287
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 288
    invoke-virtual {v1}, Lcom/android/internal/telephony/DrxController$GetDrxThread;->getActiveDrxCn()I

    move-result v1

    .line 289
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_54

    .line 291
    invoke-static {v1}, Lcom/android/internal/telephony/DrxController;->cnToDrxCycle(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_32

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentCycle - Unexpected. cn: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    const/16 v0, 0x500

    .line 297
    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentCycle - cycle(cn): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    return v0

    :catchall_54
    move-exception p0

    .line 289
    :try_start_55
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    throw p0
.end method

.method protected blacklist getDrxMode()I
    .registers 4

    .line 465
    iget v0, p0, Lcom/android/internal/telephony/DrxController;->mCurrentDrx:I

    const/4 v1, -0x1

    if-eqz v0, :cond_25

    packed-switch v0, :pswitch_data_46

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrxMode - invalid mode. mode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    goto :goto_26

    :pswitch_1d
    const/4 v1, 0x4

    goto :goto_26

    :pswitch_1f
    const/4 v1, 0x3

    goto :goto_26

    :pswitch_21
    const/4 v1, 0x2

    goto :goto_26

    :pswitch_23
    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 485
    :goto_26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDrxMode - cycle: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/DrxController;->mCurrentDrx:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", drxMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_46
    .packed-switch 0x6
        :pswitch_23
        :pswitch_21
        :pswitch_1f
        :pswitch_1d
    .end packed-switch
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 495
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4d

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1f

    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    goto :goto_67

    .line 510
    :cond_1f
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 511
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_47

    .line 513
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    const/4 v0, 0x0

    aget-byte p1, p1, v0

    .line 514
    iput p1, p0, Lcom/android/internal/telephony/DrxController;->mCurrentDrx:I

    .line 515
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "EVENT_GET_DRX_RESULT - cycle: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/internal/telephony/DrxController;->mCurrentDrx:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    goto :goto_67

    :cond_47
    const-string p1, "EVENT_GET_DRX_RESULT Fail"

    .line 517
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    goto :goto_67

    .line 497
    :cond_4d
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 498
    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_62

    const-string p1, "EVENT_SET_DRX_RESULT"

    .line 499
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    .line 501
    iget p1, p0, Lcom/android/internal/telephony/DrxController;->mNewDrx:I

    iput p1, p0, Lcom/android/internal/telephony/DrxController;->mCurrentDrx:I

    .line 503
    invoke-direct {p0}, Lcom/android/internal/telephony/DrxController;->sendGetDrx()Z

    goto :goto_67

    :cond_62
    const-string p1, "EVENT_SET_DRX_RESULT Fail"

    .line 505
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    :goto_67
    return-void
.end method

.method protected blacklist setDrxMode(I)Z
    .registers 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_30

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2e

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2c

    const/4 v2, 0x3

    if-eq p1, v2, :cond_29

    const/4 v2, 0x4

    if-eq p1, v2, :cond_26

    .line 441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDrxMode - invalid mode. mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/DrxController;->loge(Ljava/lang/String;)V

    move v2, v0

    goto :goto_31

    :cond_26
    const/16 v2, 0x9

    goto :goto_31

    :cond_29
    const/16 v2, 0x8

    goto :goto_31

    :cond_2c
    const/4 v2, 0x7

    goto :goto_31

    :cond_2e
    const/4 v2, 0x6

    goto :goto_31

    :cond_30
    move v2, v1

    .line 445
    :goto_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDrxMode - drxMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", newCycle: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    if-eq v2, v0, :cond_53

    .line 448
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/DrxController;->sendSetDrx(I)Z

    move-result v1

    :cond_53
    if-eqz v1, :cond_58

    .line 452
    iput v2, p0, Lcom/android/internal/telephony/DrxController;->mNewDrx:I

    goto :goto_6c

    .line 454
    :cond_58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDrxMode - result: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DrxController;->log(Ljava/lang/String;)V

    :goto_6c
    return v1
.end method
