.class public Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;
.super Ljava/lang/Object;
.source "SemWifiApInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "SemWifiApInfo"


# instance fields
.field private mAccumulatedConnectionCount:I

.field private mAccumulatedConnectionTime:I

.field private mDetectedPackageList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSsid:Ljava/lang/String;

.field private mSwitchForIndivdiaulAppsDetectionCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;)V
    .registers 5

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionCount:I

    .line 19
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionTime:I

    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mSwitchForIndivdiaulAppsDetectionCount:I

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    .line 123
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSsid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mSsid:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getAccumulatedConnectionTime()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionCount:I

    .line 125
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getAccumulatedConnectionTime()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionTime:I

    .line 126
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getSwitchForIndivdiaulAppsDetectionCount()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mSwitchForIndivdiaulAppsDetectionCount:I

    .line 127
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->getDetectedPackageList()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_35
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    .line 128
    iget-object v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    :cond_4b
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionCount:I

    .line 19
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionTime:I

    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mSwitchForIndivdiaulAppsDetectionCount:I

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    .line 110
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mSsid:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIILjava/util/HashMap;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "III",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionCount:I

    .line 19
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionTime:I

    .line 20
    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mSwitchForIndivdiaulAppsDetectionCount:I

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mSsid:Ljava/lang/String;

    .line 116
    iput p2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionCount:I

    .line 117
    iput p3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionTime:I

    .line 118
    iput p4, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mSwitchForIndivdiaulAppsDetectionCount:I

    .line 119
    iput-object p5, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    return-void
.end method

.method private updateDetectedPackageList(Ljava/lang/String;)V
    .registers 4

    .line 232
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDetectedPackageList - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz p1, :cond_3b

    .line 234
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 235
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->updateDetectedInfo()V

    goto :goto_3b

    .line 237
    :cond_30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3b
    :goto_3b
    return-void
.end method


# virtual methods
.method public addDetectedPakcageInfo(Ljava/lang/String;I)V
    .registers 5

    .line 172
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addDetectedPakcageInfo - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz p1, :cond_33

    .line 174
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 175
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_29
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_33
    return-void
.end method

.method public addSwitchForIndivdiaulAppsDetectionCount(Ljava/lang/String;)V
    .registers 4

    .line 166
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSwitchForIndivdiaulAppsDetectionCount - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_1a
    iget v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mSwitchForIndivdiaulAppsDetectionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mSwitchForIndivdiaulAppsDetectionCount:I

    .line 168
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->updateDetectedPackageList(Ljava/lang/String;)V

    return-void
.end method

.method public getAccumulatedConnectionCount()I
    .registers 3

    .line 138
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->DBG:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccumulatedConnectionCount - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_1c
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionCount:I

    return p0
.end method

.method public getAccumulatedConnectionTime()I
    .registers 1

    .line 148
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionTime:I

    return p0
.end method

.method public getDetectedPackageList()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    return-object p0
.end method

.method public getPackageDetectedCount(Ljava/lang/String;)I
    .registers 4

    .line 200
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPackageDetectedCount - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz p1, :cond_31

    .line 202
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 203
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getDetectedCount()I

    move-result p0

    return p0

    :cond_31
    const/4 p0, 0x0

    return p0
.end method

.method public getSsid()Ljava/lang/String;
    .registers 1

    .line 134
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method public getSwitchForIndivdiaulAppsDetectionCount()I
    .registers 1

    .line 157
    iget p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mSwitchForIndivdiaulAppsDetectionCount:I

    return p0
.end method

.method public isNormalRunningTimePrevention(Ljava/lang/String;)Z
    .registers 4

    .line 224
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isNormalRunningTimePrevention - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 226
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->isPackageNormalOperationTimePrevention()Z

    move-result p0

    return p0

    :cond_2f
    const/4 p0, 0x0

    return p0
.end method

.method public resetSwitchForIndivdiaulAppsDetectionCount(Ljava/lang/String;)V
    .registers 4

    .line 182
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetSwitchForIndivdiaulAppsDetectionCount - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    if-eqz p1, :cond_2f

    .line 184
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 185
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->resetDetectedCount()V

    :cond_2f
    return-void
.end method

.method public setAccumulatedConnectionCount(I)V
    .registers 4

    .line 143
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAccumulatedConnectionCount - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_1a
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionCount:I

    return-void
.end method

.method public setAccumulatedConnectionTime(I)V
    .registers 4

    .line 152
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAccumulatedConnectionTime - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_1a
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionTime:I

    return-void
.end method

.method public setDetectedPackageList(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 195
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->DBG:Z

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDetectedPackageList - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_1e
    iput-object p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    return-void
.end method

.method public setSwitchForIndivdiaulAppsDetectionCount(I)V
    .registers 4

    .line 161
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSwitchForIndivdiaulAppsDetectionCount - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_1a
    iput p1, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mSwitchForIndivdiaulAppsDetectionCount:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 244
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", CC:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", CT:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mAccumulatedConnectionTime:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", SFIADC:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mSwitchForIndivdiaulAppsDetectionCount:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", Packages"

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 251
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_71
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " [PN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->-$$Nest$fgetmPackageName(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " DC:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->-$$Nest$fgetmDetectedCount(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " LDT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->-$$Nest$fgetmLastDetectedTime(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " NOT:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->-$$Nest$fgetmPackageNormalOperationTime(Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_71

    .line 258
    :cond_e1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateNormalOperationTime(Ljava/lang/String;I)V
    .registers 5

    .line 210
    sget-boolean v0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->DBG:Z

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateNormalOperationTime - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemWifiApInfo"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1a
    iget-object v0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 212
    iget-object p0, p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo;->mDetectedPackageList:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;

    if-nez p2, :cond_30

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->resetPackageNormalOperationTime()V

    goto :goto_42

    .line 216
    :cond_30
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->getDetectedCount()I

    move-result p1

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->isPackageNormalOperationTimePrevention()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 217
    :cond_3c
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->resetDetectedCount()V

    .line 218
    invoke-virtual {p0, p2}, Lcom/samsung/android/server/wifi/tcp/SemWifiApInfo$DetectedPackageInfo;->addPackageNormalOperationTime(I)I

    :cond_42
    :goto_42
    return-void
.end method
