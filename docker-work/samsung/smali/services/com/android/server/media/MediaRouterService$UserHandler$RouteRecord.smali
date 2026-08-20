.class public final Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;
.super Ljava/lang/Object;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService$UserHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RouteRecord"
.end annotation


# instance fields
.field public mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

.field public final mDescriptorId:Ljava/lang/String;

.field public mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

.field public final mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

.field public final mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1759
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    .line 1760
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    .line 1761
    new-instance p1, Landroid/media/MediaRouterClientState$RouteInfo;

    invoke-direct {p1, p3}, Landroid/media/MediaRouterClientState$RouteInfo;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    return-void
.end method

.method public static computeDescription(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Ljava/lang/String;
    .registers 2

    .line 1887
    iget-object p0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->description:Ljava/lang/String;

    .line 1888
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return-object p0
.end method

.method public static computeEnabled(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z
    .registers 2

    .line 1898
    iget p0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 v0, 0x4

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    const/4 p0, 0x1

    return p0
.end method

.method public static computeName(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Ljava/lang/String;
    .registers 1

    .line 1883
    iget-object p0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->name:Ljava/lang/String;

    return-object p0
.end method

.method public static computePlaybackStream(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public static computePlaybackType(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static computePresentationDisplayId(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 1

    .line 1963
    iget p0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->presentationDisplayId:I

    if-gez p0, :cond_5

    const/4 p0, -0x1

    :cond_5
    return p0
.end method

.method public static computeStatusCode(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 4

    .line 1909
    iget p0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->status:I

    const/4 v0, 0x4

    if-eqz p0, :cond_18

    const/4 v1, 0x1

    if-eq p0, v1, :cond_16

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_15

    if-eq p0, v1, :cond_14

    if-eq p0, v0, :cond_12

    const/4 p0, 0x0

    return p0

    :cond_12
    const/4 p0, 0x6

    return p0

    :cond_14
    return v2

    :cond_15
    return v1

    :cond_16
    const/4 p0, 0x5

    return p0

    :cond_18
    return v0
.end method

.method public static computeSupportedTypes(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 1

    const/4 p0, 0x7

    return p0
.end method

.method public static computeVolume(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 2

    .line 1934
    iget v0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volume:I

    .line 1935
    iget p0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    if-gez v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    if-le v0, p0, :cond_b

    return p0

    :cond_b
    return v0
.end method

.method public static computeVolumeHandling(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 2

    .line 1950
    iget p0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeHandling:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x0

    return p0

    :cond_7
    return v0
.end method

.method public static computeVolumeMax(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I
    .registers 1

    .line 1945
    iget p0, p0, Landroid/media/RemoteDisplayState$RemoteDisplayInfo;->volumeMax:I

    if-lez p0, :cond_5

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 1868
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1871
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mMutableInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mDescriptorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1873
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mDescriptor="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getDescriptorId()Ljava/lang/String;
    .registers 1

    .line 1773
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptorId:Ljava/lang/String;

    return-object p0
.end method

.method public getInfo()Landroid/media/MediaRouterClientState$RouteInfo;
    .registers 3

    .line 1781
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    if-nez v0, :cond_d

    .line 1782
    new-instance v0, Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    invoke-direct {v0, v1}, Landroid/media/MediaRouterClientState$RouteInfo;-><init>(Landroid/media/MediaRouterClientState$RouteInfo;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    .line 1784
    :cond_d
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    return-object p0
.end method

.method public getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;
    .registers 1

    .line 1765
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    invoke-virtual {p0}, Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;->getProvider()Lcom/android/server/media/RemoteDisplayProviderProxy;

    move-result-object p0

    return-object p0
.end method

.method public getProviderRecord()Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;
    .registers 1

    .line 1769
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mProviderRecord:Lcom/android/server/media/MediaRouterService$UserHandler$ProviderRecord;

    return-object p0
.end method

.method public getStatus()I
    .registers 1

    .line 1796
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget p0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    return p0
.end method

.method public getUniqueId()Ljava/lang/String;
    .registers 1

    .line 1777
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object p0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    return-object p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 1792
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-boolean p0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    return p0
.end method

.method public isValid()Z
    .registers 1

    .line 1788
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Route "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v1, v1, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object p0, p0, Landroid/media/MediaRouterClientState$RouteInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateDescriptor(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z
    .registers 7

    .line 1801
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p1, :cond_a5

    .line 1802
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mDescriptor:Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    if-eqz p1, :cond_a5

    .line 1804
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeName(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1805
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v3, v3, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1806
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput-object v0, v2, Landroid/media/MediaRouterClientState$RouteInfo;->name:Ljava/lang/String;

    move v2, v1

    .line 1809
    :cond_1d
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeDescription(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Ljava/lang/String;

    move-result-object v0

    .line 1810
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-object v3, v3, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    invoke-static {v3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    .line 1811
    iget-object v2, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iput-object v0, v2, Landroid/media/MediaRouterClientState$RouteInfo;->description:Ljava/lang/String;

    move v2, v1

    .line 1814
    :cond_30
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeSupportedTypes(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v0

    .line 1815
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v4, v3, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    if-eq v4, v0, :cond_3d

    .line 1816
    iput v0, v3, Landroid/media/MediaRouterClientState$RouteInfo;->supportedTypes:I

    move v2, v1

    .line 1819
    :cond_3d
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeEnabled(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)Z

    move-result v0

    .line 1820
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget-boolean v4, v3, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    if-eq v4, v0, :cond_4a

    .line 1821
    iput-boolean v0, v3, Landroid/media/MediaRouterClientState$RouteInfo;->enabled:Z

    move v2, v1

    .line 1824
    :cond_4a
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeStatusCode(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v0

    .line 1825
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v4, v3, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    if-eq v4, v0, :cond_57

    .line 1826
    iput v0, v3, Landroid/media/MediaRouterClientState$RouteInfo;->statusCode:I

    move v2, v1

    .line 1829
    :cond_57
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computePlaybackType(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v0

    .line 1830
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v4, v3, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    if-eq v4, v0, :cond_64

    .line 1831
    iput v0, v3, Landroid/media/MediaRouterClientState$RouteInfo;->playbackType:I

    move v2, v1

    .line 1834
    :cond_64
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computePlaybackStream(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v0

    .line 1835
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v4, v3, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    if-eq v4, v0, :cond_71

    .line 1836
    iput v0, v3, Landroid/media/MediaRouterClientState$RouteInfo;->playbackStream:I

    move v2, v1

    .line 1839
    :cond_71
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeVolume(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v0

    .line 1840
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v4, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    if-eq v4, v0, :cond_7e

    .line 1841
    iput v0, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volume:I

    move v2, v1

    .line 1844
    :cond_7e
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeVolumeMax(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v0

    .line 1845
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v4, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    if-eq v4, v0, :cond_8b

    .line 1846
    iput v0, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volumeMax:I

    move v2, v1

    .line 1849
    :cond_8b
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computeVolumeHandling(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result v0

    .line 1850
    iget-object v3, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v4, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    if-eq v4, v0, :cond_98

    .line 1851
    iput v0, v3, Landroid/media/MediaRouterClientState$RouteInfo;->volumeHandling:I

    move v2, v1

    .line 1854
    :cond_98
    invoke-static {p1}, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->computePresentationDisplayId(Landroid/media/RemoteDisplayState$RemoteDisplayInfo;)I

    move-result p1

    .line 1855
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mMutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    iget v3, v0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    if-eq v3, p1, :cond_a5

    .line 1856
    iput p1, v0, Landroid/media/MediaRouterClientState$RouteInfo;->presentationDisplayId:I

    goto :goto_a6

    :cond_a5
    move v1, v2

    :goto_a6
    if-eqz v1, :cond_ab

    const/4 p1, 0x0

    .line 1862
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$UserHandler$RouteRecord;->mImmutableInfo:Landroid/media/MediaRouterClientState$RouteInfo;

    :cond_ab
    return v1
.end method
