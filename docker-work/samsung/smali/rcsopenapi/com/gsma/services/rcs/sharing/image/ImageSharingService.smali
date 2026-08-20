.class public final Lcom/gsma/services/rcs/sharing/image/ImageSharingService;
.super Lcom/gsma/services/rcs/RcsService;
.source "ImageSharingService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private mConnection:Landroid/content/ServiceConnection;

.field private mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

.field private final mIshListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;",
            "Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const-class v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/gsma/services/rcs/RcsServiceListener;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/gsma/services/rcs/RcsService;-><init>(Landroid/content/Context;Lcom/gsma/services/rcs/RcsServiceListener;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIshListenerMap:Ljava/util/Map;

    .line 82
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$1;

    invoke-direct {v0, p0}, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$1;-><init>(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)V

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mConnection:Landroid/content/ServiceConnection;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/sharing/image/ImageSharingService;

    .line 47
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/sharing/image/ImageSharingService;

    .line 47
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/sharing/image/ImageSharingService;

    .line 47
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;)Lcom/gsma/services/rcs/RcsServiceListener;
    .registers 2
    .param p0, "x0"    # Lcom/gsma/services/rcs/sharing/image/ImageSharingService;

    .line 47
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->serviceListener:Lcom/gsma/services/rcs/RcsServiceListener;

    return-object v0
.end method


# virtual methods
.method public addEventListener(Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_27

    .line 266
    :try_start_4
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : addEventListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;

    invoke-direct {v0, p0, p1}, Lcom/gsma/services/rcs/sharing/image/ImageSharingService$2;-><init>(Lcom/gsma/services/rcs/sharing/image/ImageSharingService;Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;)V

    .line 300
    .local v0, "iListener":Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->addEventListener(Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;)V

    .line 301
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIshListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1a} :catch_1c

    .line 304
    nop

    .line 308
    .end local v0    # "iListener":Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;
    return-void

    .line 302
    :catch_1c
    move-exception v0

    .line 303
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 306
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_27
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public connect()V
    .registers 6

    .line 134
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/RcsServiceControl;

    move-result-object v0

    .line 135
    .local v0, "control":Lcom/gsma/services/rcs/RcsServiceControl;
    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {v0}, Lcom/gsma/services/rcs/RcsServiceControl;->isActivated()Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_56

    .line 139
    :cond_13
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->ctx:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    .line 140
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    const-string v3, "com.sec.imsservice"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->ctx:Landroid/content/Context;

    .line 142
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "packages"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    .line 139
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 144
    .local v1, "bSuc":Z
    sget-object v2, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService to ish service : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return-void

    .line 136
    .end local v1    # "bSuc":Z
    :cond_56
    :goto_56
    sget-object v1, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "TAPI is not available or not activated!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method

