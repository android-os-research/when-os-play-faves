.class public Lcom/android/server/input/InputManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2

    .line 962
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 965
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mupdatePointerSpeedFromSettings(Lcom/android/server/input/InputManagerService;)V

    .line 966
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mupdateShowTouchesFromSettings(Lcom/android/server/input/InputManagerService;)V

    .line 967
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mupdateAccessibilityLargePointerFromSettings(Lcom/android/server/input/InputManagerService;)V

    .line 969
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mupdatePointerIconCustomFromSettings(Lcom/android/server/input/InputManagerService;)V

    .line 971
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const-string/jumbo p2, "user switched"

    invoke-static {p1, p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$mupdateDeepPressStatusFromSettings(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V

    .line 975
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updateAccessibilityEnabledFromSettings()V

    .line 979
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updateAOTOnOffSettings()V

    .line 982
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updateShowHoveringFromSettings()V

    .line 983
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updatePenHoveringFromSettings()V

    .line 992
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updateSetPenModeOnDex()V

    .line 996
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updateEnabledInputMethodsFromSettings()V

    .line 1000
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updatePrimaryMouseButtonFromSetting()V

    .line 1001
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updateScrollSpeedFromSetting()V

    .line 1002
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updateUseMouseAccelerationFromSetting()V

    .line 1003
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updateSecondaryButtonBehaviorFromSetting()V

    .line 1004
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updateTertiaryButtonBehaviorFromSetting()V

    .line 1005
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updateBackButtonBehaviorFromSetting()V

    .line 1006
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updateForwardButtonBehaviorFromSetting()V

    .line 1010
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updateCoverTestModeFromSettings()V

    .line 1014
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Lcom/android/server/input/InputManagerService;->updateMultiFingerTapBehavior(I)V

    .line 1015
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/input/InputManagerService;->updateMultiFingerTapBehavior(I)V

    .line 1016
    iget-object p1, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p1}, Lcom/android/server/input/InputManagerService;->updateTapToClickFromSetting()V

    .line 1017
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$1;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService;->updateReverseSwipeFromSetting()V

    return-void
.end method
