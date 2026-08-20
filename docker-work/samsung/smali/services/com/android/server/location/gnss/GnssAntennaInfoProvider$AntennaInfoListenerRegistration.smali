.class public Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;
.super Lcom/android/server/location/listeners/BinderListenerRegistration;
.source "GnssAntennaInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssAntennaInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AntennaInfoListenerRegistration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/listeners/BinderListenerRegistration<",
        "Ljava/lang/Void;",
        "Landroid/location/IGnssAntennaInfoListener;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssAntennaInfoProvider;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssAntennaInfoListener;)V
    .registers 4

    .line 53
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    const/4 p1, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/listeners/BinderListenerRegistration;-><init>(Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getOwner()Lcom/android/server/location/gnss/GnssAntennaInfoProvider;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    return-object p0
.end method

.method public bridge synthetic getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .registers 1

    .line 49
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->getOwner()Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    move-result-object p0

    return-object p0
.end method

.method public onActive()V
    .registers 1

    .line 65
    invoke-super {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->onActive()V

    .line 66
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->updateAntennaListener()V

    return-void
.end method

.method public onInactive()V
    .registers 1

    .line 71
    invoke-super {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->onInactive()V

    .line 72
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->updateAntennaListener()V

    return-void
.end method

.method public final updateAntennaListener()V
    .registers 8

    .line 76
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemoteListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssAntennaInfoProvider$AntennaInfoListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssAntennaInfoProvider;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->getBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/location/listeners/ListenerRegistration;->isActive()Z

    move-result v3

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v5

    .line 79
    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v6

    .line 77
    invoke-static/range {v1 .. v6}, Lcom/android/server/location/gnss/GnssAntennaInfoProvider;->-$$Nest$mupdateGnssDataListener(Lcom/android/server/location/gnss/GnssAntennaInfoProvider;Landroid/os/IBinder;ZLjava/lang/String;II)V

    return-void
.end method
