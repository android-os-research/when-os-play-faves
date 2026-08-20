.class public Lcom/android/server/vr/GearVrManagerInternalImpl;
.super Lcom/samsung/android/vr/GearVrManagerInternal;
.source "GearVrManagerInternalImpl.java"


# instance fields
.field public mXrManagerService:Lcom/android/server/vr/XrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/XrManagerService;)V
    .registers 2

    .line 18
    invoke-direct {p0}, Lcom/samsung/android/vr/GearVrManagerInternal;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    return-void
.end method


# virtual methods
.method public getHmtDevice()Lcom/samsung/android/vr/HmtDevice;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->getHmtDevice()Lcom/samsung/android/vr/HmtDevice;

    move-result-object p0

    return-object p0
.end method

.method public getMetaScreenDisplayId()I
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->getMetaScreenDisplayId()I

    move-result p0

    return p0
.end method

.method public getPreferredXrDisplayId()I
    .registers 1

    .line 75
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->getPreferredXrDisplayId()I

    move-result p0

    return p0
.end method

.method public is3rdPartyDevice(Ljava/lang/String;)Z
    .registers 2

    .line 110
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/HmtManager;->is3rdPartyDeviceMatched(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isConnect()Z
    .registers 1

    .line 65
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isConnect()Z

    move-result p0

    return p0
.end method

.method public isDock()Z
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isDock()Z

    move-result p0

    return p0
.end method

.method public isGearVrInputDevice(Landroid/view/InputDevice;)Z
    .registers 2

    .line 85
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/HmtManager;->isDeviceMatched(Landroid/view/InputDevice;)Z

    move-result p0

    return p0
.end method

.method public isHmtDevice(Ljava/lang/String;)Z
    .registers 2

    .line 105
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/HmtManager;->isDeviceMatched(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isMount()Z
    .registers 1

    .line 50
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isMount()Z

    move-result p0

    return p0
.end method

.method public isMounted()Z
    .registers 1

    .line 55
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isMounted()Z

    move-result p0

    return p0
.end method

.method public isPersistentVrMode()Z
    .registers 1

    .line 95
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->isPersistentVrMode()Z

    move-result p0

    return p0
.end method

.method public isPowerLimitingDevice(Ljava/lang/String;)Z
    .registers 2

    .line 115
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mHmtManager:Lcom/android/server/vr/HmtManager;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/HmtManager;->isPowerLimitingDevice(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isVrMode(I)Z
    .registers 2

    .line 120
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->isVrMode(I)Z

    move-result p0

    return p0
.end method

.method public notifyActivityResumeChanged(ILandroid/content/ComponentName;ILandroid/content/ComponentName;II)Z
    .registers 14

    .line 40
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    new-instance v6, Lcom/android/server/vr/XrActivityInfo;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/vr/XrActivityInfo;-><init>(ILandroid/content/ComponentName;ILandroid/content/ComponentName;I)V

    invoke-virtual {p0, p5, v6}, Lcom/android/server/vr/XrManagerService;->notifyActivityResumeChanged(ILcom/android/server/vr/XrActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V
    .registers 2

    .line 24
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->notifyHmtEventChanged(Lcom/samsung/android/vr/HmtEvent;)V

    return-void
.end method

.method public onScreenStateChanged(Z)V
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->setScreenState(Z)V

    return-void
.end method

.method public registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 2

    .line 29
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mGearVrStateCallbacksController:Lcom/android/server/vr/GearVrStateCallbacksController;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/GearVrStateCallbacksController;->registerVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method

.method public setConnect(Z)V
    .registers 2

    .line 70
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->setConnect(Z)V

    return-void
.end method

.method public setMount(Z)V
    .registers 2

    .line 60
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->setMount(Z)V

    return-void
.end method

.method public setPersistentVrMode(Z)V
    .registers 2

    .line 90
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/XrManagerService;->setPersistentVrMode(Z)V

    return-void
.end method

.method public unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V
    .registers 2

    .line 34
    iget-object p0, p0, Lcom/android/server/vr/GearVrManagerInternalImpl;->mXrManagerService:Lcom/android/server/vr/XrManagerService;

    iget-object p0, p0, Lcom/android/server/vr/XrManagerService;->mGearVrStateCallbacksController:Lcom/android/server/vr/GearVrStateCallbacksController;

    invoke-virtual {p0, p1}, Lcom/android/server/vr/GearVrStateCallbacksController;->unregisterVrStateListener(Lcom/samsung/android/vr/IGearVrStateCallbacks;)V

    return-void
.end method
