.class public Lcom/android/server/remoteappmode/InterceptedActivityInfo;
.super Ljava/lang/Object;
.source "InterceptedActivityInfo.java"


# instance fields
.field public callerInfo:Lcom/android/server/wm/RemoteAppController$CallerInfo;

.field public intent:Landroid/content/Intent;

.field public intentGrants:Lcom/android/server/uri/NeededUriGrants;

.field public userId:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Lcom/android/server/wm/RemoteAppController$CallerInfo;Lcom/android/server/uri/NeededUriGrants;I)V
    .registers 5

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/server/remoteappmode/InterceptedActivityInfo;->intent:Landroid/content/Intent;

    .line 16
    iput-object p2, p0, Lcom/android/server/remoteappmode/InterceptedActivityInfo;->callerInfo:Lcom/android/server/wm/RemoteAppController$CallerInfo;

    .line 17
    iput-object p3, p0, Lcom/android/server/remoteappmode/InterceptedActivityInfo;->intentGrants:Lcom/android/server/uri/NeededUriGrants;

    .line 18
    iput p4, p0, Lcom/android/server/remoteappmode/InterceptedActivityInfo;->userId:I

    return-void
.end method


# virtual methods
.method public getCallerInfo()Lcom/android/server/wm/RemoteAppController$CallerInfo;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/android/server/remoteappmode/InterceptedActivityInfo;->callerInfo:Lcom/android/server/wm/RemoteAppController$CallerInfo;

    return-object p0
.end method

.method public getUserId()I
    .registers 1

    .line 26
    iget p0, p0, Lcom/android/server/remoteappmode/InterceptedActivityInfo;->userId:I

    return p0
.end method
