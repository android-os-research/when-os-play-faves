.class public abstract Lcom/android/media/remotedisplay/RemoteDisplayProvider;
.super Ljava/lang/Object;
.source "RemoteDisplayProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;,
        Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;
    }
.end annotation


# static fields
.field public static final DISCOVERY_MODE_ACTIVE:I = 0x2

.field public static final DISCOVERY_MODE_NONE:I = 0x0

.field public static final DISCOVERY_MODE_PASSIVE:I = 0x1

.field private static final MSG_ADJUST_VOLUME:I = 0x6

.field private static final MSG_CONNECT:I = 0x3

.field private static final MSG_DISCONNECT:I = 0x4

.field private static final MSG_SET_CALLBACK:I = 0x1

.field private static final MSG_SET_DISCOVERY_MODE:I = 0x2

.field private static final MSG_SET_VOLUME:I = 0x5

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "com.android.media.remotedisplay.RemoteDisplayProvider"


# instance fields
.field private mCallback:Landroid/media/IRemoteDisplayCallback;

.field private final mContext:Landroid/content/Context;

.field private mDiscoveryMode:I

.field private final mDisplays:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/media/remotedisplay/RemoteDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

.field private mSettingsPendingIntent:Landroid/app/PendingIntent;

.field private final mStub:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mHandler:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDiscoveryMode:I

    .line 152
    iput-object p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mContext:Landroid/content/Context;

    .line 153
    new-instance v0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;

    invoke-direct {v0, p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;-><init>(Lcom/android/media/remotedisplay/RemoteDisplayProvider;)V

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mStub:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;

    .line 154
    new-instance v0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;-><init>(Lcom/android/media/remotedisplay/RemoteDisplayProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mHandler:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;

    .line 155
    return-void
.end method


# virtual methods
.method public addDisplay(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .registers 4
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    .line 244
    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 247
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->publishState()V

    .line 249
    return-void

    .line 245
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/media/remotedisplay/RemoteDisplay;

    return-object v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mStub:Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderStub;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDiscoveryMode()I
    .registers 2

    .line 225
    iget v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDiscoveryMode:I

    return v0
.end method

.method public getDisplays()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/media/remotedisplay/RemoteDisplay;",
            ">;"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSettingsPendingIntent()Landroid/app/PendingIntent;
    .registers 6

    .line 293
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1c

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CAST_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, "settingsIntent":Landroid/content/Intent;
    const/high16 v1, 0x14200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 298
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x2000000

    const/4 v4, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    .line 301
    .end local v0    # "settingsIntent":Landroid/content/Intent;
    :cond_1c
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mSettingsPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public onAdjustVolume(Lcom/android/media/remotedisplay/RemoteDisplay;I)V
    .registers 3
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;
    .param p2, "delta"    # I

    .line 217
    return-void
.end method

.method public onConnect(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .registers 2
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    .line 191
    return-void
.end method

.method public onDisconnect(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .registers 2
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    .line 199
    return-void
.end method

.method public onDiscoveryModeChanged(I)V
    .registers 2
    .param p1, "mode"    # I

    .line 183
    return-void
.end method

.method public onSetVolume(Lcom/android/media/remotedisplay/RemoteDisplay;I)V
    .registers 3
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;
    .param p2, "volume"    # I

    .line 208
    return-void
.end method

.method publishState()V
    .registers 7

    .line 317
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mCallback:Landroid/media/IRemoteDisplayCallback;

    if-eqz v0, :cond_2d

    .line 318
    new-instance v0, Landroid/media/RemoteDisplayState;

    invoke-direct {v0}, Landroid/media/RemoteDisplayState;-><init>()V

    .line 319
    .local v0, "state":Landroid/media/RemoteDisplayState;
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 320
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_26

    .line 321
    iget-object v3, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/media/remotedisplay/RemoteDisplay;

    .line 322
    .local v3, "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    iget-object v4, v0, Landroid/media/RemoteDisplayState;->displays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Lcom/android/media/remotedisplay/RemoteDisplay;->getInfo()Landroid/media/RemoteDisplayState$RemoteDisplayInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 320
    .end local v3    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 325
    .end local v2    # "i":I
    :cond_26
    :try_start_26
    iget-object v2, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mCallback:Landroid/media/IRemoteDisplayCallback;

    invoke-interface {v2, v0}, Landroid/media/IRemoteDisplayCallback;->onStateChanged(Landroid/media/RemoteDisplayState;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c

    .line 328
    goto :goto_2d

    .line 326
    :catch_2c
    move-exception v2

    .line 330
    .end local v0    # "state":Landroid/media/RemoteDisplayState;
    .end local v1    # "count":I
    :cond_2d
    :goto_2d
    return-void
.end method

.method public removeDisplay(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .registers 4
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    .line 270
    if-eqz p1, :cond_1b

    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_1b

    .line 273
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-virtual {p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->publishState()V

    .line 275
    return-void

    .line 271
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setCallback(Landroid/media/IRemoteDisplayCallback;)V
    .registers 2
    .param p1, "callback"    # Landroid/media/IRemoteDisplayCallback;

    .line 305
    iput-object p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mCallback:Landroid/media/IRemoteDisplayCallback;

    .line 306
    invoke-virtual {p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->publishState()V

    .line 307
    return-void
.end method

.method setDiscoveryMode(I)V
    .registers 3
    .param p1, "mode"    # I

    .line 310
    iget v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDiscoveryMode:I

    if-eq v0, p1, :cond_9

    .line 311
    iput p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDiscoveryMode:I

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onDiscoveryModeChanged(I)V

    .line 314
    :cond_9
    return-void
.end method

.method public updateDisplay(Lcom/android/media/remotedisplay/RemoteDisplay;)V
    .registers 4
    .param p1, "display"    # Lcom/android/media/remotedisplay/RemoteDisplay;

    .line 258
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->mDisplays:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/media/remotedisplay/RemoteDisplay;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_12

    .line 261
    invoke-virtual {p0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->publishState()V

    .line 262
    return-void

    .line 259
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "display"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
