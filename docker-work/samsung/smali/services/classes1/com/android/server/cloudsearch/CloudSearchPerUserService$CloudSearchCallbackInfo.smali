.class public final Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;
.super Ljava/lang/Object;
.source "CloudSearchPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cloudsearch/CloudSearchPerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CloudSearchCallbackInfo"
.end annotation


# static fields
.field public static final DEBUG:Z = false


# instance fields
.field public final mCallback:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

.field public final mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public final mRequestId:Ljava/lang/String;

.field public final mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;)Landroid/app/cloudsearch/ICloudSearchManagerCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mCallback:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;Landroid/os/IBinder;Landroid/os/IBinder$DeathRecipient;)V
    .registers 6

    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 363
    iput-object p1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mRequestId:Ljava/lang/String;

    .line 364
    iput-object p2, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

    .line 365
    iput-object p3, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mCallback:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    .line 366
    iput-object p4, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mToken:Landroid/os/IBinder;

    .line 367
    iput-object p5, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 4

    .line 387
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 388
    iget-object v2, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, v2, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 390
    :cond_a
    iget-object v0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mCallback:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    invoke-interface {v0}, Landroid/app/cloudsearch/ICloudSearchManagerCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public linkToDeath()Z
    .registers 3

    const/4 v0, 0x0

    .line 372
    :try_start_1
    iget-object v1, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mToken:Landroid/os/IBinder;

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    const/4 p0, 0x1

    return p0

    :catch_a
    return v0
.end method

.method public resurrectSessionLocked(Lcom/android/server/cloudsearch/CloudSearchPerUserService;Landroid/os/IBinder;)V
    .registers 3

    .line 398
    iget-object p2, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mSearchRequest:Landroid/app/cloudsearch/SearchRequest;

    iget-object p0, p0, Lcom/android/server/cloudsearch/CloudSearchPerUserService$CloudSearchCallbackInfo;->mCallback:Landroid/app/cloudsearch/ICloudSearchManagerCallback;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/cloudsearch/CloudSearchPerUserService;->onSearchLocked(Landroid/app/cloudsearch/SearchRequest;Landroid/app/cloudsearch/ICloudSearchManagerCallback;)V

    return-void
.end method
