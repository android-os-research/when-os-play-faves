.class Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;
.super Ljava/lang/Object;
.source "SemWifiApClientInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientInfo"
.end annotation


# instance fields
.field public isInUIList:Z

.field public mAntmode:I

.field public mBw:I

.field public mConnectedTime:J

.field public mDataRate:I

.field public mDeviceName:Ljava/lang/String;

.field public mDis:I

.field public mIp:Ljava/lang/String;

.field public mMac:Ljava/lang/String;

.field public mMode:I

.field public mMumimo:I

.field public mOui:Ljava/lang/String;

.field public mRemovedTime:J

.field public mRssi:I

.field public mSrsn:I

.field public mState:Ljava/lang/String;

.field public mWrsn:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)V
    .registers 5

    .line 372
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    .line 354
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 355
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mIp:Ljava/lang/String;

    .line 356
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDeviceName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 358
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnectedTime:J

    .line 359
    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mRemovedTime:J

    const-string p1, "aa:aa:aa"

    .line 360
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mOui:Ljava/lang/String;

    const/4 p1, 0x0

    .line 361
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    .line 362
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    const/4 v0, -0x1

    .line 363
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mWrsn:I

    .line 364
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mBw:I

    const/16 v0, 0x64

    .line 365
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mRssi:I

    .line 366
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDataRate:I

    .line 367
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMode:I

    .line 368
    iput p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mAntmode:I

    const/16 v0, 0x9

    .line 369
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMumimo:I

    .line 370
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->isInUIList:Z

    .line 373
    iput-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMac:Ljava/lang/String;

    const/16 v0, 0x8

    .line 374
    invoke-virtual {p2, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mOui:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getState()Ljava/lang/String;
    .registers 1

    .line 452
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    return-object p0
.end method

.method public setState(Ljava/lang/String;I)V
    .registers 9

    .line 378
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MHSClient setState() ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMac:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " wrsn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    const-string p2, "sta_notidisassoc"

    .line 379
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez p2, :cond_8a

    const-string p2, "sta_disconn"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4d

    goto :goto_8a

    :cond_4d
    const-string p2, "sta_mismatch"

    .line 388
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5a

    .line 389
    iput v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    .line 390
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    goto :goto_a9

    :cond_5a
    const-string p2, "sta_notallow"

    .line 391
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_67

    .line 392
    iput v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    .line 393
    iput v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    goto :goto_a9

    :cond_67
    const-string p2, "disassoc_sta"

    .line 394
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_74

    .line 395
    iput v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    .line 396
    iput v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    goto :goto_a9

    :cond_74
    const-string p2, "sta_disassoc"

    .line 397
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7f

    .line 398
    iput v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    goto :goto_a9

    :cond_7f
    const-string p2, "sta_deauth"

    .line 399
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a9

    .line 400
    iput v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    goto :goto_a9

    .line 380
    :cond_8a
    :goto_8a
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    const-string v4, "sta_assoc"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a3

    .line 381
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mIp:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a9

    .line 382
    iput v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    .line 383
    iput v3, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    goto :goto_a9

    .line 385
    :cond_a3
    iget p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    if-nez p2, :cond_a9

    .line 386
    iput v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    :cond_a9
    :goto_a9
    const-string p2, "sta_remove"

    .line 402
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1e9

    .line 403
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->isInUIList:Z

    if-eqz p2, :cond_1cb

    .line 405
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Context;

    move-result-object p2

    const-string v4, "sem_wifi"

    invoke-virtual {p2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/wifi/SemWifiManager;

    .line 407
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    move-result-object v4

    const-string v5, "SemWifiApClientInfo"

    if-eqz v4, :cond_139

    .line 408
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMac:Ljava/lang/String;

    invoke-virtual {p2, v4}, Lcom/samsung/android/wifi/SemWifiManager;->getStationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_139

    const-string v4, "=|\\s"

    .line 410
    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/16 v4, 0xa

    .line 412
    :try_start_dd
    aget-object v4, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mBw:I

    const/16 v4, 0xb

    .line 413
    aget-object v4, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mRssi:I

    const/16 v4, 0xc

    .line 414
    aget-object v4, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDataRate:I

    const/16 v4, 0xd

    .line 415
    aget-object v4, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMode:I

    const/16 v4, 0xe

    .line 416
    aget-object v4, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mAntmode:I

    const/16 v4, 0xf

    .line 417
    aget-object v4, p2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMumimo:I

    const/16 v4, 0x10

    .line 418
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mWrsn:I
    :try_end_121
    .catch Ljava/lang/NumberFormatException; {:try_start_dd .. :try_end_121} :catch_12e
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_dd .. :try_end_121} :catch_122

    goto :goto_139

    .line 422
    :catch_122
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfgetMHSDBG()Z

    move-result p2

    if-eqz p2, :cond_139

    const-string p2, "MHDC ArrayIndexOutOfBoundsException occurs"

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_139

    .line 420
    :catch_12e
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfgetMHSDBG()Z

    move-result p2

    if-eqz p2, :cond_139

    const-string p2, "MHDC NumberFormatException occurs"

    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_139
    :goto_139
    iget p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    if-ne p2, v3, :cond_143

    const-string p2, "MHSClient => send MHDC ip failed"

    .line 428
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15a

    :cond_143
    if-ne p2, v2, :cond_14b

    const-string p2, "MHSClient => send MHDC wrong password "

    .line 430
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15a

    :cond_14b
    if-ne p2, v1, :cond_153

    const-string p2, "MHSClient => send MHDC not allowed"

    .line 432
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15a

    :cond_153
    if-ne p2, v0, :cond_15a

    const-string p2, "MHSClient => send MHDC Client removed from allowed list"

    .line 434
    invoke-static {v5, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_15a
    :goto_15a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mOui:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDis:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mSrsn:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mWrsn:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mBw:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mRssi:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDataRate:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMode:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mAntmode:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMumimo:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   =>  send MHDC : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {v0, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$msendMHSBigdata(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)V

    .line 442
    :cond_1cb
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mRemovedTime:J

    .line 443
    iget-boolean p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->isInUIList:Z

    if-nez p2, :cond_1de

    .line 444
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    iget-object p2, p2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mMac:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    :cond_1de
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfgetMHSDBG()Z

    move-result p2

    if-eqz p2, :cond_1e9

    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowClientsInfo(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Ljava/lang/String;

    .line 448
    :cond_1e9
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    return-void
.end method
