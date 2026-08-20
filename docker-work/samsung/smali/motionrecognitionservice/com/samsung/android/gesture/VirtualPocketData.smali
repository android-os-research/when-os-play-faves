.class Lcom/samsung/android/gesture/VirtualPocketData;
.super Ljava/lang/Object;
.source "PocketProximityManager.java"


# static fields
.field public static final FW_VER_LIGHT_THD:I = 0x1600594


# instance fields
.field private baseProxy:I

.field private closeCentroid:I

.field private curProxyCheckTime:J

.field private currentProxy:I

.field private highLuxProxy:I

.field private highLuxProxyTime:J

.field private lastCloseProxy:I

.field private lastOpenProxy:I

.field private lightTHD:I

.field private luxPocket:I

.field private minRecog:I

.field private minRelease:I

.field private openCentroid:I

.field private pocketVer:I

.field private prevProxyCheckTime:J

.field private proxyCallMin:I

.field private reason:I

.field private releaseDiff:I

.field private state:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBaseProxy()I
    .registers 2

    .line 924
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->baseProxy:I

    return v0
.end method

.method public getCloseCentroid()I
    .registers 2

    .line 1020
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->closeCentroid:I

    return v0
.end method

.method public getCurProxyCheckTime()J
    .registers 3

    .line 984
    iget-wide v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->curProxyCheckTime:J

    return-wide v0
.end method

.method public getCurrentProxy()I
    .registers 2

    .line 930
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->currentProxy:I

    return v0
.end method

.method public getHighLuxProxy()I
    .registers 2

    .line 972
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->highLuxProxy:I

    return v0
.end method

.method public getHighLuxProxyTime()J
    .registers 3

    .line 978
    iget-wide v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->highLuxProxyTime:J

    return-wide v0
.end method

.method public getLastCloseProxy()I
    .registers 2

    .line 966
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->lastCloseProxy:I

    return v0
.end method

.method public getLastOpenProxy()I
    .registers 2

    .line 960
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->lastOpenProxy:I

    return v0
.end method

.method public getLightTHD()I
    .registers 2

    .line 996
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->lightTHD:I

    return v0
.end method

.method public getLuxPocket()I
    .registers 2

    .line 936
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->luxPocket:I

    return v0
.end method

.method public getMinRecog()I
    .registers 2

    .line 954
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->minRecog:I

    return v0
.end method

.method public getMinRelease()I
    .registers 2

    .line 948
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->minRelease:I

    return v0
.end method

.method public getOpenCentroid()I
    .registers 2

    .line 1014
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->openCentroid:I

    return v0
.end method

.method public getPocketVer()I
    .registers 2

    .line 1008
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->pocketVer:I

    return v0
.end method

.method public getPrevProxyCheckTime()J
    .registers 3

    .line 990
    iget-wide v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->prevProxyCheckTime:J

    return-wide v0
.end method

.method public getProxyCallMin()I
    .registers 2

    .line 1002
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->proxyCallMin:I

    return v0
.end method

.method public getReason()I
    .registers 2

    .line 918
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->reason:I

    return v0
.end method

.method public getReleaseDiff()I
    .registers 2

    .line 942
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->releaseDiff:I

    return v0
.end method

.method public getState()I
    .registers 2

    .line 912
    iget v0, p0, Lcom/samsung/android/gesture/VirtualPocketData;->state:I

    return v0
.end method

.method public setBaseProxy(I)V
    .registers 2
    .param p1, "baseProxy"    # I

    .line 927
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->baseProxy:I

    .line 928
    return-void
.end method

.method public setCloseCentroid(I)V
    .registers 2
    .param p1, "closeCentroid"    # I

    .line 1023
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->closeCentroid:I

    .line 1024
    return-void
.end method

.method public setCurProxyCheckTime(J)V
    .registers 3
    .param p1, "curProxyCheckTime"    # J

    .line 987
    iput-wide p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->curProxyCheckTime:J

    .line 988
    return-void
.end method

.method public setCurrentProxy(I)V
    .registers 2
    .param p1, "currentProxy"    # I

    .line 933
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->currentProxy:I

    .line 934
    return-void
.end method

.method public setHighLuxProxy(I)V
    .registers 2
    .param p1, "highLuxProxy"    # I

    .line 975
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->highLuxProxy:I

    .line 976
    return-void
.end method

.method public setHighLuxProxyTime(J)V
    .registers 3
    .param p1, "highLuxProxyTime"    # J

    .line 981
    iput-wide p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->highLuxProxyTime:J

    .line 982
    return-void
.end method

.method public setLastCloseProxy(I)V
    .registers 2
    .param p1, "lastCloseProxy"    # I

    .line 969
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->lastCloseProxy:I

    .line 970
    return-void
.end method

.method public setLastOpenProxy(I)V
    .registers 2
    .param p1, "lastOpenProxy"    # I

    .line 963
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->lastOpenProxy:I

    .line 964
    return-void
.end method

.method public setLightTHD(I)V
    .registers 2
    .param p1, "lightTHD"    # I

    .line 999
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->lightTHD:I

    .line 1000
    return-void
.end method

.method public setLuxPocket(I)V
    .registers 2
    .param p1, "luxPocket"    # I

    .line 939
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->luxPocket:I

    .line 940
    return-void
.end method

.method public setMinRecog(I)V
    .registers 2
    .param p1, "minRecog"    # I

    .line 957
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->minRecog:I

    .line 958
    return-void
.end method

.method public setMinRelease(I)V
    .registers 2
    .param p1, "minRelease"    # I

    .line 951
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->minRelease:I

    .line 952
    return-void
.end method

.method public setOpenCentroid(I)V
    .registers 2
    .param p1, "openCentroid"    # I

    .line 1017
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->openCentroid:I

    .line 1018
    return-void
.end method

.method public setPocketVer(I)V
    .registers 2
    .param p1, "pocketVer"    # I

    .line 1011
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->pocketVer:I

    .line 1012
    return-void
.end method

.method public setPrevProxyCheckTime(J)V
    .registers 3
    .param p1, "prevProxyCheckTime"    # J

    .line 993
    iput-wide p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->prevProxyCheckTime:J

    .line 994
    return-void
.end method

.method public setProxyCallMin(I)V
    .registers 2
    .param p1, "proxyCallMin"    # I

    .line 1005
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->proxyCallMin:I

    .line 1006
    return-void
.end method

.method public setReason(I)V
    .registers 2
    .param p1, "reason"    # I

    .line 921
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->reason:I

    .line 922
    return-void
.end method

.method public setReleaseDiff(I)V
    .registers 2
    .param p1, "releaseDiff"    # I

    .line 945
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->releaseDiff:I

    .line 946
    return-void
.end method

.method public setState(I)V
    .registers 2
    .param p1, "state"    # I

    .line 915
    iput p1, p0, Lcom/samsung/android/gesture/VirtualPocketData;->state:I

    .line 916
    return-void
.end method
