.class public Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;
.super Ljava/lang/Object;
.source "UnderlyingNetworkRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public mCached:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

.field public mIsBlocked:Z

.field public mLinkProperties:Landroid/net/LinkProperties;

.field public final mNetwork:Landroid/net/Network;

.field public mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field public mWasIsBlockedSet:Z


# direct methods
.method public constructor <init>(Landroid/net/Network;)V
    .registers 2

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetwork:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .registers 6

    .line 238
    invoke-virtual {p0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 243
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    if-nez v0, :cond_19

    .line 244
    new-instance v0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    iget-object v1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetwork:Landroid/net/Network;

    iget-object v2, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iget-object v3, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    iget-boolean v4, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mIsBlocked:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;-><init>(Landroid/net/Network;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;Z)V

    iput-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    .line 249
    :cond_19
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-object p0

    .line 239
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called build before UnderlyingNetworkRecord was valid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNetwork()Landroid/net/Network;
    .registers 1

    .line 209
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetwork:Landroid/net/Network;

    return-object p0
.end method

.method public getNetworkCapabilities()Landroid/net/NetworkCapabilities;
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    return-object p0
.end method

.method public isValid()Z
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_e

    iget-boolean p0, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mWasIsBlockedSet:Z

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public setIsBlocked(Z)V
    .registers 2

    .line 228
    iput-boolean p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mIsBlocked:Z

    const/4 p1, 0x1

    .line 229
    iput-boolean p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mWasIsBlockedSet:Z

    const/4 p1, 0x0

    .line 230
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-void
.end method

.method public setLinkProperties(Landroid/net/LinkProperties;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mLinkProperties:Landroid/net/LinkProperties;

    const/4 p1, 0x0

    .line 224
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-void
.end method

.method public setNetworkCapabilities(Landroid/net/NetworkCapabilities;)V
    .registers 2

    .line 213
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 p1, 0x0

    .line 214
    iput-object p1, p0, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord$Builder;->mCached:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-void
.end method
