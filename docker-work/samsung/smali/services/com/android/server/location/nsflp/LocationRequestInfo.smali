.class public Lcom/android/server/location/nsflp/LocationRequestInfo;
.super Ljava/lang/Object;
.source "LocationRequestInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/server/location/nsflp/LocationRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public backgroundDuration:J

.field public backgroundTime:J

.field public interval:J

.field public isAllowed:Z

.field public isForeground:Z

.field public isHighPowerRequest:Z

.field public isListenerType:Z

.field public isPassive:Z

.field public isSystemApp:Z

.field public lastUpdateTime:J

.field public listenerId:Ljava/lang/String;

.field public maxWaitTime:J

.field public minUpdateInterval:J

.field public numUpdates:I

.field public packageName:Ljava/lang/String;

.field public pid:I

.field public provider:Ljava/lang/String;

.field public quality:I

.field public removedTime:J

.field public requestTime:J

.field public requester:I

.field public uid:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 407
    new-instance v0, Lcom/android/server/location/nsflp/LocationRequestInfo$1;

    invoke-direct {v0}, Lcom/android/server/location/nsflp/LocationRequestInfo$1;-><init>()V

    sput-object v0, Lcom/android/server/location/nsflp/LocationRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    const-wide/16 v1, 0x0

    .line 49
    iput-wide v1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    const/4 v1, 0x1

    .line 51
    iput-boolean v1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    .line 382
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    .line 383
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->versionName:Ljava/lang/String;

    .line 384
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->listenerId:Ljava/lang/String;

    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    .line 386
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->quality:I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requestTime:J

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->removedTime:J

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundTime:J

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundDuration:J

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->minUpdateInterval:J

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->maxWaitTime:J

    .line 394
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requester:I

    .line 395
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_65

    move v2, v1

    goto :goto_66

    :cond_65
    move v2, v0

    :goto_66
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    .line 396
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->numUpdates:I

    .line 397
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->uid:I

    .line 398
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->pid:I

    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_82

    move v2, v1

    goto :goto_83

    :cond_82
    move v2, v0

    :goto_83
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isListenerType:Z

    .line 400
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_8d

    move v2, v1

    goto :goto_8e

    :cond_8d
    move v2, v0

    :goto_8e
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isSystemApp:Z

    .line 401
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_98

    move v2, v1

    goto :goto_99

    :cond_98
    move v2, v0

    :goto_99
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    .line 402
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_a3

    move v2, v1

    goto :goto_a4

    :cond_a3
    move v2, v0

    :goto_a4
    iput-boolean v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    .line 403
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_b3

    move v0, v1

    :cond_b3
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    .line 46
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    const-wide/16 v0, 0x0

    .line 49
    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    .line 54
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetpackageName(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetversionName(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->versionName:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetlistenerId(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->listenerId:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetprovider(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    .line 58
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetquality(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->quality:I

    .line 59
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetrequestTime(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requestTime:J

    .line 60
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetbackgroundTime(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundTime:J

    .line 61
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetinterval(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    .line 62
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetminUpdateInterval(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->minUpdateInterval:J

    .line 63
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetmaxWaitTime(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->maxWaitTime:J

    .line 64
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetrequester(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requester:I

    .line 65
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetisForeground(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    .line 66
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetnumUpdates(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->numUpdates:I

    .line 67
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetuid(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->uid:I

    .line 68
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetpid(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->pid:I

    .line 69
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetisListenerType(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isListenerType:Z

    .line 70
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetisAllowed(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    .line 71
    invoke-static {p1}, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->-$$Nest$fgetisHighPowerRequest(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;Lcom/android/server/location/nsflp/LocationRequestInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/location/nsflp/LocationRequestInfo;-><init>(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)V

    return-void
.end method


# virtual methods
.method public addBGDuration(J)V
    .registers 5

    .line 251
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundDuration:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundDuration:J

    return-void
.end method

.method public decrementNumUpdates(J)I
    .registers 3

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/android/server/location/nsflp/LocationRequestInfo;->setLastUpdateTime(J)V

    .line 104
    iget p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->numUpdates:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->numUpdates:I

    return p1
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public getBGDuration()J
    .registers 7

    .line 298
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->removedTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/location/nsflp/LocationRequestInfo;->isActiveRequest()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_1a

    .line 303
    :cond_f
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundDuration:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0

    .line 300
    :cond_1a
    :goto_1a
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundDuration:J

    return-wide v0
.end method

.method public getBGTime()J
    .registers 3

    .line 294
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundTime:J

    return-wide v0
.end method

.method public getCallbackType()Ljava/lang/String;
    .registers 1

    .line 79
    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isListenerType:Z

    if-eqz p0, :cond_7

    const-string p0, "Listener"

    goto :goto_9

    :cond_7
    const-string p0, "PendingIntent"

    :goto_9
    return-object p0
.end method

.method public getDuration()J
    .registers 5

    .line 308
    invoke-virtual {p0}, Lcom/android/server/location/nsflp/LocationRequestInfo;->isActiveRequest()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_d

    :cond_b
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->removedTime:J

    :goto_d
    iget-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requestTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getInterval()J
    .registers 3

    .line 316
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    return-wide v0
.end method

.method public getLastUpdateTime()J
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    return-wide v0
.end method

.method public getListenerId()Ljava/lang/String;
    .registers 1

    .line 278
    iget-object p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->listenerId:Ljava/lang/String;

    return-object p0
.end method

.method public getMaxWaitTime()J
    .registers 3

    .line 335
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->maxWaitTime:J

    return-wide v0
.end method

.method public getMinUpdateInterval()J
    .registers 3

    .line 320
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->minUpdateInterval:J

    return-wide v0
.end method

.method public getNumUpdates()I
    .registers 1

    .line 243
    iget p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->numUpdates:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 270
    iget-object p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPid()I
    .registers 1

    .line 343
    iget p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->pid:I

    return p0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 1

    .line 312
    iget-object p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    return-object p0
.end method

.method public getQuality()I
    .registers 1

    .line 323
    iget p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->quality:I

    return p0
.end method

.method public getRemovedTime()J
    .registers 3

    .line 286
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->removedTime:J

    return-wide v0
.end method

.method public getRequestTime()J
    .registers 3

    .line 282
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requestTime:J

    return-wide v0
.end method

.method public getRequester()I
    .registers 1

    .line 331
    iget p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requester:I

    return p0
.end method

.method public getUid()I
    .registers 1

    .line 339
    iget p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->uid:I

    return p0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public isActiveRequest()Z
    .registers 5

    .line 290
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->removedTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isForeground()Z
    .registers 1

    .line 327
    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    return p0
.end method

.method public isHighPowerRequest()Z
    .registers 1

    .line 95
    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    return p0
.end method

.method public isListenerType()Z
    .registers 1

    .line 83
    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isListenerType:Z

    return p0
.end method

.method public isPassive()Z
    .registers 1

    .line 87
    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    return p0
.end method

.method public isSystemApp()Z
    .registers 1

    .line 91
    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isSystemApp:Z

    return p0
.end method

.method public setBGTime(J)V
    .registers 3

    .line 247
    iput-wide p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundTime:J

    return-void
.end method

.method public setForeground(Z)V
    .registers 2

    .line 259
    iput-boolean p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    return-void
.end method

.method public setInterval(J)V
    .registers 3

    .line 263
    iput-wide p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    return-void
.end method

.method public setLastUpdateTime(J)V
    .registers 3

    .line 99
    iput-wide p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    return-void
.end method

.method public setMinUpdateInterval(J)V
    .registers 3

    .line 267
    iput-wide p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->minUpdateInterval:J

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    return-void
.end method

.method public setRemovedTime(J)V
    .registers 3

    .line 255
    iput-wide p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->removedTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 356
    iget-object p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 357
    iget-object p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 358
    iget-object p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->listenerId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 359
    iget-object p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->provider:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 360
    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->quality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 361
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requestTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 362
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->removedTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 363
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 364
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->backgroundDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 365
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->interval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 366
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->minUpdateInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 367
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->maxWaitTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 368
    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->requester:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 369
    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isForeground:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 370
    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->numUpdates:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 371
    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->uid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->pid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 373
    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isListenerType:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 374
    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isSystemApp:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 375
    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isPassive:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 376
    iget-boolean p2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isHighPowerRequest:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 377
    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->lastUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 378
    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo;->isAllowed:Z

    int-to-byte p0, p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
