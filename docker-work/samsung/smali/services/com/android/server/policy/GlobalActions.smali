.class public Lcom/android/server/policy/GlobalActions;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;


# static fields
.field public static final DEBUG:Z = false

.field public static final GLOBALACTIONS_SAMSUNG_STYLE:Z = true

.field public static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDeviceProvisioned:Z

.field public mGlobalActionsAvailable:Z

.field public final mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

.field public mKeyguardShowing:Z

.field public mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

.field public mSamsungGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

.field public final mShowTimeout:Ljava/lang/Runnable;

.field public mShowing:Z

.field public final mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeviceProvisioned(Lcom/android/server/policy/GlobalActions;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKeyguardShowing(Lcom/android/server/policy/GlobalActions;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLegacyGlobalActions(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/LegacyGlobalActions;
    .registers 1

    iget-object p0, p0, Lcom/android/server/policy/GlobalActions;->mLegacyGlobalActions:Lcom/android/server/policy/LegacyGlobalActions;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mensureLegacyCreated(Lcom/android/server/policy/GlobalActions;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
    .registers 4

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Lcom/android/server/policy/GlobalActions$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/GlobalActions$1;-><init>(Lcom/android/server/policy/GlobalActions;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mShowTimeout:Ljava/lang/Runnable;

    .line 54
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    .line 60
    const-class p1, Lcom/android/server/policy/GlobalActionsProvider;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/policy/GlobalActionsProvider;

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    if-eqz p1, :cond_1e

    .line 62
    invoke-interface {p1, p0}, Lcom/android/server/policy/GlobalActionsProvider;->setGlobalActionsListener(Lcom/android/server/policy/GlobalActionsProvider$GlobalActionsListener;)V

    goto :goto_25

    :cond_1e
    const-string p0, "GlobalActions"

    const-string p1, "No GlobalActionsProvider found, defaulting to LegacyGlobalActions"

    .line 64
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_25
    return-void
.end method


# virtual methods
.method public final ensureLegacyCreated()V
    .registers 5

    .line 70
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSamsungGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    if-eqz v0, :cond_5

    return-void

    .line 71
    :cond_5
    new-instance v0, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    iget-object v1, p0, Lcom/android/server/policy/GlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    new-instance v3, Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/policy/GlobalActions$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/GlobalActions;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/policy/GlobalActions;->mSamsungGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    return-void
.end method

.method public isDialogPowerOptionHidden()Z
    .registers 4

    .line 158
    invoke-static {}, Lcom/samsung/android/knox/custom/ProKioskManager;->getInstance()Lcom/samsung/android/knox/custom/ProKioskManager;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_34

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getProKioskState()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/knox/custom/ProKioskManager;->getPowerDialogOptionMode()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_15

    goto :goto_16

    :cond_15
    const/4 v0, 0x1

    .line 162
    :goto_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Knox Custom: getPowerDialogOptionMode() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " returning : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "GlobalActions"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_34
    return v0
.end method

.method public isDialogShowing()Z
    .registers 1

    .line 154
    iget-boolean p0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    return p0
.end method

.method public onGlobalActionsAvailableChanged(Z)V
    .registers 5

    .line 129
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    .line 130
    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    if-eqz v0, :cond_16

    if-nez p1, :cond_16

    .line 133
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    .line 135
    iget-object p1, p0, Lcom/android/server/policy/GlobalActions;->mSamsungGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean p0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    const/4 v1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p1, v0, p0, v1, v2}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->show(ZZZI)V

    :cond_16
    return-void
.end method

.method public onGlobalActionsDismissed()V
    .registers 2

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    return-void
.end method

.method public onGlobalActionsShown()V
    .registers 1

    return-void
.end method

.method public showDialog(ZZ)V
    .registers 4

    const/4 v0, -0x1

    .line 81
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/GlobalActions;->showDialog(ZZI)V

    return-void
.end method

.method public showDialog(ZZI)V
    .registers 5

    .line 86
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/android/server/policy/GlobalActionsProvider;->isGlobalActionsDisabled()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    .line 89
    :cond_b
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    .line 90
    iput-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/android/server/policy/GlobalActions;->mShowing:Z

    .line 92
    iget-boolean p2, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsAvailable:Z

    if-eqz p2, :cond_1c

    .line 97
    iget-object p0, p0, Lcom/android/server/policy/GlobalActions;->mGlobalActionsProvider:Lcom/android/server/policy/GlobalActionsProvider;

    invoke-interface {p0, p3}, Lcom/android/server/policy/GlobalActionsProvider;->showGlobalActions(I)V

    goto :goto_28

    .line 101
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/policy/GlobalActions;->ensureLegacyCreated()V

    .line 103
    iget-object p2, p0, Lcom/android/server/policy/GlobalActions;->mSamsungGlobalActions:Lcom/android/server/policy/globalactions/presentation/view/SamsungGlobalActionsDialog;

    iget-boolean v0, p0, Lcom/android/server/policy/GlobalActions;->mKeyguardShowing:Z

    iget-boolean p0, p0, Lcom/android/server/policy/GlobalActions;->mDeviceProvisioned:Z

    invoke-virtual {p2, v0, p0, p1, p3}, Lcom/samsung/android/globalactions/presentation/view/SamsungGlobalActionsDialogBase;->show(ZZZI)V

    :goto_28
    return-void
.end method
