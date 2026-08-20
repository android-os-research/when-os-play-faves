.class public Lcom/android/server/policy/LegacyGlobalActions$7;
.super Lcom/android/internal/globalactions/SinglePressAction;
.source "LegacyGlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/LegacyGlobalActions;->getLockdownAction()Lcom/android/internal/globalactions/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/LegacyGlobalActions;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/LegacyGlobalActions;II)V
    .registers 4

    .line 506
    iput-object p1, p0, Lcom/android/server/policy/LegacyGlobalActions$7;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/globalactions/SinglePressAction;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onPress()V
    .registers 3

    .line 510
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/server/policy/LegacyGlobalActions$7;->this$0:Lcom/android/server/policy/LegacyGlobalActions;

    invoke-static {p0}, Lcom/android/server/policy/LegacyGlobalActions;->-$$Nest$fgetmContext(Lcom/android/server/policy/LegacyGlobalActions;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 p0, -0x1

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->requireCredentialEntry(I)V

    .line 512
    :try_start_f
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/view/IWindowManager;->lockNow(Landroid/os/Bundle;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    move-exception p0

    const-string v0, "LegacyGlobalActions"

    const-string v1, "Error while trying to lock device."

    .line 514
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-void
.end method

.method public showBeforeProvisioning()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
