.class public Lcom/android/internal/telephony/SemTelephonyTester;
.super Landroid/os/Handler;
.source "SemTelephonyTester.java"


# instance fields
.field private blacklist mHandlerThread:Landroid/os/HandlerThread;

.field private blacklist mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

.field protected blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPhone(Lcom/android/internal/telephony/SemTelephonyTester;)Lcom/android/internal/telephony/Phone;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhasCallTest(Lcom/android/internal/telephony/SemTelephonyTester;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->hasCallTest(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/SemTelephonyTester;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/Phone;Landroid/os/HandlerThread;)V
    .registers 10

    .line 255
    invoke-virtual {p2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 159
    new-instance v0, Lcom/android/internal/telephony/SemTelephonyTester$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/SemTelephonyTester$1;-><init>(Lcom/android/internal/telephony/SemTelephonyTester;)V

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 257
    iput-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 258
    iput-object p2, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mHandlerThread:Landroid/os/HandlerThread;

    .line 260
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "com.samsung.intent.action.SET_PREFERRED_NETWORK_TYPE_TEST"

    .line 261
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.intent.action.TELEPHONY_FEATURES_CHECK_TEST"

    .line 262
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.intent.action.EMERGENCY_CALLBACK_MODE_ENTER_TEST"

    .line 263
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.intent.action.ALL_CELL_INFO_TEST"

    .line 264
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.intent.action.HAS_CALL_TEST"

    .line 265
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.intent.action.SIMULATE_NETWORK_EMERGENCY_NUMBER_TEST"

    .line 266
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.intent.action.DIAL_STRING_REPLACE_TEST"

    .line 267
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.intent.action.UT_TEST"

    .line 268
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.intent.action.DRX_TEST"

    .line 269
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    if-nez p1, :cond_5b

    const-string p1, "com.samsung.intent.action.SEM_MMI_CODE_HELPER_TEST"

    .line 271
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.intent.action.FORMATNUMBER_TEST"

    .line 272
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p1, "com.samsung.intent.action.CARRIER_ID_FROM_MCCMNC_TEST"

    .line 273
    invoke-virtual {v3, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    :cond_5b
    iget-object p1, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object v5, p0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string p1, "Vendor test is enabled"

    .line 277
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;
    .registers 3

    const-wide/16 v0, 0x3e8

    .line 483
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 484
    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    return-object p0
.end method

.method private blacklist handleDrxTest()V
    .registers 9

    .line 401
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SemPhoneInternal;->getDrxController()Lcom/android/internal/telephony/DrxController;

    move-result-object v0

    if-eqz v0, :cond_dc

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DRX Test #1] getCurrentCycle() - cycle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DrxController;->getCurrentCycle()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    const-wide/16 v1, 0xbb8

    .line 407
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 410
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DRX Test #2-1] changeDRX(CN6_T32) - result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x140

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/DrxController;->changeDRX(II)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 411
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DRX Test #2-2] getCurrentCycle() - cycle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DrxController;->getCurrentCycle()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 413
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DRX Test #3-1] changeDRX(CN9_T256, 1) - result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0xa00

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v6}, Lcom/android/internal/telephony/DrxController;->changeDRX(II)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    const-wide/32 v3, 0xdea8

    .line 417
    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    move v3, v5

    :goto_80
    const/4 v4, 0x6

    if-ge v3, v4, :cond_a3

    .line 420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DRX Test #3-2] getCurrentCycle() - cycle: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DrxController;->getCurrentCycle()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    const-wide/16 v6, 0x3e8

    .line 421
    invoke-direct {p0, v6, v7}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_80

    .line 423
    :cond_a3
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DRX Test #4-1] changeDRX(DEFAULT_CYCLE) - result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x500

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/DrxController;->changeDRX(II)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 427
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    .line 428
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DRX Test #4-2] getCurrentCycle() - cycle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DrxController;->getCurrentCycle()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    goto :goto_e1

    :cond_dc
    const-string v0, "handleDrxTest - drxController is null"

    .line 430
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    :goto_e1
    return-void
.end method

.method private blacklist handleUtTest()V
    .registers 4

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v0, :cond_16

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mImsPhone:Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v0, :cond_16

    const-string v0, "handleUtTest - mImsPhone is null"

    .line 309
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    return-void

    :cond_16
    const-string v0, "handleUtTest"

    .line 313
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    const-string v0, "[UT Test #1] CallBarring"

    .line 315
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 316
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->testCallBarringApi()V

    const-wide/16 v0, 0x7d0

    .line 317
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    const-string v2, "[UT Test #2] CallForwarding"

    .line 319
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 320
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->testCallForwardingApi()V

    .line 321
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    const-string v2, "[UT Test #3] CallWaiting"

    .line 323
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->testCallWaitingApi()V

    .line 325
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    const-string v2, "[UT Test #4] CLIR"

    .line 327
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 328
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->testClirApi()V

    .line 329
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    const-string v2, "[UT Test #5] CLIP"

    .line 331
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 332
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->testClipApi()V

    .line 333
    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->waitForMs(J)V

    const-string v0, "[UT Test #6] COLR - Skip (No COLR API in ImsPhone)"

    .line 335
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    const-string v0, "[UT Test #7] COLP - Skip (No COLP API in ImsPhone)"

    .line 337
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    const-string v0, "[UT Test #8] ICB"

    .line 339
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->testIcbApi()V

    return-void
.end method

.method private blacklist hasCallTest(I)V
    .registers 10

    const/4 v0, 0x0

    if-gez p1, :cond_4

    move p1, v0

    .line 439
    :cond_4
    invoke-static {}, Lcom/android/internal/telephony/SemTelephonyHelper;->getHasCallAttributeMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 440
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    .line 441
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 442
    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 444
    iget-object v5, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    check-cast v5, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/SemPhoneInternal;->hasCall(Ljava/lang/String;)Z

    move-result v5

    .line 446
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hasCallTest - key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", result: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", domain: 0x"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", category: 0x"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    goto :goto_10

    :cond_7b
    if-lez p1, :cond_89

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    .line 450
    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_8e

    :cond_89
    const-string p1, "hasCallTest END"

    .line 452
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    :goto_8e
    return-void
.end method

.method public static blacklist isVendorTestEnabled()Z
    .registers 2

    .line 299
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_16

    sget-boolean v0, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-nez v0, :cond_16

    const-string v0, "persist.radio.debug.teletester"

    .line 300
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v1, 0x1

    :cond_16
    return v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 4

    .line 721
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemTelephonyTester"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static blacklist makeSemTelephonyTester(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/SemTelephonyTester;
    .registers 4

    .line 281
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 282
    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setDaemon(Z)V

    .line 283
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 284
    new-instance v1, Lcom/android/internal/telephony/SemTelephonyTester;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;-><init>(Lcom/android/internal/telephony/Phone;Landroid/os/HandlerThread;)V

    return-object v1
.end method

.method private blacklist testCallBarringApi()V
    .registers 6

    .line 347
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const-string v1, "AO"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    .line 348
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v3, 0x1

    const-string v4, "1234"

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 349
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    .line 350
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 351
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallBarring(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private blacklist testCallForwardingApi()V
    .registers 10

    .line 358
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 359
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, 0x0

    const-string v6, "1234567890"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 360
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 361
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v3

    const/4 v4, 0x4

    const-string v6, "1234567890"

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 362
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    return-void
.end method

.method private blacklist testCallWaitingApi()V
    .registers 4

    .line 366
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    .line 367
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 368
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    .line 369
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 370
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallWaiting(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist testClipApi()V
    .registers 2

    .line 382
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->queryCLIP(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist testClirApi()V
    .registers 4

    .line 374
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 375
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 376
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 377
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 378
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist testIcbApi()V
    .registers 7

    const/4 v0, 0x1

    new-array v1, v0, [Landroid/os/Bundle;

    .line 388
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v4, "time"

    const-string v5, "1"

    .line 389
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v2, v1, v3

    const-string v4, "icbnumber"

    const-string v5, "1234567890"

    .line 390
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v2, v1, v3

    const-string v4, "barringEnabled"

    .line 391
    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getICBarring(Landroid/os/Message;)V

    .line 394
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setICBarring([Landroid/os/Bundle;Landroid/os/Message;)V

    .line 395
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getICBarring(Landroid/os/Message;)V

    .line 396
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    const-string v1, "ICB"

    const-string v4, "1234"

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->setCallBarring(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V

    .line 397
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->getImsPhoneAfterDelay()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getICBarring(Landroid/os/Message;)V

    return-void
.end method

.method private blacklist waitForMs(J)V
    .registers 4

    .line 489
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_19

    :catch_4
    move-exception p1

    .line 491
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "InterruptedException while waiting: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    :goto_19
    return-void
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 3

    const-string v0, "dispose"

    .line 288
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 292
    iget-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1a

    .line 293
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    const/4 v0, 0x0

    .line 294
    iput-object v0, p0, Lcom/android/internal/telephony/SemTelephonyTester;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_1a
    return-void
.end method

.method public blacklist enableOtaEmergencyNumberDatabaseLog()Z
    .registers 2

    const-string p0, "persist.ril.test.ota.emergency.dblog"

    const/4 v0, 0x0

    .line 717
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist getAssistedDialingTestData()Ljava/lang/String;
    .registers 2

    const-string p0, "ril.test.assisteddial"

    const-string v0, ""

    .line 677
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getForceCallDomain()Ljava/lang/String;
    .registers 2

    const-string p0, "ril.test.forcecalldomain"

    const-string v0, ""

    .line 652
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getNetworkTypeCapabilityTestData()Ljava/lang/String;
    .registers 4

    const-string p0, "ril.test.networktypecapability"

    const-string v0, ""

    .line 692
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 694
    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->getMainOperator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "---"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    return-object v0

    :cond_15
    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 458
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_34

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2b

    const/4 v1, 0x3

    if-eq v0, v1, :cond_22

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    goto :goto_4f

    :cond_22
    const-string p1, "EVENT_DRX_TEST"

    .line 470
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 471
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->handleDrxTest()V

    goto :goto_4f

    :cond_2b
    const-string p1, "EVENT_UT_TEST"

    .line 465
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 466
    invoke-direct {p0}, Lcom/android/internal/telephony/SemTelephonyTester;->handleUtTest()V

    goto :goto_4f

    .line 460
    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_HASCALL_TEST - count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 461
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->hasCallTest(I)V

    :goto_4f
    return-void
.end method

.method public blacklist isBlockFallback(ILandroid/os/Bundle;)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return p0

    :cond_4
    const/4 v0, 0x5

    const/4 v1, 0x1

    if-ne p1, v0, :cond_26

    .line 599
    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyUtils;->isSilentRedialFromCs(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_17

    const-string p1, "ril.test.block.psfb"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_17

    return v1

    .line 602
    :cond_17
    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyUtils;->isSilentRedialFromPs(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_35

    const-string p1, "ril.test.block.psredial"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_35

    return v1

    .line 607
    :cond_26
    invoke-static {p2}, Lcom/android/internal/telephony/SemTelephonyUtils;->isSilentRedialFromPs(Landroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_35

    const-string p1, "ril.test.block.csfb"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_35

    return v1

    :cond_35
    return p0
.end method

.method public blacklist isForceNormalCall()Z
    .registers 2

    const-string p0, "ril.test.forcenormalcall"

    const/4 v0, 0x0

    .line 539
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isIgnoreEmergencySearch()Z
    .registers 2

    const-string p0, "ril.test.ignore.emergencysearch"

    const/4 v0, 0x0

    .line 576
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isSimulateCallStartFailed()Z
    .registers 2

    const-string p0, "ril.test.callstartfailed"

    const/4 v0, 0x0

    .line 708
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isSimulateSsCsRetry()Z
    .registers 2

    const-string p0, "ril.test.ss.csretry"

    const/4 v0, 0x0

    .line 661
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isSimulateUtEnabled()Z
    .registers 2

    const-string p0, "ril.test.utenabled"

    const/4 v0, 0x0

    .line 642
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist isSimulateVowifiEnabled()Z
    .registers 2

    const-string p0, "ril.test.vowifienabled"

    const/4 v0, 0x0

    .line 633
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public blacklist overrideEmergencySearchResult(IZ)I
    .registers 5

    const-string v0, "ril.test.emergencysearchresult"

    const/4 v1, -0x1

    .line 557
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p2, :cond_f

    const-string p2, "ril.test.emergencysearchresult.afterfail"

    .line 559
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    :cond_f
    const/4 p2, 0x1

    if-lt v0, p2, :cond_32

    const/4 p2, 0x5

    if-gt v0, p2, :cond_32

    .line 563
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Override emergencySearchResult("

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") with "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    return v0

    :cond_32
    return p1
.end method

.method public blacklist overrideImsReasonInfo()Landroid/telephony/ims/ImsReasonInfo;
    .registers 6

    const-string v0, "ril.test.imscall.failreason"

    .line 510
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 511
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    .line 512
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideImsReasonInfo - failReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    :try_start_20
    const-string v1, ":"

    .line 514
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 515
    new-instance v1, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {v1}, Landroid/telephony/ims/ImsReasonInfo;-><init>()V

    const/4 v2, 0x0

    .line 516
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 517
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_51

    const/4 v2, 0x1

    .line 518
    aget-object v2, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 519
    array-length v2, v0

    const/4 v4, 0x3

    if-lt v2, v4, :cond_51

    .line 520
    aget-object v0, v0, v3

    iput-object v0, v1, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 523
    :cond_51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideImsReasonInfo - newReasonInfo: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V
    :try_end_65
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_65} :catch_66

    return-object v1

    :catch_66
    move-exception v0

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "overrideImsReasonInfo - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    :cond_7b
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist throwImsException(Ljava/lang/String;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/ims/ImsException;
        }
    .end annotation

    const-string v0, "ril.test.imsexception"

    const/4 v1, 0x0

    .line 621
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    return-void

    .line 622
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SemTelephonyTester;->log(Ljava/lang/String;)V

    .line 623
    new-instance p0, Lcom/android/ims/ImsException;

    invoke-direct {p0, p1, p2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