.method public deleteImageSharing(Ljava/lang/String;)V
    .registers 5
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_1d

    .line 379
    :try_start_4
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : deleteImageSharing(String sharingId)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->deleteImageSharing(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    .line 383
    nop

    .line 387
    return-void

    .line 381
    :catch_12
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteImageSharings()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 337
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_1d

    .line 339
    :try_start_4
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : deleteImageSharings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->deleteAllImageSharings()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    .line 343
    nop

    .line 347
    return-void

    .line 341
    :catch_12
    move-exception v0

    .line 342
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public deleteImageSharings(Lcom/gsma/services/rcs/contact/ContactId;)V
    .registers 5
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_1d

    .line 359
    :try_start_4
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : deleteImageSharings(ContactId contact)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->deleteImageSharings(Lcom/gsma/services/rcs/contact/ContactId;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_10} :catch_12

    .line 363
    nop

    .line 367
    return-void

    .line 361
    :catch_12
    move-exception v0

    .line 362
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 365
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public disconnect()V
    .registers 3

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_8

    .line 154
    goto :goto_c

    .line 151
    :catch_8
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 155
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_c
    return-void
.end method

.method public getConfiguration()Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_1d

    .line 248
    :try_start_4
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getConfiguration()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->getConfiguration()Lcom/gsma/services/rcs/sharing/image/ImageSharingServiceConfiguration;

    move-result-object v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    return-object v0

    .line 250
    :catch_12
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 254
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getImageSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/ImageSharing;
    .registers 5
    .param p1, "sharingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_26

    .line 196
    :try_start_4
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getImageSharing(String sharingId)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v0, p1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->getImageSharing(Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    move-result-object v0

    .line 198
    .local v0, "sharingIntf":Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    if-eqz v0, :cond_19

    .line 199
    new-instance v1, Lcom/gsma/services/rcs/sharing/image/ImageSharing;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharing;-><init>(Lcom/gsma/services/rcs/sharing/image/IImageSharing;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_18} :catch_1b

    return-object v1

    .line 201
    :cond_19
    const/4 v1, 0x0

    return-object v1

    .line 203
    .end local v0    # "sharingIntf":Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    :catch_1b
    move-exception v0

    .line 204
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_26
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getImageSharings()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/gsma/services/rcs/sharing/image/ImageSharing;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_40

    .line 166
    :try_start_4
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getImageSharings()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 168
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/sharing/image/ImageSharing;>;"
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->getImageSharings()Ljava/util/List;

    move-result-object v1

    .line 169
    .local v1, "ishList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 170
    .local v3, "binder":Landroid/os/IBinder;
    new-instance v4, Lcom/gsma/services/rcs/sharing/image/ImageSharing;

    invoke-static {v3}, Lcom/gsma/services/rcs/sharing/image/IImageSharing$Stub;->asInterface(Landroid/os/IBinder;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/gsma/services/rcs/sharing/image/ImageSharing;-><init>(Lcom/gsma/services/rcs/sharing/image/IImageSharing;)V

    .line 171
    .local v4, "sharing":Lcom/gsma/services/rcs/sharing/image/ImageSharing;
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_32} :catch_35

    .line 172
    nop

    .end local v3    # "binder":Landroid/os/IBinder;
    .end local v4    # "sharing":Lcom/gsma/services/rcs/sharing/image/ImageSharing;
    goto :goto_1a

    .line 173
    :cond_34
    return-object v0

    .line 174
    .end local v0    # "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/gsma/services/rcs/sharing/image/ImageSharing;>;"
    .end local v1    # "ishList":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    :catch_35
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 178
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_40
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public getServiceVersion()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_1d

    .line 108
    :try_start_4
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : getServiceVersion()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->getServiceVersion()I

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    return v0

    .line 110
    :catch_12
    move-exception v0

    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 114
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public isServiceRegistered()Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_1d

    .line 122
    :try_start_4
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : isServiceRegistered()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->isServiceRegistered()Z

    move-result v0
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_11} :catch_12

    return v0

    .line 124
    :catch_12
    move-exception v0

    .line 125
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method public removeEventListener(Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/gsma/services/rcs/sharing/image/ImageSharingListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_2a

    .line 318
    :try_start_4
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "start : removeEventListener()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIshListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;

    .line 320
    .local v0, "iListener":Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-interface {v1, v0}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->removeEventListener(Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;)V

    .line 321
    iget-object v1, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIshListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_1d} :catch_1f

    .line 324
    nop

    .line 328
    .end local v0    # "iListener":Lcom/gsma/services/rcs/sharing/image/IImageSharingListener;
    return-void

    .line 322
    :catch_1f
    move-exception v0

    .line 323
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 326
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2a
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method

.method protected setApi(Landroid/os/IInterface;)V
    .registers 3
    .param p1, "api"    # Landroid/os/IInterface;

    .line 74
    invoke-super {p0, p1}, Lcom/gsma/services/rcs/RcsService;->setApi(Landroid/os/IInterface;)V

    .line 76
    move-object v0, p1

    check-cast v0, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    iput-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    .line 77
    return-void
.end method

.method public shareImage(Lcom/gsma/services/rcs/contact/ContactId;Landroid/net/Uri;)Lcom/gsma/services/rcs/sharing/image/ImageSharing;
    .registers 6
    .param p1, "contact"    # Lcom/gsma/services/rcs/contact/ContactId;
    .param p2, "file"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    if-eqz v0, :cond_3b

    .line 225
    :try_start_4
    sget-object v0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start : shareImage contactId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/gsma/services/rcs/sharing/image/ImageSharingService;->mIImageSharingService:Lcom/gsma/services/rcs/sharing/image/IImageSharingService;

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/gsma/services/rcs/sharing/image/IImageSharingService;->shareImage(Lcom/gsma/services/rcs/contact/ContactId;Ljava/lang/String;)Lcom/gsma/services/rcs/sharing/image/IImageSharing;

    move-result-object v0

    .line 227
    .local v0, "sharingIntf":Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    if-eqz v0, :cond_2e

    .line 228
    new-instance v1, Lcom/gsma/services/rcs/sharing/image/ImageSharing;

    invoke-direct {v1, v0}, Lcom/gsma/services/rcs/sharing/image/ImageSharing;-><init>(Lcom/gsma/services/rcs/sharing/image/IImageSharing;)V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_2d} :catch_30

    return-object v1

    .line 230
    :cond_2e
    const/4 v1, 0x0

    return-object v1

    .line 232
    .end local v0    # "sharingIntf":Lcom/gsma/services/rcs/sharing/image/IImageSharing;
    :catch_30
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3b
    new-instance v0, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;

    invoke-direct {v0}, Lcom/gsma/services/rcs/RcsServiceNotAvailableException;-><init>()V

    throw v0
.end method
