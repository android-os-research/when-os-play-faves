.class public Lcom/android/server/wm/MultiTaskingController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "MultiTaskingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiTaskingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# static fields
.field public static final DEXONPC_CONNECTION_STATE:Ljava/lang/String; = "dexonpc_connection_state"


# instance fields
.field public mDexDeveloperModeUri:Landroid/net/Uri;

.field public mDexFontScaleUri:Landroid/net/Uri;

.field public mDexForceImmersiveModeEnabledUri:Landroid/net/Uri;

.field public mDexForceImmersiveModeSettingUri:Landroid/net/Uri;

.field public final mDexOnPC:Landroid/net/Uri;

.field public mDexRestartDialogDoNotShowAgainUri:Landroid/net/Uri;

.field public mDexStandaloneRotationUri:Landroid/net/Uri;

.field public mDexStarShowingDelayTime:Landroid/net/Uri;

.field public mDexTouchPadUsingUri:Landroid/net/Uri;

.field public mEdgeUri:Landroid/net/Uri;

.field public final mNavigationBarGestureWhileHiddenUri:Landroid/net/Uri;

.field public final mNavigationBarGesturesDetailTypeUri:Landroid/net/Uri;

.field public mNotificationBubblesUri:Landroid/net/Uri;

.field public mSmartPopupViewPackageListUri:Landroid/net/Uri;

.field public mSplitGestureUri:Landroid/net/Uri;

.field public final mUriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingController;Landroid/os/Handler;)V
    .registers 3

    .line 467
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    .line 468
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "dexonpc_connection_state"

    .line 418
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mDexOnPC:Landroid/net/Uri;

    .line 421
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    const-string p1, "navigation_bar_gesture_while_hidden"

    .line 482
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNavigationBarGestureWhileHiddenUri:Landroid/net/Uri;

    const-string p1, "navigation_bar_gesture_detail_type"

    .line 484
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNavigationBarGesturesDetailTypeUri:Landroid/net/Uri;

    const-string p1, "floating_noti_package_list"

    .line 488
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    const-string p1, "notification_bubbles"

    .line 490
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNotificationBubblesUri:Landroid/net/Uri;

    const-string p1, "edge_enable"

    .line 499
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mEdgeUri:Landroid/net/Uri;

    const-string/jumbo p1, "open_in_split_screen_view"

    .line 506
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSplitGestureUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public initSettings()V
    .registers 6

    .line 521
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 532
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNavigationBarGestureWhileHiddenUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNavigationBarGesturesDetailTypeUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 537
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNotificationBubblesUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mEdgeUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSplitGestureUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    iget-object v1, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 562
    invoke-virtual {v0, v2, v3, p0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_3c

    :cond_4e
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 564
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->readSettings(Landroid/net/Uri;Z)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    if-nez p2, :cond_c

    .line 570
    invoke-static {}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SettingsObserver_onChange: uri is null"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_c
    const/4 p1, 0x0

    .line 573
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->readSettings(Landroid/net/Uri;Z)V

    return-void
.end method

.method public readSettings(Landroid/net/Uri;Z)V
    .registers 8

    .line 577
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p2, :cond_18

    .line 600
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNavigationBarGestureWhileHiddenUri:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 601
    :cond_18
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    const-string v4, "navigation_bar_gesture_while_hidden"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_24

    move v4, v2

    goto :goto_25

    :cond_24
    move v4, v1

    :goto_25
    invoke-static {v3, v4}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fputmIsNavigationModeGesture(Lcom/android/server/wm/MultiTaskingController;Z)V

    :cond_28
    if-nez p2, :cond_32

    .line 604
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNavigationBarGesturesDetailTypeUri:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 605
    :cond_32
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    const-string v4, "navigation_bar_gesture_detail_type"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_3e

    move v4, v2

    goto :goto_3f

    :cond_3e
    move v4, v1

    :goto_3f
    invoke-static {v3, v4}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fputmIsGestureTypeSideAndBottom(Lcom/android/server/wm/MultiTaskingController;Z)V

    .line 610
    :cond_42
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v3

    if-eqz v3, :cond_79

    if-nez p2, :cond_60

    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSmartPopupViewPackageListUri:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mNotificationBubblesUri:Landroid/net/Uri;

    .line 611
    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    .line 612
    :cond_60
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const-string/jumbo v4, "setting_changed"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/FreeformController;->scheduleUnbindSmartPopupViewService(Ljava/lang/String;)V

    .line 613
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/FreeformController;->scheduleBindSmartPopupViewService(Ljava/lang/String;)V

    :cond_79
    if-nez p2, :cond_83

    .line 633
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mEdgeUri:Landroid/net/Uri;

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    :cond_83
    const-string v3, "edge_enable"

    .line 634
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_8d

    move v0, v2

    goto :goto_8e

    :cond_8d
    move v0, v1

    .line 636
    :goto_8e
    iget-object v3, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {v3}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_a3

    .line 638
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/wm/DisplayPolicy;->updateEdgeSettings(Z)V

    :cond_a3
    if-nez p2, :cond_ad

    .line 648
    iget-object p2, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mSplitGestureUri:Landroid/net/Uri;

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c6

    .line 649
    :cond_ad
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->this$0:Lcom/android/server/wm/MultiTaskingController;

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/MultiTaskingController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "open_in_split_screen_view"

    invoke-static {p1, p2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v2, :cond_c3

    move v1, v2

    :cond_c3
    invoke-static {p0, v1}, Lcom/android/server/wm/MultiTaskingController;->-$$Nest$fputmIsFullToSplitEnabled(Lcom/android/server/wm/MultiTaskingController;Z)V

    :cond_c6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SettingsObserver{mUriList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingController$SettingsObserver;->mUriList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
