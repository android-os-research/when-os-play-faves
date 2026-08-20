.class public Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;
.super Ljava/lang/Object;
.source "PolicyGlobalActionsManager.java"

# interfaces
.implements Lcom/samsung/android/globalactions/presentation/SamsungGlobalActionsManager;


# instance fields
.field public final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    return-void
.end method


# virtual methods
.method public isFOTAAvailableForGlobalActions()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onGlobalActionsHidden()V
    .registers 1

    return-void
.end method

.method public onGlobalActionsShown()V
    .registers 1

    return-void
.end method

.method public reboot(Z)V
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 36
    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->rebootSafeMode(Z)V

    goto :goto_e

    .line 38
    :cond_9
    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->reboot(Z)V

    :goto_e
    return-void
.end method

.method public shutdown()V
    .registers 2

    .line 30
    iget-object p0, p0, Lcom/android/server/policy/globalactions/presentation/PolicyGlobalActionsManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    return-void
.end method
