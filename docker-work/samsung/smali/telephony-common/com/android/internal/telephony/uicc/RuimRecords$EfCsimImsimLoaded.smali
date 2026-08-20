.class public Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EfCsimImsimLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .registers 2

    .line 525
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist decodeImsiDigits(II)I
    .registers 5

    const/4 p0, 0x1

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_13

    add-int/2addr p1, p0

    .line 622
    div-int v1, p1, p0

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_e

    mul-int/lit8 v1, p0, 0xa

    sub-int/2addr p1, v1

    :cond_e
    mul-int/lit8 p0, p0, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_13
    return p1
.end method


# virtual methods
.method public blacklist decodeImsi([B)Ljava/lang/String;
    .registers 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/16 v0, 0x9

    .line 640
    aget-byte v1, p1, v0

    const/4 v2, 0x3

    and-int/2addr v1, v2

    const/16 v3, 0x8

    shl-int/2addr v1, v3

    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    .line 641
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsiDigits(II)I

    move-result v1

    const/4 v4, 0x6

    .line 642
    aget-byte v5, p1, v4

    and-int/lit8 v5, v5, 0x7f

    const/4 v6, 0x2

    .line 643
    invoke-direct {p0, v5, v6}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsiDigits(II)I

    move-result v5

    .line 646
    aget-byte v6, p1, v6

    and-int/2addr v6, v2

    shl-int/2addr v6, v3

    const/4 v7, 0x1

    aget-byte v8, p1, v7

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v6, v8

    const/4 v8, 0x5

    .line 647
    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v3

    const/4 v9, 0x4

    aget-byte v9, p1, v9

    and-int/lit16 v10, v9, 0xff

    or-int/2addr v8, v10

    shr-int/lit8 v4, v8, 0x6

    shr-int/lit8 v8, v9, 0x2

    and-int/lit8 v8, v8, 0xf

    const/4 v10, 0x0

    if-le v8, v0, :cond_3c

    move v8, v10

    :cond_3c
    and-int/lit8 v0, v9, 0x3

    shl-int/2addr v0, v3

    .line 650
    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 652
    invoke-direct {p0, v6, v2}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsiDigits(II)I

    move-result v0

    .line 653
    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsiDigits(II)I

    move-result v3

    .line 654
    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsiDigits(II)I

    move-result p0

    .line 656
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 657
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v10

    const-string v1, "%03d"

    invoke-static {v2, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v7, [Ljava/lang/Object;

    .line 658
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, "%02d"

    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v7, [Ljava/lang/Object;

    .line 659
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v10

    invoke-static {v2, v1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v7, [Ljava/lang/Object;

    .line 660
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v10

    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v7, [Ljava/lang/Object;

    .line 661
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v10

    const-string v3, "%d"

    invoke-static {v2, v3, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v7, [Ljava/lang/Object;

    .line 662
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v10

    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEfName()Ljava/lang/String;
    .registers 1

    const-string p0, "EF_CSIM_IMSIM"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 11

    .line 533
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    if-eqz p1, :cond_259

    .line 534
    array-length v0, p1

    const/16 v1, 0xa

    if-ge v0, v1, :cond_d

    goto/16 :goto_259

    .line 539
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/internal/telephony/uicc/IccRecords;->VDBG:Z

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    const/4 v0, 0x7

    .line 543
    aget-byte v0, p1, v0

    const/16 v1, 0x80

    and-int/2addr v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v1, :cond_39

    move v0, v3

    goto :goto_3a

    :cond_39
    move v0, v4

    :goto_3a
    if-eqz v0, :cond_97

    .line 546
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->decodeImsi([B)Ljava/lang/String;

    move-result-object p1

    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 548
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iput-object p1, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    .line 550
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IMSI="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 553
    :cond_6a
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v1, 0x5

    const/16 v5, 0xf

    invoke-virtual {p1, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fputmMin(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V

    .line 555
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "min present="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmMin(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_f7

    .line 558
    :cond_97
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v0, "min not present"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 560
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SPR"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_dc

    .line 561
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmMdn(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fputmMin(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V

    .line 562
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "For SPR - default MIN is same as default MDN : mMin = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fgetmMin(Lcom/android/internal/telephony/uicc/RuimRecords;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->pii(ZLjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto :goto_f7

    .line 563
    :cond_dc
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "USC"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f7

    .line 564
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v0, "1111110111"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$fputmMin(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V

    .line 569
    :cond_f7
    :goto_f7
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->getRUIMOperatorNumeric()Ljava/lang/String;

    move-result-object p1

    .line 570
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_258

    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v1, "ril.simoperator"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CTC"

    .line 573
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x3

    if-nez v1, :cond_11e

    const-string v1, "CTG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_166

    .line 574
    :cond_11e
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EfCsimImsimLoaded set gsm.sim.cdmaoperator.numeric="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 575
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v0

    const-string v1, "gsm.sim.cdmaoperator.numeric"

    invoke-static {v0, v1, p1}, Lcom/android/internal/telephony/uicc/IccUtils;->setUiccProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;)V

    .line 578
    invoke-static {}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$sfgetPROJECT_SIM_NUM()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_15c

    .line 579
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "IS_CTC"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 582
    :cond_15c
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget v0, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mIccType:I

    if-eq v0, v2, :cond_168

    const/4 v1, 0x4

    if-ne v0, v1, :cond_166

    goto :goto_168

    :cond_166
    move v0, v4

    goto :goto_169

    :cond_168
    :goto_168
    move v0, v3

    .line 587
    :goto_169
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyFeatures;->isChnGlobalModel(I)Z

    move-result v1

    if-eqz v1, :cond_258

    .line 588
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdUsingPhoneId(I)I

    move-result v1

    .line 589
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    .line 590
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v5, v5, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v5

    if-nez v5, :cond_19c

    const-string v5, "voicecall_type"

    goto :goto_19e

    :cond_19c
    const-string v5, "voicecall_type2"

    .line 591
    :goto_19e
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v6, v6, Lcom/android/internal/telephony/uicc/IccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static {v6, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1af

    move v5, v3

    goto :goto_1b0

    :cond_1af
    move v5, v4

    .line 593
    :goto_1b0
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v6, v6, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .line 594
    instance-of v7, v6, Lcom/android/internal/telephony/GsmCdmaPhone;

    if-eqz v7, :cond_1c9

    check-cast v6, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v6

    if-nez v6, :cond_1c9

    goto :goto_1ca

    :cond_1c9
    move v3, v4

    .line 597
    :goto_1ca
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isRoaming="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", volteEnabled="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isCdmaPhone="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_21b

    if-nez v3, :cond_1f8

    if-eqz v5, :cond_21b

    if-nez v1, :cond_21b

    .line 599
    :cond_1f8
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EfCsimImsimLoaded set \'gsm.sim.operator.numeric\'="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, v0, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 601
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v0

    .line 600
    invoke-virtual {v1, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 604
    :cond_21b
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$mSetSimOp(Lcom/android/internal/telephony/uicc/RuimRecords;Ljava/lang/String;)V

    .line 607
    :try_start_220
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 608
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/IccRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-virtual {v0, p1, v1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V
    :try_end_239
    .catch Ljava/lang/NumberFormatException; {:try_start_220 .. :try_end_239} :catch_23a

    goto :goto_251

    :catch_23a
    move-exception p1

    .line 610
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Corrupt IMSI! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    .line 612
    :goto_251
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_258
    return-void

    .line 535
    :cond_259
    :goto_259
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimImsimLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string p1, "Invalid IMSI from EF_CSIM_IMSIM"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->loge(Ljava/lang/String;)V

    return-void
.end method
