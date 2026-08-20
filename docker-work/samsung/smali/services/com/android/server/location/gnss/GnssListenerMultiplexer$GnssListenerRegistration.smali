.class public Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
.super Lcom/android/server/location/listeners/BinderListenerRegistration;
.source "GnssListenerMultiplexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssListenerMultiplexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GnssListenerRegistration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/listeners/BinderListenerRegistration<",
        "TTRequest;TT",
        "Listener;",
        ">;"
    }
.end annotation


# instance fields
.field public mForeground:Z

.field public mPermitted:Z

.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTRequest;",
            "Landroid/location/util/identity/CallerIdentity;",
            "TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    .line 86
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/location/listeners/BinderListenerRegistration;-><init>(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getOwner()Lcom/android/server/location/gnss/GnssListenerMultiplexer;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/server/location/gnss/GnssListenerMultiplexer<",
            "TTRequest;TT",
            "Listener;",
            "TTMergedRegistration;>;"
        }
    .end annotation

    .line 91
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    return-object p0
.end method

.method public bridge synthetic getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .registers 1

    .line 76
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getOwner()Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    move-result-object p0

    return-object p0
.end method

.method public isForeground()Z
    .registers 1

    .line 98
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    return p0
.end method

.method public isPermitted()Z
    .registers 1

    .line 102
    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    return p0
.end method

.method public onActive()V
    .registers 1

    .line 190
    invoke-super {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->onActive()V

    .line 191
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->updateGnssListener()V

    return-void
.end method

.method public final onBinderListenerRegister()V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    .line 108
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    const/4 v2, 0x2

    .line 107
    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    .line 109
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mAppForegroundHelper:Lcom/android/server/location/injector/AppForegroundHelper;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/injector/AppForegroundHelper;->isAppForeground(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    .line 111
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onGnssListenerRegister()V

    return-void
.end method

.method public final onBinderListenerUnregister()V
    .registers 1

    .line 116
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onGnssListenerUnregister()V

    return-void
.end method

.method public onForegroundChanged(IZ)Z
    .registers 4

    .line 157
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    if-ne v0, p1, :cond_12

    iget-boolean p1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    if-eq p2, p1, :cond_12

    .line 158
    iput-boolean p2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method public onGnssListenerRegister()V
    .registers 1

    return-void
.end method

.method public onGnssListenerUnregister()V
    .registers 1

    return-void
.end method

.method public onInactive()V
    .registers 1

    .line 196
    invoke-super {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->onInactive()V

    .line 197
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->updateGnssListener()V

    return-void
.end method

.method public final onLocationPermissionsChanged()Z
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    iget-object v0, v0, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    .line 147
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    const/4 v2, 0x2

    .line 146
    invoke-virtual {v0, v2, v1}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    .line 148
    iget-boolean v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    if-eq v0, v1, :cond_15

    .line 149
    iput-boolean v0, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    const/4 p0, 0x1

    return p0

    :cond_15
    const/4 p0, 0x0

    return p0
.end method

.method public onLocationPermissionsChanged(I)Z
    .registers 3

    .line 138
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    if-ne v0, p1, :cond_f

    .line 139
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onLocationPermissionsChanged()Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x0

    return p0
.end method

.method public onLocationPermissionsChanged(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_13

    .line 130
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    .line 131
    :cond_13
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onLocationPermissionsChanged()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 171
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mForeground:Z

    if-nez v2, :cond_1b

    const-string v2, "bg"

    .line 172
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_1b
    iget-boolean v2, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->mPermitted:Z

    if-nez v2, :cond_25

    const-string/jumbo v2, "na"

    .line 175
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_25
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    const-string v3, " "

    if-nez v2, :cond_33

    .line 178
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    :cond_33
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RequestListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RequestListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateGnssListener()V
    .registers 8

    .line 201
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssListenerMultiplexer;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v3

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 203
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v5

    .line 204
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v6

    .line 202
    invoke-static/range {v1 .. v6}, Lcom/android/server/location/gnss/GnssListenerMultiplexer;->-$$Nest$mupdateGnssDataListener(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Landroid/os/IBinder;ZLjava/lang/String;II)V

    return-void
.end method
