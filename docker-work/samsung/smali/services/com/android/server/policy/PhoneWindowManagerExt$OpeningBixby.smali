.class public Lcom/android/server/policy/PhoneWindowManagerExt$OpeningBixby;
.super Lcom/android/server/policy/SideKeyDoublePress$Behavior;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpeningBixby"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3259
    invoke-direct {p0}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;-><init>()V

    return-void
.end method


# virtual methods
.method public doublePressLaunchPolicy(Z)Z
    .registers 5

    .line 3282
    invoke-super {p0, p1}, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->doublePressLaunchPolicy(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 3285
    :cond_8
    iget-object v0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v2}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->showBixbyToast(ZZ)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1e

    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;

    .line 3286
    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->isBixbyServiceAvailable()Z

    move-result p0

    if-eqz p0, :cond_1e

    move v1, v2

    :cond_1e
    return v1
.end method

.method public getAction()I
    .registers 1

    const/4 p0, 0x3

    return p0
.end method

.method public launchApp(Landroid/view/KeyEvent;ZZLandroid/content/Intent;Landroid/content/Intent;)V
    .registers 6

    .line 3276
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;

    new-instance p3, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;

    invoke-direct {p3, p1, p2}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;-><init>(Landroid/view/KeyEvent;Z)V

    .line 3277
    invoke-virtual {p3}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->setDoublePress()Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams$Builder;->build()Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;

    move-result-object p1

    .line 3276
    invoke-virtual {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->startBixbyService(Lcom/android/server/policy/PhoneWindowManagerExt$BixbyServiceParams;)V

    return-void
.end method

.method public launchTargetAction(Landroid/content/Intent;)V
    .registers 2

    .line 3267
    iget-object p0, p0, Lcom/android/server/policy/SideKeyDoublePress$Behavior;->mPolicyExt:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mBixbyService:Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$BixbyService;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_d

    .line 3269
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_d
    return-void
.end method
