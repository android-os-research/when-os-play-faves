.class public Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;
.super Ljava/lang/Object;
.source "AmbientContextManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ambientcontext/AmbientContextManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientRequest"
.end annotation


# instance fields
.field public final mClientStatusCallback:Landroid/os/RemoteCallback;

.field public final mPendingIntent:Landroid/app/PendingIntent;

.field public final mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

.field public final mUserId:I


# direct methods
.method public constructor <init>(ILandroid/app/ambientcontext/AmbientContextEventRequest;Landroid/app/PendingIntent;Landroid/os/RemoteCallback;)V
    .registers 5

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mUserId:I

    .line 76
    iput-object p2, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

    .line 77
    iput-object p3, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mPendingIntent:Landroid/app/PendingIntent;

    .line 78
    iput-object p4, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mClientStatusCallback:Landroid/os/RemoteCallback;

    return-void
.end method


# virtual methods
.method public getClientStatusCallback()Landroid/os/RemoteCallback;
    .registers 1

    .line 94
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mClientStatusCallback:Landroid/os/RemoteCallback;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .registers 1

    .line 90
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getRequest()Landroid/app/ambientcontext/AmbientContextEventRequest;
    .registers 1

    .line 86
    iget-object p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mRequest:Landroid/app/ambientcontext/AmbientContextEventRequest;

    return-object p0
.end method

.method public hasUserId(I)Z
    .registers 2

    .line 98
    iget p0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mUserId:I

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public hasUserIdAndPackageName(ILjava/lang/String;)Z
    .registers 4

    .line 102
    iget v0, p0, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->mUserId:I

    if-ne p1, v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/ambientcontext/AmbientContextManagerService$ClientRequest;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method
