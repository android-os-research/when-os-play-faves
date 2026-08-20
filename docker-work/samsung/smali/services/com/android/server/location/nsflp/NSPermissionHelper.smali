.class public Lcom/android/server/location/nsflp/NSPermissionHelper;
.super Ljava/lang/Object;
.source "NSPermissionHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;,
        Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "NSPermissionHelper"


# instance fields
.field public final mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

.field public final mUidObserver:Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/UserInfoHelper;Lcom/android/server/location/nsflp/NSConnectionHelper;)V
    .registers 5

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NSPermissionHelper"

    const-string v1, "constructor"

    .line 20
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iput-object p2, p0, Lcom/android/server/location/nsflp/NSPermissionHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    .line 23
    new-instance p2, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;-><init>(Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver-IA;)V

    iput-object p2, p0, Lcom/android/server/location/nsflp/NSPermissionHelper;->mUidObserver:Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;

    .line 24
    invoke-virtual {p1, p2}, Lcom/android/server/location/injector/UserInfoHelper;->registerUidObserver(Landroid/app/IUidObserver;)V

    return-void
.end method


# virtual methods
.method public getUidState(I)Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;
    .registers 2

    .line 58
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper;->mUidObserver:Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;

    invoke-static {p0, p1}, Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;->-$$Nest$mgetUidState(Lcom/android/server/location/nsflp/NSPermissionHelper$UidObserver;I)Lcom/android/server/location/nsflp/NSPermissionHelper$UidState;

    move-result-object p0

    return-object p0
.end method

.method public sendFreezeStateChanged(ZI)V
    .registers 5

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "enabled"

    .line 51
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string/jumbo p1, "uid"

    .line 52
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->FREEZE_STATE_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendOpChanged(Ljava/lang/String;)V
    .registers 4

    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "packageName"

    .line 37
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->OP_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendPermissionsChange(I)V
    .registers 4

    .line 43
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uid"

    .line 44
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->PERMISSIONS_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method

.method public updateUidForegroundChanged(IZ)V
    .registers 5

    .line 28
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "uid"

    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "foreground"

    .line 30
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 32
    iget-object p0, p0, Lcom/android/server/location/nsflp/NSPermissionHelper;->mNSConnectionHelper:Lcom/android/server/location/nsflp/NSConnectionHelper;

    sget-object p1, Landroid/location/LocationConstants$STATE_TYPE;->FOREGROUND_CHANGED:Landroid/location/LocationConstants$STATE_TYPE;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/nsflp/NSConnectionHelper;->onStateUpdated(Landroid/location/LocationConstants$STATE_TYPE;Landroid/os/Bundle;)V

    return-void
.end method
