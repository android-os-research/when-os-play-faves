.class public Lcom/android/internal/telephony/uicc/UiccPkcs15;
.super Landroid/os/Handler;
.source "UiccPkcs15.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;,
        Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;
    }
.end annotation


# static fields
.field public static final blacklist AC_OID:Ljava/lang/String; = "060A2A864886FC6B81480101"


# instance fields
.field private blacklist mChannelId:I

.field private blacklist mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

.field private blacklist mLoadedCallback:Landroid/os/Message;

.field private blacklist mPkcs15Selector:Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;

.field private blacklist mRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChannelId(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I
    .registers 1

    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUiccProfile(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccProfile;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmChannelId(Lcom/android/internal/telephony/uicc/UiccPkcs15;I)V
    .registers 2

    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smlog(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V
    .registers 4

    .line 194
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, -0x1

    .line 181
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    const-string v0, "Creating UiccPkcs15"

    .line 195
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    .line 196
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 197
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mLoadedCallback:Landroid/os/Message;

    .line 198
    new-instance p1, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;-><init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Landroid/os/Message;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mPkcs15Selector:Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;

    return-void
.end method

.method private blacklist cleanUp()V
    .registers 4

    const-string v0, "cleanUp"

    .line 291
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    .line 292
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    if-ltz v0, :cond_16

    .line 293
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    const/4 v0, -0x1

    .line 295
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    .line 297
    :cond_16
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mLoadedCallback:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static blacklist log(Ljava/lang/String;)V
    .registers 2

    const-string v0, "UiccPkcs15"

    .line 488
    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist parseAccf(Ljava/lang/String;)V
    .registers 5

    .line 467
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 468
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v1, "30"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 469
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v2, "04"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 471
    :try_start_15
    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 472
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 473
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 474
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_34} :catch_35
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_15 .. :try_end_34} :catch_35

    goto :goto_0

    :catch_35
    move-exception p0

    .line 477
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    :cond_4a
    return-void
.end method

.method private blacklist parseAcmf(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const-string p0, "04"

    const-string v0, "30"

    const/4 v1, 0x0

    .line 400
    :try_start_5
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 401
    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 402
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 403
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parseLength(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "08"

    .line 405
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_29

    const-string p0, "Error: refresh tag in ACMF must be 8."

    .line 406
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    return-object v1

    .line 409
    :cond_29
    invoke-virtual {v2, p1, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 410
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 411
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 412
    invoke-virtual {v2, p1, p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 413
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 414
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object p0
    :try_end_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_46} :catch_47
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_46} :catch_47

    return-object p0

    :catch_47
    move-exception p0

    .line 416
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method private blacklist parseAcrf(Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    const-string p0, "04"

    const-string v0, "A0"

    const/4 v1, 0x0

    .line 428
    :cond_5
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_71

    .line 432
    new-instance v2, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v3, "30"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 434
    :try_start_13
    invoke-virtual {v2, p1, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 435
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 436
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 437
    new-instance v5, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 438
    new-instance v6, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v6, p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 439
    new-instance v7, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v7, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 440
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v5, v2, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 447
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v6, v4, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    const-string v4, "FFFFFFFFFFFF"

    .line 449
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 450
    invoke-virtual {v7, v2, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 451
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 452
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v1
    :try_end_5b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_5b} :catch_5c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_13 .. :try_end_5b} :catch_5c

    goto :goto_5

    :catch_5c
    move-exception p0

    .line 457
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    :cond_71
    return-object v1
.end method

.method private blacklist parseDodf(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string p0, "A0"

    const-string v0, "30"

    .line 344
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a4

    .line 345
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v2, "A1"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 347
    :try_start_12
    invoke-virtual {v1, p1, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 348
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 350
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 351
    invoke-virtual {v4, v1, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 354
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v4, v1, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 357
    invoke-virtual {v1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 359
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v4, v1, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 363
    :cond_3b
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 364
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 365
    invoke-virtual {v4, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 366
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 368
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {v4, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 370
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 372
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v5, "06"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v4, v1, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 375
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "060A2A864886FC6B81480101"

    .line 376
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 378
    invoke-virtual {v4, v1, v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    .line 379
    new-instance p1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 380
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v1, "04"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p1, p0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 382
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 383
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object p0
    :try_end_8e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_8e} :catch_8f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_12 .. :try_end_8e} :catch_8f

    return-object p0

    :catch_8f
    move-exception p0

    .line 388
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    :cond_a4
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist parseOdf(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 322
    :try_start_0
    new-instance p0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v0, "A7"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 323
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 325
    new-instance p1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v0, "30"

    invoke-direct {p1, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 326
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v1, "04"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 327
    invoke-virtual {p1, p0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 328
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 329
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object p0
    :try_end_2c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_2c} :catch_2d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    move-exception p0

    .line 331
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist startFromAcrf()V
    .registers 4

    const-string v0, "Fallback to use ACRF_PATH"

    .line 284
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-string v2, "4300"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->loadFile(Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 286
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->cleanUp()V

    :cond_17
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5

    .line 495
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    if-eqz p1, :cond_30

    const-string p1, " mRules:"

    .line 496
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 498
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_30
    return-void
.end method

.method public blacklist getRules()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 484
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    return-object p0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    .line 204
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 206
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_120

    .line 279
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown event "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UiccPkcs15"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_11f

    .line 268
    :pswitch_39
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_46

    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_46

    .line 269
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->parseAccf(Ljava/lang/String;)V

    .line 272
    :cond_46
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->cleanUp()V

    goto/16 :goto_11f

    .line 256
    :pswitch_4b
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_74

    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_74

    .line 257
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    .line 258
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->parseAcrf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 259
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->loadFile(Ljava/lang/String;Landroid/os/Message;)Z

    move-result p1

    if-nez p1, :cond_11f

    .line 260
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->cleanUp()V

    goto/16 :goto_11f

    .line 263
    :cond_74
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->cleanUp()V

    goto/16 :goto_11f

    .line 245
    :pswitch_79
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_99

    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_99

    .line 246
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->parseAcmf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 247
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->loadFile(Ljava/lang/String;Landroid/os/Message;)Z

    move-result p1

    if-nez p1, :cond_11f

    .line 248
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->startFromAcrf()V

    goto/16 :goto_11f

    .line 251
    :cond_99
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->startFromAcrf()V

    goto/16 :goto_11f

    .line 234
    :pswitch_9e
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_bd

    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_bd

    .line 235
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->parseDodf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->loadFile(Ljava/lang/String;Landroid/os/Message;)Z

    move-result p1

    if-nez p1, :cond_11f

    .line 237
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->startFromAcrf()V

    goto :goto_11f

    .line 240
    :cond_bd
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->startFromAcrf()V

    goto :goto_11f

    .line 223
    :pswitch_c1
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_e0

    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_e0

    .line 224
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->parseOdf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 225
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->loadFile(Ljava/lang/String;Landroid/os/Message;)Z

    move-result p1

    if-nez p1, :cond_11f

    .line 226
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->startFromAcrf()V

    goto :goto_11f

    .line 229
    :cond_e0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->startFromAcrf()V

    goto :goto_11f

    .line 208
    :pswitch_e4
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_104

    .line 211
    new-instance p1, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    const/4 v0, 0x2

    .line 212
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "5031"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->loadFile(Ljava/lang/String;Landroid/os/Message;)Z

    move-result p1

    if-nez p1, :cond_11f

    .line 213
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->startFromAcrf()V

    goto :goto_11f

    .line 216
    :cond_104
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select pkcs15 failed: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    .line 218
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mLoadedCallback:Landroid/os/Message;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_11f
    :goto_11f
    :pswitch_11f
    return-void

    :pswitch_data_120
    .packed-switch 0x1
        :pswitch_e4
        :pswitch_c1
        :pswitch_9e
        :pswitch_79
        :pswitch_4b
        :pswitch_39
        :pswitch_11f
    .end packed-switch
.end method
