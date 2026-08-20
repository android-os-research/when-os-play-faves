.class Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;
.super Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;
.source "BigdataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pdc2Builder"
.end annotation


# instance fields
.field private mHandleState:Ljava/lang/String;

.field private mHangReason:Ljava/lang/String;

.field private mLastProcessId:I

.field private mNumAssociation:I

.field private mPackageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 436
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;-><init>(Ljava/lang/String;I)V

    const-string p1, "unknown"

    .line 429
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->mHandleState:Ljava/lang/String;

    const/4 p2, -0x1

    .line 430
    iput p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->mLastProcessId:I

    .line 431
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->mHangReason:Ljava/lang/String;

    .line 432
    iput p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->mNumAssociation:I

    .line 433
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method build()Landroid/os/Bundle;
    .registers 2

    const-string v0, "PDC2"

    .line 514
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->getBigDataBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method getBigdataParameterString()Ljava/lang/String;
    .registers 4

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mCategoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->mHandleState:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->mLastProcessId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->mHangReason:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mReason:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->mNumAssociation:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mRssi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mOui:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mKeyMgmt:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mFrequency:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mBssid:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method setBssid(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;
    .registers 2

    .line 445
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setBssidAndOuiInternal(Ljava/lang/String;)V

    return-object p0
.end method

.method setDisconnectInfo(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;
    .registers 3

    .line 505
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setDisconnectInfoInternal(Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;)V

    if-eqz p1, :cond_f

    .line 507
    iget-object v0, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->handleState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setHandleState(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    .line 508
    iget p1, p1, Lcom/samsung/android/server/wifi/diagnostics/DisconnectInfo;->lastProcessMessage:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->setLastProcessMessageId(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;

    :cond_f
    return-object p0
.end method

.method setFrequency(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;
    .registers 2

    .line 460
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setFrequencyInternal(I)V

    return-object p0
.end method

.method setHandleState(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;
    .registers 3

    const-string v0, "unknown"

    .line 495
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->mHandleState:Ljava/lang/String;

    return-object p0
.end method

.method setHangReason(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;
    .registers 3

    const-string v0, "unknown"

    .line 485
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->mHangReason:Ljava/lang/String;

    return-object p0
.end method

.method setKeyMgmt(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;
    .registers 2

    .line 465
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setKeyMgmtInternal(I)V

    return-object p0
.end method

.method setLastProcessMessageId(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;
    .registers 2

    .line 490
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->mLastProcessId:I

    return-object p0
.end method

.method setNumberOfAssociation(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;
    .registers 2

    .line 475
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->mNumAssociation:I

    return-object p0
.end method

.method setOui(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;
    .registers 2

    .line 470
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setOuiInternal(Ljava/lang/String;)V

    return-object p0
.end method

.method setPackageName(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;
    .registers 3

    const-string v0, "unknown"

    .line 455
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method setReason(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;
    .registers 2

    .line 480
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setReasonInternal(I)V

    return-object p0
.end method

.method setRssi(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;
    .registers 2

    .line 500
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setRssiInternal(I)V

    return-object p0
.end method

.method setSsid(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;
    .registers 2

    .line 450
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->setSsidInternal(Ljava/lang/String;)V

    return-object p0
.end method

.method setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc2Builder;
    .registers 3

    const-string v0, "unknown"

    .line 440
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$PdcData;->mVersion:Ljava/lang/String;

    return-object p0
.end method
