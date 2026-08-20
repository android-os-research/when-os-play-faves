.class Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;
.super Ljava/lang/Object;
.source "BigdataHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Pdc3Builder"
.end annotation


# instance fields
.field private mBssid:Ljava/lang/String;

.field private final mCategoryId:I

.field private mCount:I

.field private final mPatternId:Ljava/lang/String;

.field private mRoamingType:Ljava/lang/String;

.field private mRssi:I

.field private mSsid:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .line 546
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknown"

    .line 539
    iput-object v0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mVersion:Ljava/lang/String;

    .line 547
    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mPatternId:Ljava/lang/String;

    .line 548
    iput p2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mCategoryId:I

    return-void
.end method

.method private getBigDataBundle()Landroid/os/Bundle;
    .registers 5

    .line 586
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PDC3"

    .line 587
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 590
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->getBigdataParameterString()Ljava/lang/String;

    move-result-object v2

    .line 591
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_53

    const-string v3, "feature"

    .line 594
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    .line 595
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mPatternId:Ljava/lang/String;

    const-string v2, "patternId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mCategoryId:I

    const-string v2, "categoryId"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 598
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mRssi:I

    const-string v2, "rssi"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 599
    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mCount:I

    const-string v2, "count"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 600
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mRoamingType:Ljava/lang/String;

    const-string v2, "roaming_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mBssid:Ljava/lang/String;

    const-string v2, "bssid"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object p0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mSsid:Ljava/lang/String;

    const-string v1, "ssid"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 592
    :cond_53
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "data should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 588
    :cond_5b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "feature name should not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method build()Landroid/os/Bundle;
    .registers 1

    .line 582
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->getBigDataBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method getBigdataParameterString()Ljava/lang/String;
    .registers 4

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mCategoryId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mRssi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mRoamingType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method setBssid(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;
    .registers 3

    const-string v0, "00:00:00:00:00:00"

    .line 572
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mBssid:Ljava/lang/String;

    return-object p0
.end method

.method setRoamingRssi(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;
    .registers 2

    .line 562
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mRssi:I

    return-object p0
.end method

.method setRoamingTriggerCount(I)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;
    .registers 2

    .line 557
    iput p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mCount:I

    return-object p0
.end method

.method setRoamingType(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;
    .registers 3

    const-string v0, "unknown"

    .line 567
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mRoamingType:Ljava/lang/String;

    return-object p0
.end method

.method setSsid(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;
    .registers 3

    const-string v0, "unknown"

    .line 577
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method setVersion(Ljava/lang/String;)Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;
    .registers 3

    const-string v0, "unknown"

    .line 552
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper;->getOrDefault(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/diagnostics/BigdataHelper$Pdc3Builder;->mVersion:Ljava/lang/String;

    return-object p0
.end method
