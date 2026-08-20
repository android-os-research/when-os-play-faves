.class Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;
.super Ljava/lang/Object;
.source "SmsBroadcastUndelivered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SmsBroadcastUndelivered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SmsReferenceKey"
.end annotation


# instance fields
.field final blacklist mAddress:Ljava/lang/String;

.field final blacklist mFormat:Ljava/lang/String;

.field final blacklist mIs3gpp2:Z

.field final blacklist mMessageCount:I

.field final blacklist mQuery:Ljava/lang/String;

.field final blacklist mReferenceNumber:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/InboundSmsTracker;)V
    .registers 3

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    .line 423
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    .line 424
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    .line 425
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getQueryForSegments()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mQuery:Ljava/lang/String;

    .line 426
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mIs3gpp2:Z

    .line 427
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mFormat:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 446
    instance-of v0, p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    .line 447
    check-cast p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;

    .line 448
    iget-object v0, p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget v0, p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    iget v2, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    if-ne v0, v2, :cond_1e

    iget p1, p1, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    iget p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    if-ne p1, p0, :cond_1e

    const/4 v1, 0x1

    :cond_1e
    return v1
.end method

.method blacklist getDeleteWhere()Ljava/lang/String;
    .registers 1

    .line 436
    iget-object p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mQuery:Ljava/lang/String;

    return-object p0
.end method

.method blacklist getDeleteWhereArgs()[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 431
    iget-object v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    .line 432
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 441
    iget v0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mReferenceNumber:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mMessageCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/android/internal/telephony/SmsBroadcastUndelivered$SmsReferenceKey;->mAddress:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
