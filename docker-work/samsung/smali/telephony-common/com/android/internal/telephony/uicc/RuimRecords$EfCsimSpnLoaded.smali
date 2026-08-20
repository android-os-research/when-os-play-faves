.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimSpnLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .registers 2

    .line 407
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public blacklist getEfName()Ljava/lang/String;
    .registers 1

    const-string p0, "EF_CSIM_SPN"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 10

    .line 415
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 416
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSIM_SPN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 416
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_29

    move v2, v3

    goto :goto_2a

    :cond_29
    move v2, v1

    :goto_2a
    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    .line 422
    aget-byte v0, p1, v3

    const/4 v2, 0x2

    .line 423
    aget-byte v3, p1, v2

    const/16 v3, 0x20

    new-array v4, v3, [B

    .line 425
    array-length v5, p1

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    if-ge v5, v3, :cond_3d

    array-length v5, p1

    sub-int/2addr v5, v6

    goto :goto_3e

    :cond_3d
    move v5, v3

    .line 426
    :goto_3e
    invoke-static {p1, v6, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v1

    :goto_42
    if-ge p1, v3, :cond_4f

    .line 430
    aget-byte v5, v4, p1

    const/16 v7, 0xff

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_4c

    goto :goto_4f

    :cond_4c
    add-int/lit8 p1, p1, 0x1

    goto :goto_42

    :cond_4f
    :goto_4f
    const-string v3, ""

    if-nez p1, :cond_59

    .line 434
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    return-void

    :cond_59
    if-eqz v0, :cond_e7

    const/16 v5, 0x8

    if-eq v0, v2, :cond_8f

    if-eq v0, v6, :cond_81

    const/4 v2, 0x4

    if-eq v0, v2, :cond_73

    if-eq v0, v5, :cond_e7

    const/16 v2, 0x9

    if-eq v0, v2, :cond_81

    .line 472
    :try_start_6a
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v0, "SPN encoding not supported"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_10b

    .line 469
    :cond_73
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-16"

    invoke-direct {v2, v4, v1, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto/16 :goto_10b

    .line 445
    :cond_81
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    mul-int/2addr p1, v5

    div-int/lit8 p1, p1, 0x7

    .line 446
    invoke-static {v4, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object p1

    .line 445
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto/16 :goto_10b

    .line 449
    :cond_8f
    new-instance v0, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v0, v4, v1, p1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 456
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$smisPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e1

    .line 457
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v2

    const-string v6, "CscFeature_RIL_KddiSIMOta"

    invoke-virtual {v2, v6}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b7

    const-string v2, "KDI"

    const-string v6, "ril.simoperator"

    .line 458
    invoke-static {v6, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b7

    goto :goto_e1

    .line 462
    :cond_b7
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Some corruption in SPN decoding = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 463
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v2, "Using ENCODING_GSM_7BIT_ALPHABET scheme..."

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    mul-int/2addr p1, v5

    div-int/lit8 p1, p1, 0x7

    .line 465
    invoke-static {v4, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object p1

    .line 464
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto :goto_10b

    .line 460
    :cond_e1
    :goto_e1
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto :goto_10b

    .line 441
    :cond_e7
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-direct {v2, v4, v1, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_f3} :catch_f4

    goto :goto_10b

    :catch_f4
    move-exception p1

    .line 475
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spn decode error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 477
    :goto_10b
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 478
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spnCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-boolean v1, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 479
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 480
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object p0

    .line 479
    invoke-virtual {v0, p1, p0}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    return-void
.end method
