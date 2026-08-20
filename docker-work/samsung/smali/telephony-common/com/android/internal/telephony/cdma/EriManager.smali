.class public Lcom/android/internal/telephony/cdma/EriManager;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
        Lcom/android/internal/telephony/cdma/EriManager$EriFile;
    }
.end annotation


# static fields
.field public static final blacklist ERI_FROM_XML:I


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

.field private blacklist mEriFileSource:I

.field private blacklist mIsEriFileLoaded:Z

.field private final blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;I)V
    .registers 4

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 105
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 106
    iput p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 107
    new-instance p1, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    return-void
.end method

.method private greylist getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .registers 11
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 338
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    if-eqz v0, :cond_16

    .line 339
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 342
    new-instance p1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget p2, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v1, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {p1, p0, p2, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p1

    :cond_16
    const v0, 0x1040bcd

    const v1, 0x1040bd1

    const v2, 0x1040bcc

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_1cc

    .line 447
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    const-string v7, "EriManager"

    if-nez v6, :cond_17e

    const-string p1, "ERI File not loaded"

    .line 449
    invoke-static {v7, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le p2, v3, :cond_13e

    .line 452
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 455
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 456
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v3, v4, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_1ca

    .line 439
    :pswitch_43
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040bd0

    .line 442
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_1ca

    .line 432
    :pswitch_57
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040bcf

    .line 435
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_1ca

    .line 425
    :pswitch_6b
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040bce

    .line 428
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_1ca

    .line 418
    :pswitch_7f
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040bd8

    .line 421
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_1ca

    .line 411
    :pswitch_93
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040bd7

    .line 414
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_1ca

    .line 404
    :pswitch_a7
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040bd6

    .line 407
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_1ca

    .line 397
    :pswitch_bb
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040bd5

    .line 400
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_1ca

    .line 390
    :pswitch_cf
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040bd4

    .line 393
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_1ca

    .line 383
    :pswitch_e3
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040bd3

    .line 386
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_1ca

    .line 376
    :pswitch_f7
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040bd2

    .line 379
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_1ca

    .line 367
    :pswitch_10b
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 370
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v3, v4, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_1ca

    .line 360
    :pswitch_11c
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 363
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v4, v5, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_1ca

    .line 353
    :pswitch_12d
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 356
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v5, v5, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_1ca

    :cond_13e
    if-eqz p2, :cond_16e

    if-eq p2, v4, :cond_15e

    if-eq p2, v3, :cond_14e

    .line 485
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 p1, -0x1

    const-string v0, "ERI text"

    invoke-direct {p2, p0, p1, p1, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_1ca

    .line 477
    :cond_14e
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 480
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 481
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v3, v4, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto :goto_1ca

    .line 469
    :cond_15e
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 472
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 473
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v4, v5, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto :goto_1ca

    .line 461
    :cond_16e
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 464
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 465
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v5, v5, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto :goto_1ca

    .line 490
    :cond_17e
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object p1

    .line 491
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    if-nez p1, :cond_1bf

    if-nez v0, :cond_1b3

    .line 498
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERI defRoamInd "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not found in ERI file ...on"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 503
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 504
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v5, v5, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto :goto_1ca

    .line 510
    :cond_1b3
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget p1, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v1, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {p2, p0, p1, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto :goto_1ca

    .line 517
    :cond_1bf
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v0, p1, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v1, p1, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object p1, p1, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {p2, p0, v0, v1, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    :goto_1ca
    return-object p2

    nop

    :pswitch_data_1cc
    .packed-switch 0x0
        :pswitch_12d
        :pswitch_11c
        :pswitch_10b
        :pswitch_f7
        :pswitch_e3
        :pswitch_cf
        :pswitch_bb
        :pswitch_a7
        :pswitch_93
        :pswitch_7f
        :pswitch_6b
        :pswitch_57
        :pswitch_43
    .end packed-switch
.end method

.method private blacklist getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;
    .registers 4

    .line 326
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 327
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object p0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/cdma/EriInfo;

    return-object p0

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method private blacklist loadEriFileFromFileSystem()V
    .registers 1

    return-void
.end method

.method private blacklist loadEriFileFromModem()V
    .registers 1

    return-void
.end method

.method private blacklist loadEriFileFromXml()V
    .registers 18

    move-object/from16 v1, p0

    const-string v2, "CallPromptId"

    const-string v3, "EriManager"

    .line 160
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v4, 0x0

    :try_start_d
    const-string v5, "loadEriFileFromXml: check for alternate file"

    .line 163
    invoke-static {v3, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SPR"

    .line 165
    iget-object v6, v1, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_31

    .line 166
    new-instance v0, Ljava/io/FileInputStream;

    const-string v5, "/system/etc/eri_spr.xml"

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_2b} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_d .. :try_end_2b} :catch_6c

    :try_start_2b
    const-string v5, "loadEriFileFromXml: find custom(spr) ERI file"

    .line 167
    invoke-static {v3, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_30
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_30} :catch_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2b .. :try_end_30} :catch_6d

    goto :goto_5d

    :cond_31
    :try_start_31
    const-string v5, "USC"

    .line 168
    iget-object v6, v1, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_50

    .line 169
    new-instance v0, Ljava/io/FileInputStream;

    const-string v5, "/system/etc/eri_ua.xml"

    invoke-direct {v0, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_4a
    .catch Ljava/io/FileNotFoundException; {:try_start_31 .. :try_end_4a} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_31 .. :try_end_4a} :catch_6c

    :try_start_4a
    const-string v5, "loadEriFileFromXml: find custom(ua) ERI file"

    .line 170
    invoke-static {v3, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catch Ljava/io/FileNotFoundException; {:try_start_4a .. :try_end_4f} :catch_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4a .. :try_end_4f} :catch_6d

    goto :goto_5d

    .line 173
    :cond_50
    :try_start_50
    new-instance v5, Ljava/io/FileInputStream;

    const v6, 0x10401a7

    .line 174
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/io/FileNotFoundException; {:try_start_50 .. :try_end_5c} :catch_73
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_50 .. :try_end_5c} :catch_6c

    move-object v0, v5

    .line 178
    :goto_5d
    :try_start_5d
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 179
    invoke-interface {v5, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v6, "loadEriFileFromXml: opened alternate file"

    .line 180
    invoke-static {v3, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_69
    .catch Ljava/io/FileNotFoundException; {:try_start_5d .. :try_end_69} :catch_74
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5d .. :try_end_69} :catch_6d

    move-object v6, v5

    move-object v5, v0

    goto :goto_7b

    :catch_6c
    move-object v0, v4

    :catch_6d
    const-string v5, "loadEriFileFromXml: no parser for alternate file"

    .line 185
    invoke-static {v3, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_79

    :catch_73
    move-object v0, v4

    :catch_74
    const-string v5, "loadEriFileFromXml: no alternate file"

    .line 182
    invoke-static {v3, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_79
    move-object v5, v0

    move-object v6, v4

    :goto_7b
    if-nez v6, :cond_f2

    .line 192
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const-string v7, "carrier_config"

    .line 193
    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_9d

    .line 195
    iget-object v7, v1, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_9d

    const-string v7, "carrier_eri_file_name_string"

    .line 197
    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_9e

    :cond_9d
    move-object v7, v4

    .line 201
    :goto_9e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "eriFile = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_bf

    const-string v0, "loadEriFileFromXml: Can\'t find ERI file to load"

    .line 204
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_be

    .line 208
    :try_start_bb
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_be} :catch_be

    :catch_be
    :cond_be
    return-void

    .line 218
    :cond_bf
    :try_start_bf
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 219
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {v6, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_bf .. :try_end_d0} :catch_d1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_bf .. :try_end_d0} :catch_d1

    goto :goto_f2

    :catch_d1
    move-exception v0

    .line 221
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadEriFileFromXml: no parser for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Exception = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f2
    :goto_f2
    :try_start_f2
    const-string v0, "EriFile"

    .line 227
    invoke-static {v6, v0}, Lcom/android/internal/telephony/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 228
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const-string v7, "VersionNumber"

    .line 229
    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 228
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 230
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const-string v7, "NumberOfEriEntries"

    .line 231
    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 230
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 232
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const-string v7, "EriFileType"

    .line 233
    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 232
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    const/4 v0, 0x0

    .line 237
    :cond_122
    :goto_122
    invoke-static {v6}, Lcom/android/internal/telephony/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 238
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_18d

    .line 240
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    if-eq v0, v2, :cond_156

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error Parsing ERI file: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v4, v4, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " defined, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " parsed!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadEriFileFromXml: eri parsing successful, file loaded. ver = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", # of entries = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 271
    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z
    :try_end_17d
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_17d} :catch_223
    .catchall {:try_start_f2 .. :try_end_17d} :catchall_221

    .line 276
    instance-of v0, v6, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_186

    .line 277
    check-cast v6, Landroid/content/res/XmlResourceParser;

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_186
    if-eqz v5, :cond_236

    .line 281
    :goto_188
    :try_start_188
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_18b
    .catch Ljava/io/IOException; {:try_start_188 .. :try_end_18b} :catch_236

    goto/16 :goto_236

    .line 244
    :cond_18d
    :try_start_18d
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1cb

    const-string v7, "Id"

    .line 245
    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "CallPromptText"

    .line 246
    invoke-interface {v6, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-ltz v7, :cond_1b0

    const/4 v9, 0x2

    if-gt v7, v9, :cond_1b0

    .line 248
    iget-object v9, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    aput-object v8, v9, v7

    goto/16 :goto_122

    .line 250
    :cond_1b0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error Parsing ERI file: found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " CallPromptId"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_122

    :cond_1cb
    const-string v8, "EriInfo"

    .line 253
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_122

    const-string v7, "RoamingIndicator"

    .line 255
    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 254
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v7, "IconIndex"

    .line 256
    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v7, "IconMode"

    .line 257
    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string v7, "EriText"

    .line 258
    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 260
    invoke-interface {v6, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 259
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const-string v7, "AlertId"

    .line 261
    invoke-interface {v6, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v0, v0, 0x1

    .line 263
    iget-object v7, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v8, Lcom/android/internal/telephony/cdma/EriInfo;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;II)V

    invoke-virtual {v7, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21f
    .catch Ljava/lang/Exception; {:try_start_18d .. :try_end_21f} :catch_223
    .catchall {:try_start_18d .. :try_end_21f} :catchall_221

    goto/16 :goto_122

    :catchall_221
    move-exception v0

    goto :goto_237

    :catch_223
    move-exception v0

    :try_start_224
    const-string v1, "Got exception while loading ERI file."

    .line 274
    invoke-static {v3, v1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_229
    .catchall {:try_start_224 .. :try_end_229} :catchall_221

    .line 276
    instance-of v0, v6, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_232

    .line 277
    check-cast v6, Landroid/content/res/XmlResourceParser;

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_232
    if-eqz v5, :cond_236

    goto/16 :goto_188

    :catch_236
    :cond_236
    :goto_236
    return-void

    .line 276
    :goto_237
    instance-of v1, v6, Landroid/content/res/XmlResourceParser;

    if-eqz v1, :cond_240

    .line 277
    check-cast v6, Landroid/content/res/XmlResourceParser;

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_240
    if-eqz v5, :cond_245

    .line 281
    :try_start_242
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_245
    .catch Ljava/io/IOException; {:try_start_242 .. :try_end_245} :catch_245

    .line 286
    :catch_245
    :cond_245
    throw v0
.end method


# virtual methods
.method public blacklist dispose()V
    .registers 2

    .line 111
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    return-void
.end method

.method public blacklist getCdmaEriIconIndex(II)I
    .registers 3

    .line 530
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    return p0
.end method

.method public blacklist getCdmaEriIconMode(II)I
    .registers 3

    .line 534
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object p0

    iget p0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    return p0
.end method

.method public blacklist getCdmaEriText(II)Ljava/lang/String;
    .registers 3

    .line 538
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object p0

    iget-object p0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getEriFileType()I
    .registers 1

    .line 310
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget p0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    return p0
.end method

.method public blacklist getEriFileVersion()I
    .registers 1

    .line 294
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget p0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    return p0
.end method

.method public blacklist getEriNumberOfEntries()I
    .registers 1

    .line 302
    iget-object p0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget p0, p0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    return p0
.end method

.method public blacklist isEriFileLoaded()Z
    .registers 1

    .line 318
    iget-boolean p0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    return p0
.end method

.method public blacklist loadEriFile()V
    .registers 3

    .line 117
    iget v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_10

    const/4 v1, 0x2

    if-eq v0, v1, :cond_c

    .line 128
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V

    goto :goto_13

    .line 119
    :cond_c
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromModem()V

    goto :goto_13

    .line 123
    :cond_10
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromFileSystem()V

    :goto_13
    return-void
.end method
