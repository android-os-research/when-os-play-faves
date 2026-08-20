.class public Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;
.super Ljava/lang/Object;
.source "SemScanResultUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;,
        Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "SemScanResultUtil"


# direct methods
.method static bridge synthetic -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->DBG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNetworkFromScanResult(Landroid/net/wifi/ScanResult;)Landroid/net/wifi/WifiConfiguration;
    .registers 3

    .line 336
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 337
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->createQuotedSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 338
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->generateSecurityParamsListFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    move-result-object p0

    .line 339
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_19

    const/4 p0, 0x0

    return-object p0

    .line 342
    :cond_19
    invoke-virtual {v0, p0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(Ljava/util/List;)V

    return-object v0
.end method

.method public static createQuotedSsid(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static generateSecurityParamsListFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/SecurityParams;",
            ">;"
        }
    .end annotation

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForOweTransitionNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eqz v1, :cond_1c

    .line 357
    invoke-static {v3}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-static {v2}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 362
    :cond_1c
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForOweNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 363
    invoke-static {v2}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 366
    :cond_2a
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForOpenNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 367
    invoke-static {v3}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 373
    :cond_38
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWepNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_47

    const/4 p0, 0x1

    .line 374
    invoke-static {p0}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 380
    :cond_47
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWapiPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_56

    const/4 p0, 0x7

    .line 381
    invoke-static {p0}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 387
    :cond_56
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWapiCertNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_66

    const/16 p0, 0x8

    .line 388
    invoke-static {p0}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 394
    :cond_66
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x2

    if-eqz v1, :cond_83

    .line 395
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 396
    invoke-static {v3}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    invoke-static {v2}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 401
    :cond_83
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 402
    invoke-static {v3}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 405
    :cond_91
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 406
    invoke-static {v2}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 409
    :cond_9f
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForDppNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_af

    const/16 p0, 0xd

    .line 410
    invoke-static {p0}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 416
    :cond_af
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForEapSuiteBNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_be

    const/4 v1, 0x5

    .line 417
    invoke-static {v1}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f1

    .line 419
    :cond_be
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWpa3EnterpriseTransitionNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    const/16 v2, 0x9

    const/4 v3, 0x3

    if-eqz v1, :cond_d6

    .line 420
    invoke-static {v3}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    invoke-static {v2}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f1

    .line 424
    :cond_d6
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWpa3EnterpriseOnlyNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_e4

    .line 425
    invoke-static {v2}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f1

    .line 427
    :cond_e4
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 428
    invoke-static {v3}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_f1
    :goto_f1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForPasspointR1R2Network(Landroid/net/wifi/ScanResult;)Z

    move-result v1

    if-eqz v1, :cond_100

    const/16 v1, 0xb

    .line 434
    invoke-static {v1}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    :cond_100
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForPasspointR3Network(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-eqz p0, :cond_10f

    const/16 p0, 0xc

    .line 438
    invoke-static {p0}, Landroid/net/wifi/SecurityParams;->createSecurityParamsBySecurityType(I)Landroid/net/wifi/SecurityParams;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10f
    return-object v0
.end method

.method public static isScanResultForChargablePublicNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 5

    .line 494
    new-instance v0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;-><init>()V

    .line 495
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object p0

    .line 496
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult$InformationElement;

    .line 497
    iget v2, v1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    const/16 v3, 0x6b

    if-ne v2, v3, :cond_d

    .line 499
    :try_start_1f
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->from(Landroid/net/wifi/ScanResult$InformationElement;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_d

    :catch_23
    move-exception v1

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse Interworking IE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemScanResultUtil"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 506
    :cond_3f
    iget-object p0, v0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking;->ant:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking$Ant;

    const/4 v0, 0x0

    if-nez p0, :cond_45

    return v0

    .line 507
    :cond_45
    sget-object v1, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking$Ant;->ChargeablePublic:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Interworking$Ant;

    if-ne p0, v1, :cond_4a

    const/4 v0, 0x1

    :cond_4a
    return v0
.end method

.method public static isScanResultForDppNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 252
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "DPP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3

    .line 81
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP/SHA1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP/SHA256"

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "FT/EAP"

    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP-FILS"

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 85
    :cond_28
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWpa3EnterpriseOnlyNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 86
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWpa3EnterpriseTransitionNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-nez p0, :cond_36

    const/4 p0, 0x1

    goto :goto_37

    :cond_36
    const/4 p0, 0x0

    :goto_37
    return p0
.end method

.method public static isScanResultForEapSuiteBNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3

    .line 184
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "SUITE_B_192"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "RSN"

    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "TKIP"

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 188
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForPmfMandatoryNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    return p0
.end method

.method public static isScanResultForFilsSha256Network(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 236
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "FILS-SHA256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isScanResultForFilsSha384Network(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 244
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "FILS-SHA384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isScanResultForOpenNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 311
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWepNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 312
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 313
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWpa3EnterpriseTransitionNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 314
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWpa3EnterpriseOnlyNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 315
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWapiPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 316
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWapiCertNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 317
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForEapSuiteBNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 318
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForDppNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 319
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForUnknownAkmNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-nez p0, :cond_44

    const/4 p0, 0x1

    goto :goto_45

    :cond_44
    const/4 p0, 0x0

    :goto_45
    return p0
.end method

.method public static isScanResultForOpenOnlyNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 283
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForOpenNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 284
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForOweNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isScanResultForOweNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 204
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "OWE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isScanResultForOweOnlyNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 291
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForOweTransitionNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 292
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForOweNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isScanResultForOweTransitionNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 212
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "OWE_TRANSITION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isScanResultForPasspointR1R2Network(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 106
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 108
    :cond_8
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result p0

    return p0
.end method

.method public static isScanResultForPasspointR3Network(Landroid/net/wifi/ScanResult;)Z
    .registers 3

    .line 122
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 123
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWpa3EnterpriseOnlyNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 124
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForEapSuiteBNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    .line 127
    :cond_14
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForPmfMandatoryNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_1b

    return v1

    .line 129
    :cond_1b
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->isPasspointNetwork()Z

    move-result p0

    return p0
.end method

.method private static isScanResultForPmfCapableNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 94
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "[MFPC]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static isScanResultForPmfMandatoryNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 90
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "[MFPR]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 53
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "PSK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isScanResultForPskOnlyNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 267
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 268
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isScanResultForPskSaeTransitionNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3

    .line 228
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "SAE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public static isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 220
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "SAE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isScanResultForSaeOnlyNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 275
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForPskNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 276
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForSaeNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static isScanResultForUnknownAkmNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 260
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isScanResultForWapiCertNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 70
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "WAPI-CERT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isScanResultForWapiPskNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 61
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "WAPI-PSK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isScanResultForWepNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 196
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "WEP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static isScanResultForWpa2EnterpriseOnlyNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    .line 300
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForEapNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 301
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWpa3EnterpriseTransitionNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 302
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForWpa3EnterpriseOnlyNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public static isScanResultForWpa3EnterpriseOnlyNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3

    .line 165
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP/SHA256"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP/SHA1"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "RSN"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "TKIP"

    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 170
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForPmfMandatoryNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 171
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForPmfCapableNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-eqz p0, :cond_40

    const/4 p0, 0x1

    goto :goto_41

    :cond_40
    const/4 p0, 0x0

    :goto_41
    return p0
.end method

.method public static isScanResultForWpa3EnterpriseTransitionNetwork(Landroid/net/wifi/ScanResult;)Z
    .registers 3

    .line 144
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP/SHA1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP/SHA256"

    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "RSN"

    .line 146
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "TKIP"

    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 149
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForPmfMandatoryNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result v0

    if-nez v0, :cond_40

    .line 150
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->isScanResultForPmfCapableNetwork(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    if-eqz p0, :cond_40

    const/4 p0, 0x1

    goto :goto_41

    :cond_40
    const/4 p0, 0x0

    :goto_41
    return p0
.end method

.method public static redactBssid(Landroid/net/MacAddress;I)Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    .line 473
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 474
    invoke-virtual {p0}, Landroid/net/MacAddress;->toByteArray()[B

    move-result-object p0

    const/4 v1, 0x6

    if-ltz p1, :cond_13

    if-le p1, v1, :cond_14

    :cond_13
    const/4 p1, 0x4

    :cond_14
    const/4 v2, 0x0

    move v3, v2

    :goto_16
    if-ge v3, v1, :cond_3f

    if-ge v3, p1, :cond_20

    const-string v4, "xx"

    .line 482
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_20
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 484
    aget-byte v5, p0, v3

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%02X"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_34
    const/4 v4, 0x5

    if-eq v3, v4, :cond_3c

    const-string v4, ":"

    .line 487
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 490
    :cond_3f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static validate(Landroid/net/wifi/ScanResult;)Z
    .registers 2

    if-eqz p0, :cond_10

    .line 462
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object p0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public static validateScanResultList(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "SemScanResultUtil"

    if-eqz p0, :cond_40

    .line 448
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_40

    .line 452
    :cond_c
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 453
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil;->validate(Landroid/net/wifi/ScanResult;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 454
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ScanResult: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_31

    const-string v2, ""

    goto :goto_33

    :cond_31
    iget-object v2, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :goto_33
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3e
    const/4 p0, 0x1

    return p0

    :cond_40
    :goto_40
    const-string p0, "Empty or null ScanResult list"

    .line 449
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
