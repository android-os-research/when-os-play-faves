.class public final Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;
.super Lcom/gsma/services/rcs/RcsService;
.source "GeolocSharingService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

.field private mApiConnection:Landroid/content/ServiceConnection;

.field private final mMapForGeolocListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;",
            "Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 52
    const-class v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/gsma/services/rcs/RcsServiceListener;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mMapForGeolocListener:Ljava/util/Map;

    .line 103
    new-instance v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$1;-><init>(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApiConnection:Landroid/content/ServiceConnection;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    .line 47
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    .line 47
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    .line 47
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;

    .line 47
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 199
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "addEventListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    move-object v0, p1

    .line 201
    .local v0, "callbackListener":Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v1, :cond_28

    .line 203
    :try_start_c
    new-instance v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;

    invoke-direct {v1, p0, v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService$2;-><init>(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;)V

    .line 223
    .local v1, "interfaceListener":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-interface {v2, v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->addEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V

    .line 224
    iget-object v2, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mMapForGeolocListener:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_1b} :catch_1d

    .line 227
    nop

    .line 231
    .end local v1    # "interfaceListener":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;
    return-void

    .line 225
    :catch_1d
    move-exception v1

    .line 226
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 229
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_28
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v1}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v1
.end method

.method public connect()V
    .registers 6

    .line 67
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v0

    .line 68
    .local v0, "control":Lcom/gsma/services/rcs/RcsServiceControl;
    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_56

    .line 72
    :cond_13
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->ctx:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    .line 73
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v3, "com.sec.imsservice"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->ctx:Landroid/content/Context;

    .line 75
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "packages"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApiConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 72
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 77
    .local v1, "isSuccess":Z
    sget-object v2, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService to GeolocSharingService service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 69
    .end local v1    # "isSuccess":Z
    :cond_56
    :goto_56
    sget-object v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "TAPI is not available or not activated!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void
.end method

.method public deleteGeolocSharing(Ljava/lang/String;)V
    .registers 5
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v0, :cond_1d

    .line 294
    :try_start_4
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deleteGeolocSharings() by sharing id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->deleteGeolocSharingBySharingId(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    .line 298
    nop

    .line 302
    return-void

    .line 296
    :catch_12
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 300
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteGeolocSharings()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v0, :cond_1d

    .line 260
    :try_start_4
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v1, " deleteGeolocSharings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->deleteAllGeolocSharings()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    .line 264
    nop

    .line 268
    return-void

    .line 262
    :catch_12
    move-exception v0

    .line 263
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 266
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteGeolocSharings(Lcom/gsma/services/rcs/contact/ContactId;)V
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v0, :cond_1d

    .line 277
    :try_start_4
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "deleteGeolocSharings () by contact id"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->deleteGeolocSharingsByContactId(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    .line 281
    nop

    .line 285
    return-void

    .line 279
    :catch_12
    move-exception v0

    .line 280
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public disconnect()V
    .registers 3

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApiConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 88
    goto :goto_c

    .line 86
    :catch_8
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 89
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_c
    return-void
.end method

.method public getGeolocSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;
    .registers 5
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v0, :cond_1d

    .line 180
    :try_start_4
    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->getGeolocSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    move-result-object v0

    .line 181
    .local v0, "sharingIntf":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    if-eqz v0, :cond_10

    .line 182
    new-instance v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;-><init>(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_12

    return-object v1

    .line 184
    :cond_10
    const/4 v1, 0x0

    return-object v1

    .line 186
    .end local v0    # "sharingIntf":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    :catch_12
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 190
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getGeolocSharings()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v0, :cond_39

    .line 157
    :try_start_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 158
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->getGeolocSharings()Ljava/util/List;

    move-result-object v1

    .line 159
    .local v1, "ishList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 160
    .local v3, "binder":Landroid/os/IBinder;
    new-instance v4, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;

    invoke-static {v3}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;-><init>(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;)V

    .line 161
    .local v4, "sharing":Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2b} :catch_2e

    .line 162
    nop

    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v4    # "sharing":Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;
    goto :goto_13

    .line 163
    :cond_2d
    return-object v0

    .line 164
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;>;"
    .end local v1    # "ishList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_2e
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 168
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_39
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 238
    sget-object v0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "removeEventListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v0, :cond_2c

    .line 241
    :try_start_b
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mMapForGeolocListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;

    .line 242
    .local v0, "iListener":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;
    if-eqz v0, :cond_1a

    .line 243
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->removeEventListener(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;)V

    .line 244
    :cond_1a
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mMapForGeolocListener:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_1f} :catch_21

    .line 247
    nop

    .line 251
    .end local v0    # "iListener":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingListener;
    return-void

    .line 245
    :catch_21
    move-exception v0

    .line 246
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 249
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2c
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .registers 3
    .param p1, "api"    # Landroid/os/IInterface;

    .line 96
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 97
    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    .line 98
    return-void
.end method

.method public shareGeoloc(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;
    .registers 6
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "geoloc"    # Lcom/gsma/services/rcs/Geoloc;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharingService;->mApi:Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;

    if-eqz v0, :cond_1d

    .line 136
    :try_start_4
    invoke-interface {v0, p1, p2}, Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharingService;->shareGeoloc(Lcom/gsma/services/rcs/contact/ContactId;Lcom/gsma/services/rcs/Geoloc;)Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;

    move-result-object v0

    .line 137
    .local v0, "sharingIntf":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    if-eqz v0, :cond_10

    .line 138
    new-instance v1, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/sharing/geoloc/GeolocSharing;-><init>(Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_f} :catch_12

    return-object v1

    .line 140
    :cond_10
    const/4 v1, 0x0

    return-object v1

    .line 142
    .end local v0    # "sharingIntf":Lcom/gsma/services/rcs/sharing/geoloc/IGeolocSharing;
    :catch_12
    move-exception v0

    .line 143
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method
