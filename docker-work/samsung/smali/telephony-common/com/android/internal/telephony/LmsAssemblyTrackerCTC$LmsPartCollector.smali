.class Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;
.super Ljava/lang/Object;
.source "LmsAssemblyTrackerCTC.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LmsPartCollector"
.end annotation


# instance fields
.field private blacklist mDestPort:I

.field private final blacklist mIsCdmaWapPush:Z

.field private final blacklist mMessageCount:I

.field private final blacklist mPdus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(IZ)V
    .registers 4

    .line 467
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 463
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mPdus:Ljava/util/Map;

    const/4 v0, -0x1

    .line 465
    iput v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mDestPort:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_15

    .line 471
    iput p1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mMessageCount:I

    .line 472
    iput-boolean p2, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mIsCdmaWapPush:Z

    return-void

    .line 469
    :cond_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "messageCount should be >= 1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method blacklist add(I[BLjava/lang/Integer;)V
    .registers 5

    .line 477
    iget-boolean v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mIsCdmaWapPush:Z

    if-nez v0, :cond_6

    add-int/lit8 p1, p1, -0x1

    :cond_6
    if-ltz p1, :cond_1e

    .line 481
    iget v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mMessageCount:I

    if-ge p1, v0, :cond_1e

    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mPdus:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p3, :cond_1d

    .line 488
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mDestPort:I

    :cond_1d
    return-void

    .line 482
    :cond_1e
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Illegal sequence number"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method blacklist addAllFromCursor(Landroid/database/Cursor;III)V
    .registers 9

    .line 493
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 494
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 495
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 497
    invoke-interface {p1, p4}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_21

    .line 498
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 501
    :cond_21
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->add(I[BLjava/lang/Integer;)V

    goto :goto_0

    :cond_25
    return-void
.end method

.method blacklist getDestPort()I
    .registers 1

    .line 518
    iget p0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mDestPort:I

    return p0
.end method

.method blacklist getPdusSequence()[[B
    .registers 5

    .line 510
    iget v0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mMessageCount:I

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 511
    :goto_5
    iget v2, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mMessageCount:I

    if-ge v1, v2, :cond_1a

    .line 512
    iget-object v2, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mPdus:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_1a
    return-object v0
.end method

.method blacklist isEmpty()Z
    .registers 1

    .line 506
    iget-object p0, p0, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC$LmsPartCollector;->mPdus:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    return p0
.end method
