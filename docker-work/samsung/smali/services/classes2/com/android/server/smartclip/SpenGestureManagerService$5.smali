.class public Lcom/android/server/smartclip/SpenGestureManagerService$5;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    .line 503
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 507
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    const-string v2, "lock_screen_quick_note"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_17

    move v2, v5

    goto :goto_18

    :cond_17
    move v2, v3

    :goto_18
    invoke-static {v1, v2}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fputmIsEnableLockScreenQuickNote(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V

    const-string/jumbo v1, "spen_double_tap_launch"

    .line 510
    invoke-static {v0, v1, v5, v4}, Landroid/provider/Settings$System;->semGetIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_25

    move v3, v5

    :cond_25
    if-nez v3, :cond_2f

    .line 512
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Double tap is disable : Spen double tap launch disabled"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 516
    :cond_2f
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-virtual {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->keyguardOn()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmIsEnableLockScreenQuickNote(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v0

    if-nez v0, :cond_5c

    .line 517
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Double tap is disable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$fgetmIsEnableLockScreenQuickNote(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 521
    :cond_5c
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$misScreenPinningEnabled(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v0

    if-ne v0, v5, :cond_6c

    .line 522
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Double tap is disabled : Screen pinning mode enabled"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 526
    :cond_6c
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$misAppSwitchingBlocked(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 527
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Double tap is disabled : App switching is blocked"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 531
    :cond_7c
    iget-object v0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {v0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$misDoubleTapBlockedAppsByMetaData(Lcom/android/server/smartclip/SpenGestureManagerService;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 532
    sget-object p0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v0, "Double tap is disabled by MetaData : This is a double-tap blocked app."

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 536
    :cond_8c
    sget-object v0, Lcom/android/server/smartclip/SpenGestureManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Double tapped!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$5;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mlaunchDoubleTapAction(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    return-void
.end method
