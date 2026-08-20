.class public final Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
.super Ljava/lang/Object;
.source "LocationRequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/nsflp/LocationRequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public backgroundTime:J

.field public interval:J

.field public isAllowed:Z

.field public isForeground:Z

.field public isHighPowerRequest:Z

.field public isListenerType:Z

.field public listenerId:Ljava/lang/String;

.field public maxWaitTime:J

.field public minUpdateInterval:J

.field public numUpdates:I

.field public packageName:Ljava/lang/String;

.field public pid:I

.field public provider:Ljava/lang/String;

.field public quality:I

.field public requestTime:J

.field public requester:I

.field public uid:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetbackgroundTime(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->backgroundTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetinterval(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->interval:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetisAllowed(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->isAllowed:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisForeground(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->isForeground:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisHighPowerRequest(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->isHighPowerRequest:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetisListenerType(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->isListenerType:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetlistenerId(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->listenerId:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmaxWaitTime(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->maxWaitTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetminUpdateInterval(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->minUpdateInterval:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetnumUpdates(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->numUpdates:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetpackageName(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetpid(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->pid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetprovider(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->provider:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetquality(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->quality:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetrequestTime(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->requestTime:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetrequester(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->requester:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetuid(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)I
    .registers 1

    iget p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->uid:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetversionName(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->versionName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 129
    iput v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->numUpdates:I

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/location/nsflp/LocationRequestInfo;
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->provider:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->listenerId:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 228
    new-instance v0, Lcom/android/server/location/nsflp/LocationRequestInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/nsflp/LocationRequestInfo;-><init>(Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;Lcom/android/server/location/nsflp/LocationRequestInfo-IA;)V

    return-object v0

    .line 221
    :cond_13
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New requestInfo mandatory fields are null,PackageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ListenerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->listenerId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->provider:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/isAllowed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->isAllowed:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAllowed(Z)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 2

    .line 210
    iput-boolean p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->isAllowed:Z

    return-object p0
.end method

.method public setBackgroundTime(J)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 3

    .line 170
    iput-wide p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->backgroundTime:J

    return-object p0
.end method

.method public setForeground(Z)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 2

    .line 195
    iput-boolean p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->isForeground:Z

    return-object p0
.end method

.method public setHighPowerRequest(Z)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 2

    .line 215
    iput-boolean p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->isHighPowerRequest:Z

    return-object p0
.end method

.method public setInterval(J)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 3

    .line 175
    iput-wide p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->interval:J

    return-object p0
.end method

.method public setListenerId(Ljava/lang/String;)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 2

    .line 150
    iput-object p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->listenerId:Ljava/lang/String;

    return-object p0
.end method

.method public setListenerType(Z)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 2

    .line 205
    iput-boolean p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->isListenerType:Z

    return-object p0
.end method

.method public setMaxWaitTime(J)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 3

    .line 185
    iput-wide p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->maxWaitTime:J

    return-object p0
.end method

.method public setMinUpdateInterval(J)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 3

    .line 180
    iput-wide p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->minUpdateInterval:J

    return-object p0
.end method

.method public setNumUpdates(I)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 2

    .line 200
    iput p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->numUpdates:I

    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 2

    .line 140
    iput-object p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public setPid(I)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 2

    .line 237
    iput p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->pid:I

    return-object p0
.end method

.method public setProvider(Ljava/lang/String;)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->provider:Ljava/lang/String;

    return-object p0
.end method

.method public setQuality(I)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 2

    .line 160
    iput p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->quality:I

    return-object p0
.end method

.method public setRequestTime(J)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 3

    .line 165
    iput-wide p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->requestTime:J

    return-object p0
.end method

.method public setRequester(I)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 2

    .line 190
    iput p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->requester:I

    return-object p0
.end method

.method public setUid(I)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 2

    .line 232
    iput p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->uid:I

    return-object p0
.end method

.method public setVersionName(Ljava/lang/String;)Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/android/server/location/nsflp/LocationRequestInfo$Builder;->versionName:Ljava/lang/String;

    return-object p0
.end method
