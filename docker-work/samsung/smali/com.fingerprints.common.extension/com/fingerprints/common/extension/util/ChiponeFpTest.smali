.class public final Lcom/fingerprints/common/extension/util/ChiponeFpTest;
.super Ljava/lang/Object;
.source "ChiponeFpTest.java"

# interfaces
.implements Lcom/fingerprints/common/extension/util/FpTest;


# static fields
.field private static final TAG:Ljava/lang/String; = "FPMMITEST_CHIPONE"

.field private static instance:Lcom/fingerprints/common/extension/util/ChiponeFpTest;


# instance fields
.field handler:Landroid/os/Handler;

.field private mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

.field theCaptureListener:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;

.field private theChiponeFpSensorManager:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

.field touchTestResult:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->instance:Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->handler:Landroid/os/Handler;

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->touchTestResult:I

    .line 124
    new-instance v0, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;

    invoke-direct {v0, p0}, Lcom/fingerprints/common/extension/util/ChiponeFpTest$1;-><init>(Lcom/fingerprints/common/extension/util/ChiponeFpTest;)V

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->theCaptureListener:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;

    .line 33
    invoke-direct {p0, p1}, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->chiponeInit(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/fingerprints/common/extension/util/ChiponeFpTest;)Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;
    .registers 2
    .param p0, "x0"    # Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    .line 21
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->theChiponeFpSensorManager:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fingerprints/common/extension/util/ChiponeFpTest;)Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;
    .registers 2
    .param p0, "x0"    # Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    .line 21
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    return-object v0
.end method

.method private chiponeCheckBoardTestInternal()V
    .registers 5

    .line 104
    const-string v0, "FPMMITEST_CHIPONE"

    const-string v1, "ChiponeFpTest start check broad test"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/4 v1, -0x1

    .line 106
    .local v1, "iResult":I
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->theChiponeFpSensorManager:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    if-eqz v2, :cond_16

    .line 108
    :try_start_c
    invoke-virtual {v2}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->sensorCheckboard()I

    move-result v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_12

    move v1, v2

    .line 112
    goto :goto_16

    .line 109
    :catch_12
    move-exception v2

    .line 111
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_16
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChiponeFpTest check board result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    if-nez v1, :cond_3a

    .line 116
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 117
    const-string v2, "ChiponeFpTest check broad test pass!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 119
    :cond_3a
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 120
    const-string v2, "ChiponeFpTest check broad test fail!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :goto_45
    return-void
.end method

.method private chiponeInit(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 74
    const-string v0, "FPMMITEST_CHIPONE"

    const-string v1, "ChiponeFpTest init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :try_start_7
    invoke-static {p1}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->getFpManager(Landroid/content/Context;)Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->theChiponeFpSensorManager:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_d} :catch_e

    .line 79
    goto :goto_12

    .line 77
    :catch_e
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 80
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    return-void
.end method

.method private chiponeSelfTestInternal()V
    .registers 5

    .line 83
    const-string v0, "FPMMITEST_CHIPONE"

    const-string v1, "ChiponeFpTest start self test"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v1, -0x1

    .line 85
    .local v1, "iResult":I
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->theChiponeFpSensorManager:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    if-eqz v2, :cond_16

    .line 87
    :try_start_c
    invoke-virtual {v2}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->sensorSelfTest()I

    move-result v2
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_12

    move v1, v2

    .line 91
    goto :goto_16

    .line 88
    :catch_12
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_16
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChiponeFpTest self test result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    if-nez v1, :cond_3a

    .line 95
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 96
    const-string v2, "ChiponeFpTest self test pass!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 98
    :cond_3a
    iget-object v2, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;->onResult(I)V

    .line 99
    const-string v2, "ChiponeFpTest self test fail!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :goto_45
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/fingerprints/common/extension/util/ChiponeFpTest;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    sget-object v0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->instance:Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    if-nez v0, :cond_1e

    .line 38
    const-class v0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    monitor-enter v0

    .line 39
    :try_start_7
    const-string v1, "FPMMITEST_CHIPONE"

    const-string v2, "ChiponeFpTest new instance"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v1, Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fingerprints/common/extension/util/ChiponeFpTest;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->instance:Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    .line 41
    monitor-exit v0

    goto :goto_1e

    :catchall_1b
    move-exception v1

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_1b

    throw v1

    .line 43
    :cond_1e
    :goto_1e
    sget-object v0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->instance:Lcom/fingerprints/common/extension/util/ChiponeFpTest;

    return-object v0
.end method


# virtual methods
.method public cancelEnrollTest()V
    .registers 3

    .line 65
    const-string v0, "FPMMITEST_CHIPONE"

    const-string v1, "chiponecancelEnrollTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {p0}, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->chiponeCancelEnrollTest()V

    .line 67
    return-void
.end method

.method public chiponeCancelEnrollTest()V
    .registers 6

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->theChiponeFpSensorManager:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    invoke-virtual {v0}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->cancel()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 182
    goto :goto_a

    .line 180
    :catch_6
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->theChiponeFpSensorManager:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    const-string v1, "cancel pass!!!!"

    const-string v2, "FPMMITEST_CHIPONE"

    if-eqz v0, :cond_21

    .line 184
    const/16 v3, 0x64

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->service_control(II)I

    .line 185
    iget-object v0, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->theChiponeFpSensorManager:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->setFpEventListener(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;)V

    .line 186
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_21
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method

.method public chiponeEnrollTest()V
    .registers 4

    .line 165
    const-string v0, "FPMMITEST_CHIPONE"

    const-string v1, "ChiponeFpTest start chiponeEnrollTest"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :try_start_7
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->theChiponeFpSensorManager:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    iget-object v2, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->theCaptureListener:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;

    invoke-virtual {v1, v2}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->setFpEventListener(Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr$fpEventListener;)V

    .line 169
    iget-object v1, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->theChiponeFpSensorManager:Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fpsensor/fpExtSvc2HidlMgr/fpExtSvc2HidlMgr;->captureRawImg(I)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_15

    .line 173
    goto :goto_1e

    .line 170
    :catch_15
    move-exception v1

    .line 171
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "capture Image error"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1e
    return-void
.end method

.method public setCallBack(Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;)V
    .registers 2
    .param p1, "callBack"    # Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    .line 47
    iput-object p1, p0, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->mCallBack:Lcom/fingerprints/common/extension/util/FpMmiTest$FpMmiTestResultCallBack;

    .line 48
    return-void
.end method

.method public startCheckBoardTest()V
    .registers 1

    .line 56
    invoke-direct {p0}, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->chiponeCheckBoardTestInternal()V

    .line 57
    return-void
.end method

.method public startEnrollTest()V
    .registers 3

    .line 60
    const-string v0, "FPMMITEST_CHIPONE"

    const-string v1, "chiponestartEnrollTest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->chiponeEnrollTest()V

    .line 62
    return-void
.end method

.method public startSelfTest()V
    .registers 1

    .line 51
    invoke-direct {p0}, Lcom/fingerprints/common/extension/util/ChiponeFpTest;->chiponeSelfTestInternal()V

    .line 53
    return-void
.end method

.method public stopFpMMITest()V
    .registers 3

    .line 70
    const-string v0, "FPMMITEST_CHIPONE"

    const-string v1, "chiponestopFpMMITest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method
