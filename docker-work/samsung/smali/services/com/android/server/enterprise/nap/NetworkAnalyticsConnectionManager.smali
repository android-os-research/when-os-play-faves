.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;
.super Ljava/lang/Object;
.source "NetworkAnalyticsConnectionManager.java"


# static fields
.field public static final DBG:Z

.field public static final TAG:Ljava/lang/String; = "NetworkAnalytics:ConnectionManager"

.field public static mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;


# instance fields
.field public activatedProfileCounter:I

.field public binderMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;",
            ">;"
        }
    .end annotation
.end field

.field public profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 70
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    sput-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->binderMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    .line 84
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->binderMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public static getInstance()Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;
    .registers 1

    .line 94
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    if-nez v0, :cond_b

    .line 96
    new-instance v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    invoke-direct {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    .line 100
    :cond_b
    sget-object v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->mInstance:Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;

    return-object v0
.end method


# virtual methods
.method public addProfileForPackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 126
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    .line 136
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->isProfilePresentForPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    return-void

    .line 138
    :cond_1d
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    :goto_28
    iget p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    return-void
.end method

.method public getActiveProfilesNumber()I
    .registers 1

    .line 240
    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    return p0
.end method

.method public getBinderForPackage(Ljava/lang/String;)Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;
    .registers 4

    .line 158
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->binderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    if-eqz p0, :cond_29

    .line 162
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->DBG:Z

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBinderForPackage: binder is not null for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkAnalytics:ConnectionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;->getBinderObject()Lcom/samsung/android/knox/net/nap/serviceprovider/INetworkAnalyticsService;

    move-result-object p0

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    return-object p0
.end method

.method public getProfilesForPackage(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 232
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public getServiceConnectionForPackage(Ljava/lang/String;)Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;
    .registers 4

    .line 176
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->binderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;

    if-eqz p0, :cond_25

    .line 178
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->DBG:Z

    if-eqz v0, :cond_25

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getServiceConnectionForPackage: service connection is not null for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NetworkAnalytics:ConnectionManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return-object p0
.end method

.method public isProfilePresentForPackage(Ljava/lang/String;)Z
    .registers 2

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getProfilesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isProfilePresentForPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    .line 210
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->DBG:Z

    const-string v1, "NetworkAnalytics:ConnectionManager"

    if-eqz v0, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isProfilePresentForPackage for packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v2, 0x0

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getProfilesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_26

    .line 218
    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    :cond_26
    if-eqz v0, :cond_3d

    .line 222
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isProfilePresentForPackage for packageName is = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    return v2
.end method

.method public removeBinderForPackage(Ljava/lang/String;)V
    .registers 4

    .line 248
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->DBG:Z

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeBinderForPackage completely for packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetworkAnalytics:ConnectionManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_1b
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->binderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeProfileForPackage(Ljava/lang/String;)V
    .registers 6

    .line 290
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->DBG:Z

    const-string v1, "NetworkAnalytics:ConnectionManager"

    if-eqz v0, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeProfileForPackage completely for packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getProfilesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_22

    return-void

    .line 296
    :cond_22
    iget v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    if-gez v3, :cond_30

    const/4 v2, 0x0

    .line 298
    iput v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    .line 300
    :cond_30
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_4e

    .line 302
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "removeProfileForPackage completely for activatedProfileCounter = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4e
    return-void
.end method

.method public removeProfileForPackage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 258
    sget-boolean v0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->DBG:Z

    const-string v1, "NetworkAnalytics:ConnectionManager"

    if-eqz v0, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeProfileForPackage for packageName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->getProfilesForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_52

    const/4 v2, 0x0

    move v3, v2

    .line 264
    :goto_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_41

    .line 266
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 268
    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 270
    iget v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    :cond_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    .line 276
    :cond_41
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_4c

    iget-object p2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->profilesForPackage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_4c
    iget p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    if-gez p1, :cond_52

    iput v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    .line 282
    :cond_52
    sget-boolean p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->DBG:Z

    if-eqz p1, :cond_6d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "removeProfileForPackage for activatedProfileCounter = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->activatedProfileCounter:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6d
    return-void
.end method

.method public storeBinderForPackage(Ljava/lang/String;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NetworkAnalyticsServiceConnection;)V
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->binderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->binderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :cond_d
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsConnectionManager;->binderMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
