.class Lcom/samsung/android/allshare/ServiceConnector$2;
.super Ljava/lang/Object;
.source "ServiceConnector.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/allshare/ServiceConnector;->createServiceProvider(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Ljava/lang/String;)Lcom/samsung/android/allshare/ERROR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private blacklist mListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

.field private blacklist mServiceProvider:Lcom/samsung/android/allshare/ServiceProvider;

.field final synthetic blacklist val$connector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

.field final synthetic blacklist val$ctx:Landroid/content/Context;

.field final synthetic blacklist val$l:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

.field final synthetic blacklist val$serviceType:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;Ljava/lang/String;)V
    .registers 5

    .line 372
    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->val$l:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    iput-object p2, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->val$ctx:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->val$connector:Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;

    iput-object p4, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->val$serviceType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->mListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    .line 375
    invoke-direct {p0, p2, p3, p4}, Lcom/samsung/android/allshare/ServiceConnector$2;->createServiceProvierImpl(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;Ljava/lang/String;)Lcom/samsung/android/allshare/ServiceProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->mServiceProvider:Lcom/samsung/android/allshare/ServiceProvider;

    return-void
.end method

.method private blacklist createServiceProvierImpl(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;Ljava/lang/String;)Lcom/samsung/android/allshare/ServiceProvider;
    .registers 6
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "connector"    # Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;
    .param p3, "serviceType"    # Ljava/lang/String;

    .line 420
    if-eqz p3, :cond_1a

    const-string v0, "com.samsung.android.allshare.media"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 421
    new-instance v0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    const-string v1, "com.samsung.android.allshare.service.mediashare"

    invoke-direct {v0, v1}, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->setProfileConstData(Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;)V

    .line 423
    new-instance v0, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/allshare/ServiceConnector$MediaServiceProviderImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V

    return-object v0

    .line 424
    :cond_1a
    if-eqz p3, :cond_34

    const-string v0, "com.samsung.android.allshare.file"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 425
    new-instance v0, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;

    const-string v1, "com.samsung.android.allshare.service.fileshare"

    invoke-direct {v0, v1}, Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;->setProfileConstData(Lcom/samsung/android/allshare/ServiceConnector$ProfileConstData;)V

    .line 427
    new-instance v0, Lcom/samsung/android/allshare/ServiceConnector$FileServiceProviderImpl;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/allshare/ServiceConnector$FileServiceProviderImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V

    return-object v0

    .line 430
    :cond_34
    new-instance v0, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/allshare/ServiceConnector$ServiceProviderImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/allshare/ServiceConnector$AllShareConnector;)V

    return-object v0
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)Z
    .registers 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 381
    const-string v0, ""

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_5d

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    if-nez v1, :cond_d

    goto :goto_5d

    .line 384
    :cond_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;

    .line 386
    .local v1, "state":Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;
    sget-object v2, Lcom/samsung/android/allshare/ServiceConnector$3;->$SwitchMap$com$samsung$android$allshare$IAllShareConnector$AllShareServiceState:[I

    invoke-virtual {v1}, Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "ServiceConnector"

    packed-switch v2, :pswitch_data_60

    goto :goto_5b

    .line 400
    :pswitch_1f
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->mServiceProvider:Lcom/samsung/android/allshare/ServiceProvider;

    check-cast v2, Lcom/samsung/android/allshare/ServiceConnector$IServiceStateSetter;

    sget-object v4, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->DISABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 401
    invoke-interface {v2, v4}, Lcom/samsung/android/allshare/ServiceConnector$IServiceStateSetter;->setServiceState(Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V

    .line 403
    :try_start_28
    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->mListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    iget-object v4, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->mServiceProvider:Lcom/samsung/android/allshare/ServiceProvider;

    invoke-interface {v2, v4}, Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;->onDeleted(Lcom/samsung/android/allshare/ServiceProvider;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2f} :catch_35
    .catch Ljava/lang/Error; {:try_start_28 .. :try_end_2f} :catch_30

    goto :goto_39

    .line 406
    :catch_30
    move-exception v2

    .line 407
    .local v2, "err":Ljava/lang/Error;
    invoke-static {v3, v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    goto :goto_5b

    .line 404
    .end local v2    # "err":Ljava/lang/Error;
    :catch_35
    move-exception v2

    .line 405
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v3, v0, v2}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 408
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_39
    goto :goto_5b

    .line 388
    :pswitch_3a
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->mServiceProvider:Lcom/samsung/android/allshare/ServiceProvider;

    check-cast v0, Lcom/samsung/android/allshare/ServiceConnector$IServiceStateSetter;

    sget-object v2, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    .line 389
    invoke-interface {v0, v2}, Lcom/samsung/android/allshare/ServiceConnector$IServiceStateSetter;->setServiceState(Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V

    .line 391
    :try_start_43
    iget-object v0, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->mListener:Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;

    iget-object v2, p0, Lcom/samsung/android/allshare/ServiceConnector$2;->mServiceProvider:Lcom/samsung/android/allshare/ServiceProvider;

    sget-object v4, Lcom/samsung/android/allshare/ServiceConnector$ServiceState;->ENABLED:Lcom/samsung/android/allshare/ServiceConnector$ServiceState;

    invoke-interface {v0, v2, v4}, Lcom/samsung/android/allshare/ServiceConnector$IServiceConnectEventListener;->onCreated(Lcom/samsung/android/allshare/ServiceProvider;Lcom/samsung/android/allshare/ServiceConnector$ServiceState;)V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4c} :catch_54
    .catch Ljava/lang/Error; {:try_start_43 .. :try_end_4c} :catch_4d

    goto :goto_5a

    .line 394
    :catch_4d
    move-exception v0

    .line 395
    .local v0, "e":Ljava/lang/Error;
    const-string v2, "handleMessage Error"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Error;)V

    .line 398
    .end local v0    # "e":Ljava/lang/Error;
    goto :goto_5b

    .line 392
    :catch_54
    move-exception v0

    .line 393
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "handleMessage Exception"

    invoke-static {v3, v2, v0}, Lcom/samsung/android/allshare/DLog;->w_api(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 396
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_5a
    nop

    .line 413
    :goto_5b
    const/4 v0, 0x1

    return v0

    .line 382
    .end local v1    # "state":Lcom/samsung/android/allshare/IAllShareConnector$AllShareServiceState;
    :cond_5d
    :goto_5d
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_3a
        :pswitch_1f
    .end packed-switch
.end method
