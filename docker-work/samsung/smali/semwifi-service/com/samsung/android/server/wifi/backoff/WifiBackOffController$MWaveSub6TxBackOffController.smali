.class Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;
.super Ljava/lang/Object;
.source "WifiBackOffController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MWaveSub6TxBackOffController"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiBackOff.5G"


# instance fields
.field private lastNrFrequencyRange:I

.field private final listener:Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

.field private final txBackOffStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/backoff/BackOffMode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$C8DaxExj6qTowuLjhIQwUvw5E8A(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/BackOffMode;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/BackOffMode;)V

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;)V
    .registers 3

    .line 332
    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->listener:Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

    .line 334
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;-><init>(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;)V

    return-void
.end method

.method private getTxBackOffModeString(I)Ljava/lang/String;
    .registers 2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_20

    const/4 p0, 0x4

    if-eq p1, p0, :cond_1d

    const/4 p0, 0x5

    if-eq p1, p0, :cond_1a

    const/4 p0, 0x6

    if-eq p1, p0, :cond_17

    const/4 p0, 0x7

    if-eq p1, p0, :cond_14

    .line 455
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    const-string p0, "SAR_BACKOFF_DISABLE_ALL"

    return-object p0

    :cond_17
    const-string p0, "SUB6_BACKOFF_ENABLED"

    return-object p0

    :cond_1a
    const-string p0, "SUB6_BACKOFF_DISABLED"

    return-object p0

    :cond_1d
    const-string p0, "mmWAVE_BACKOFF_ENABLED"

    return-object p0

    :cond_20
    const-string p0, "mmWAVE_BACKOFF_DISABLED"

    return-object p0
.end method

.method private static synthetic lambda$dump$0(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/samsung/android/server/wifi/backoff/BackOffMode;)V
    .registers 5

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - txBackOffMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private reportBackOffState(Ljava/lang/String;IZ)V
    .registers 6

    .line 420
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    if-eqz p3, :cond_18

    .line 423
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->add(I)I

    .line 424
    iget-object p3, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->listener:Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;->onBackOffStarted(Ljava/lang/String;I)V

    goto :goto_20

    .line 426
    :cond_18
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->remove(I)I

    .line 427
    iget-object p3, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->listener:Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/server/wifi/backoff/BackOffStateListener;->onBackOffStopped(Ljava/lang/String;I)V

    .line 429
    :goto_20
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private restoreTxBackoffMode(Ljava/lang/String;)V
    .registers 5

    .line 369
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    .line 371
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restore back off mode, current: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiBackOff.5G"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x8

    .line 372
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->contains(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    .line 373
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->set5GmmWaveTxBackoffEnabled(Ljava/lang/String;Z)V

    :cond_2f
    const/4 v1, 0x4

    .line 375
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 376
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->setSub6TxBackoffEnabled(Ljava/lang/String;Z)V

    :cond_39
    return-void
.end method

.method private set5GmmWaveTxBackoffEnabled(Ljava/lang/String;Z)V
    .registers 7

    .line 404
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    const/16 v1, 0x8

    .line 407
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->contains(I)Z

    move-result v0

    if-ne p2, v0, :cond_16

    return-void

    :cond_16
    if-eqz p2, :cond_1a

    const/4 v0, 0x4

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x3

    .line 412
    :goto_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerBackoff(mWave) mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->getTxBackOffModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifiBackOff.5G"

    .line 412
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$fgetwifiNative(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;->setTxPowerBackOff(Ljava/lang/String;I)Z

    .line 416
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->reportBackOffState(Ljava/lang/String;IZ)V

    return-void
.end method

.method private setSub6TxBackoffEnabled(Ljava/lang/String;Z)V
    .registers 7

    .line 381
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    new-instance v1, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    invoke-direct {v1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    const/4 v1, 0x4

    .line 384
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->contains(I)Z

    move-result v0

    if-ne p2, v0, :cond_15

    return-void

    :cond_15
    if-eqz p2, :cond_19

    const/4 v0, 0x6

    goto :goto_1a

    :cond_19
    const/4 v0, 0x5

    .line 389
    :goto_1a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerBackoff(sub6) mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->getTxBackOffModeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SemWifiBackOff.5G"

    .line 389
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$fgetwifiNative(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;

    move-result-object v2

    invoke-interface {v2, p1, v0}, Lcom/samsung/android/server/wifi/backoff/NativeBackOffCommand;->setTxPowerBackOff(Ljava/lang/String;I)Z

    .line 393
    invoke-direct {p0, p1, v1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->reportBackOffState(Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method checkAndSetup(Ljava/lang/String;)V
    .registers 6

    .line 342
    iget-object v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->this$0:Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->-$$Nest$mgetServiceState(Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;)Landroid/telephony/ServiceState;

    move-result-object v0

    if-nez v0, :cond_c

    .line 344
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->restoreTxBackoffMode(Ljava/lang/String;)V

    return-void

    .line 347
    :cond_c
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v0

    .line 348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndSetup nrFrequencyRange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / prevNrFrequencyRange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->lastNrFrequencyRange:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemWifiBackOff.5G"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_48

    const/4 v3, 0x2

    if-eq v0, v3, :cond_48

    const/4 v3, 0x3

    if-eq v0, v3, :cond_48

    const/4 v3, 0x4

    if-eq v0, v3, :cond_41

    .line 362
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->restoreTxBackoffMode(Ljava/lang/String;)V

    goto :goto_4e

    .line 358
    :cond_41
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->setSub6TxBackoffEnabled(Ljava/lang/String;Z)V

    .line 359
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->set5GmmWaveTxBackoffEnabled(Ljava/lang/String;Z)V

    goto :goto_4e

    .line 354
    :cond_48
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->set5GmmWaveTxBackoffEnabled(Ljava/lang/String;Z)V

    .line 355
    invoke-direct {p0, p1, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->setSub6TxBackoffEnabled(Ljava/lang/String;Z)V

    .line 365
    :goto_4e
    iput v0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->lastNrFrequencyRange:I

    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 437
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " - lastNrFrequencyRange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->lastNrFrequencyRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 438
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController$$ExternalSyntheticLambda0;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method forceEnableMWaveBackoff(Ljava/lang/String;Z)V
    .registers 5

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceEnable5GmmWaveBackoff by app iface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiBackOff.5G"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 v0, p2, 0x1

    const/16 v1, 0x8

    .line 399
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->reportBackOffState(Ljava/lang/String;IZ)V

    .line 400
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->set5GmmWaveTxBackoffEnabled(Ljava/lang/String;Z)V

    return-void
.end method

.method getCurrentBackOffMode(Ljava/lang/String;)Lcom/samsung/android/server/wifi/backoff/BackOffMode;
    .registers 3

    .line 433
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;->clone()Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    move-result-object p0

    return-object p0
.end method

.method resetState(Ljava/lang/String;)V
    .registers 3

    .line 338
    iget-object p0, p0, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController$MWaveSub6TxBackOffController;->txBackOffStates:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/server/wifi/backoff/BackOffMode;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/backoff/BackOffMode;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
