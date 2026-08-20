.class public final Lcom/android/server/media/MediaRouterService$ClientRecord;
.super Ljava/lang/Object;
.source "MediaRouterService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ClientRecord"
.end annotation


# instance fields
.field public mActiveScan:Z

.field public final mClient:Landroid/media/IMediaRouterClient;

.field public mControlCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mGroupId:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public mRouteTypes:I

.field public mSelectedRouteId:Ljava/lang/String;

.field public final mTrusted:Z

.field public final mUid:I

.field public final mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

.field public final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;Lcom/android/server/media/MediaRouterService$UserRecord;Landroid/media/IMediaRouterClient;IILjava/lang/String;Z)V
    .registers 8

    .line 1016
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1017
    iput-object p2, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    .line 1018
    iput-object p3, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    .line 1019
    iput p4, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUid:I

    .line 1020
    iput p5, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPid:I

    .line 1021
    iput-object p6, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPackageName:Ljava/lang/String;

    .line 1022
    iput-boolean p7, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 1031
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v0, p0}, Lcom/android/server/media/MediaRouterService;->clientDied(Lcom/android/server/media/MediaRouterService$ClientRecord;)V

    return-void
.end method

.method public dispose()V
    .registers 3

    .line 1026
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mClient:Landroid/media/IMediaRouterClient;

    invoke-interface {v0}, Landroid/media/IMediaRouterClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 1039
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mTrusted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mRouteTypes=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mRouteTypes:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1044
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "mActiveScan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mActiveScan:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "mSelectedRouteId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mSelectedRouteId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getState()Landroid/media/MediaRouterClientState;
    .registers 2

    .line 1035
    iget-boolean v0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mTrusted:Z

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mUserRecord:Lcom/android/server/media/MediaRouterService$UserRecord;

    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$UserRecord;->mRouterState:Landroid/media/MediaRouterClientState;

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (pid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/media/MediaRouterService$ClientRecord;->mPid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
