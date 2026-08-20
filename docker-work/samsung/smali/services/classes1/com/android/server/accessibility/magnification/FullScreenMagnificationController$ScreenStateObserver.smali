.class public Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;
.super Landroid/content/BroadcastReceiver;
.source "FullScreenMagnificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenStateObserver"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

.field public mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V
    .registers 4

    .line 1685
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 1683
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    .line 1686
    iput-object p1, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    .line 1687
    iput-object p2, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 1706
    iget-object p0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mController:Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;

    invoke-static {p0}, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;->-$$Nest$monScreenTurnedOff(Lcom/android/server/accessibility/magnification/FullScreenMagnificationController;)V

    return-void
.end method

.method public registerIfNecessary()V
    .registers 4

    .line 1691
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    if-nez v0, :cond_13

    .line 1692
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 1693
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    :cond_13
    return-void
.end method

.method public unregister()V
    .registers 2

    .line 1698
    iget-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    if-eqz v0, :cond_c

    .line 1699
    iget-object v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1700
    iput-boolean v0, p0, Lcom/android/server/accessibility/magnification/FullScreenMagnificationController$ScreenStateObserver;->mRegistered:Z

    :cond_c
    return-void
.end method
