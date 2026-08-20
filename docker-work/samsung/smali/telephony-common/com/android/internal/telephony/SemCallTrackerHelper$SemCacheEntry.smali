.class public Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;
.super Ljava/lang/Object;
.source "SemCallTrackerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SemCallTrackerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SemCacheEntry"
.end annotation


# instance fields
.field private blacklist mAudioQuality:I

.field private blacklist mCallDirection:I

.field private blacklist mConnectElapsedTime:J

.field private blacklist mConnectTime:J

.field private blacklist mNamePresent:I

.field private blacklist mNumPresent:I


# direct methods
.method public constructor blacklist <init>(JJIIII)V
    .registers 9

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-wide p1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mConnectTime:J

    .line 272
    iput-wide p3, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mConnectElapsedTime:J

    .line 273
    iput p5, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mCallDirection:I

    .line 274
    iput p6, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mNumPresent:I

    .line 275
    iput p7, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mNamePresent:I

    .line 276
    iput p8, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mAudioQuality:I

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Z)V
    .registers 5

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemCacheEntry - isHost: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/SemCallTrackerHelper;->-$$Nest$smlog(Ljava/lang/String;)V

    if-eqz p2, :cond_1e

    .line 285
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    goto :goto_22

    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_22
    iput-wide v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mConnectTime:J

    if-eqz p2, :cond_2b

    .line 286
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    move-result-wide v0

    goto :goto_2f

    :cond_2b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    :goto_2f
    iput-wide v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mConnectElapsedTime:J

    const/4 v0, 0x1

    .line 287
    iput v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mCallDirection:I

    if-eqz p2, :cond_3f

    .line 288
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    if-eqz v1, :cond_3f

    const/4 v1, 0x0

    .line 289
    iput v1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mCallDirection:I

    :cond_3f
    if-eqz p2, :cond_45

    .line 291
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getNumberPresentation()I

    move-result v0

    :cond_45
    iput v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mNumPresent:I

    if-eqz p2, :cond_4e

    .line 292
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result p2

    goto :goto_4f

    :cond_4e
    const/4 p2, 0x3

    :goto_4f
    iput p2, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mNamePresent:I

    .line 293
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAudioQuality()I

    move-result p1

    iput p1, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mAudioQuality:I

    return-void
.end method


# virtual methods
.method public blacklist getAudioQuality()I
    .registers 1

    .line 317
    iget p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mAudioQuality:I

    return p0
.end method

.method public blacklist getCallDirection()I
    .registers 1

    .line 305
    iget p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mCallDirection:I

    return p0
.end method

.method public blacklist getConnectElapsedTime()J
    .registers 3

    .line 301
    iget-wide v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mConnectElapsedTime:J

    return-wide v0
.end method

.method public blacklist getConnectTime()J
    .registers 3

    .line 297
    iget-wide v0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mConnectTime:J

    return-wide v0
.end method

.method public blacklist getNamePresent()I
    .registers 1

    .line 313
    iget p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mNamePresent:I

    return p0
.end method

.method public blacklist getNumPresent()I
    .registers 1

    .line 309
    iget p0, p0, Lcom/android/internal/telephony/SemCallTrackerHelper$SemCacheEntry;->mNumPresent:I

    return p0
.end method
