.class public final Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;
.super Landroid/database/ContentObserver;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AccessibilityContentObserver"
.end annotation


# instance fields
.field public final mA11yAMEnableUri:Landroid/net/Uri;

.field public final mA11yAMMagnificationEnableUri:Landroid/net/Uri;

.field public final mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

.field public final mAccessibilityButtonTargetsUri:Landroid/net/Uri;

.field public final mAccessibilityDirectAccessServiceIdUri:Landroid/net/Uri;

.field public final mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

.field public final mAccessibilitySoftKeyboardModeUri:Landroid/net/Uri;

.field public final mAmplifyAmbientSountEnableUri:Landroid/net/Uri;

.field public final mAudioDescriptionByDefaultUri:Landroid/net/Uri;

.field public final mAutoActionEnabledUri:Landroid/net/Uri;

.field public final mAutoclickEnabledUri:Landroid/net/Uri;

.field public final mBounceKeysEnabledUri:Landroid/net/Uri;

.field public final mColorLensEnableUri:Landroid/net/Uri;

.field public final mCornerActionEnabledUri:Landroid/net/Uri;

.field public final mDisplayMagnificationEnabledUri:Landroid/net/Uri;

.field public final mEnabledAccessibilityServicesUri:Landroid/net/Uri;

.field public final mFlashNotificationUrl:Landroid/net/Uri;

.field public final mHighContrastTextEnableUri:Landroid/net/Uri;

.field public final mHighTextContrastUri:Landroid/net/Uri;

.field public final mMagnificationCapabilityUri:Landroid/net/Uri;

.field public final mMagnificationFollowTypingUri:Landroid/net/Uri;

.field public final mMagnificationModeUri:Landroid/net/Uri;

.field public final mNaviBarModeUri:Landroid/net/Uri;

.field public final mOneHandModeActivateUri:Landroid/net/Uri;

.field public final mScreenCurtainEnabledUri:Landroid/net/Uri;

.field public final mScreenFlashNotiUri:Landroid/net/Uri;

.field public final mShowImeWithHardKeyboardUri:Landroid/net/Uri;

.field public final mSlowKeysEnabledUri:Landroid/net/Uri;

.field public final mStickyKeysEnabledUri:Landroid/net/Uri;

.field public final mTapDurationEnabledUri:Landroid/net/Uri;

.field public final mTouchBlockingEnabledUri:Landroid/net/Uri;

.field public final mTouchExplorationEnabledUri:Landroid/net/Uri;

.field public final mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

.field public final mUserInteractiveUiTimeoutUri:Landroid/net/Uri;

.field public final mUserNonInteractiveUiTimeoutUri:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 5141
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5142
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "touch_exploration_enabled"

    .line 5043
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    const-string p1, "accessibility_display_magnification_enabled"

    .line 5046
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    const-string p1, "accessibility_autoclick_enabled"

    .line 5049
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoclickEnabledUri:Landroid/net/Uri;

    const-string p1, "accessibility_auto_action_type"

    .line 5053
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoActionEnabledUri:Landroid/net/Uri;

    const-string p1, "accessibility_corner_action_enabled"

    .line 5056
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mCornerActionEnabledUri:Landroid/net/Uri;

    const-string p1, "enabled_accessibility_services"

    .line 5060
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    const-string/jumbo p1, "touch_exploration_granted_accessibility_services"

    .line 5064
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    const-string/jumbo p1, "high_text_contrast_enabled"

    .line 5066
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    const-string p2, "enabled_accessibility_audio_description_by_default"

    .line 5069
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAudioDescriptionByDefaultUri:Landroid/net/Uri;

    const-string p2, "accessibility_soft_keyboard_mode"

    .line 5072
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilitySoftKeyboardModeUri:Landroid/net/Uri;

    const-string/jumbo p2, "show_ime_with_hard_keyboard"

    .line 5075
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mShowImeWithHardKeyboardUri:Landroid/net/Uri;

    const-string/jumbo p2, "lcd_curtain"

    .line 5078
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mScreenCurtainEnabledUri:Landroid/net/Uri;

    const-string p2, "accessibility_shortcut_target_service"

    .line 5081
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

    const-string p2, "accessibility_direct_access_target_service"

    .line 5084
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityDirectAccessServiceIdUri:Landroid/net/Uri;

    const-string p2, "accessibility_button_target_component"

    .line 5087
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

    const-string p2, "accessibility_button_targets"

    .line 5090
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonTargetsUri:Landroid/net/Uri;

    const-string p2, "accessibility_non_interactive_ui_timeout_ms"

    .line 5093
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserNonInteractiveUiTimeoutUri:Landroid/net/Uri;

    const-string p2, "accessibility_interactive_ui_timeout_ms"

    .line 5096
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserInteractiveUiTimeoutUri:Landroid/net/Uri;

    const-string p2, "accessibility_magnification_mode"

    .line 5099
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationModeUri:Landroid/net/Uri;

    const-string p2, "accessibility_magnification_capability"

    .line 5102
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationCapabilityUri:Landroid/net/Uri;

    const-string p2, "accessibility_magnification_follow_typing_enabled"

    .line 5105
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationFollowTypingUri:Landroid/net/Uri;

    const-string p2, "flash_notification"

    .line 5108
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mFlashNotificationUrl:Landroid/net/Uri;

    const-string/jumbo p2, "screen_notification"

    .line 5109
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mScreenFlashNotiUri:Landroid/net/Uri;

    const-string/jumbo p2, "tap_duration_enabled"

    .line 5111
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTapDurationEnabledUri:Landroid/net/Uri;

    const-string/jumbo p2, "touch_blocking_enabled"

    .line 5114
    invoke-static {p2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchBlockingEnabledUri:Landroid/net/Uri;

    const-string p2, "amplify_ambient_sound"

    .line 5117
    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAmplifyAmbientSountEnableUri:Landroid/net/Uri;

    .line 5120
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighContrastTextEnableUri:Landroid/net/Uri;

    const-string p1, "color_lens_switch"

    .line 5122
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensEnableUri:Landroid/net/Uri;

    const-string/jumbo p1, "sticky_keys_enabled"

    .line 5125
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mStickyKeysEnabledUri:Landroid/net/Uri;

    const-string p1, "bounce_keys_enabled"

    .line 5127
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mBounceKeysEnabledUri:Landroid/net/Uri;

    const-string/jumbo p1, "slow_keys_enabled"

    .line 5130
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mSlowKeysEnabledUri:Landroid/net/Uri;

    const-string/jumbo p1, "navigation_mode"

    .line 5133
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mNaviBarModeUri:Landroid/net/Uri;

    const-string p1, "assistant_menu"

    .line 5135
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mA11yAMEnableUri:Landroid/net/Uri;

    const-string p1, "any_screen_running"

    .line 5137
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mOneHandModeActivateUri:Landroid/net/Uri;

    const-string p1, "assistant_menu_option_upperapps"

    .line 5139
    invoke-static {p1}, Landroid/view/accessibility/A11yRune;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mA11yAMMagnificationEnableUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 8

    .line 5249
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 5252
    :try_start_7
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mgetCurrentUserStateLocked(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilityUserState;

    move-result-object v0

    .line 5254
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 5255
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadTouchExplorationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5256
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5258
    :cond_24
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 5259
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadMagnificationEnabledSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5260
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5262
    :cond_3b
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoclickEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 5263
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadAutoclickEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5264
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5266
    :cond_52
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoActionEnabledUri:Landroid/net/Uri;

    .line 5267
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_69

    .line 5268
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadAutoActionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5269
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5271
    :cond_69
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mCornerActionEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_80

    .line 5272
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadCornerActionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5273
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5275
    :cond_80
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c4

    .line 5276
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadEnabledAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    const-string p2, "AccessibilityManagerService"

    const-string/jumbo v1, "onChange():Enabled Accessibility Services uri changed"

    .line 5278
    invoke-static {p2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5279
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmSecurityPolicy(Lcom/android/server/accessibility/AccessibilityManagerService;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy;

    move-result-object p2

    iget v1, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mUserId:I

    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityUserState;->mEnabledServices:Ljava/util/Set;

    invoke-virtual {p2, v1, v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->onEnabledServicesChangedLocked(ILjava/util/Set;)V

    .line 5281
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityUserState;->updateCrashedServicesIfNeededLocked()V

    .line 5282
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    .line 5283
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5284
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->isScreenReaderEnabled()Z

    move-result p2

    if-nez p2, :cond_362

    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmCurtainModeIsRunning(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5285
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semToggleDarkScreenMode()V

    goto/16 :goto_362

    .line 5288
    :cond_c4
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 5289
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadTouchExplorationGrantedAccessibilityServicesLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5290
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5292
    :cond_db
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mScreenCurtainEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_10c

    .line 5293
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "lcd_curtain"

    invoke-static {p2, v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-ne p2, v3, :cond_fa

    goto :goto_fb

    :cond_fa
    move v3, v4

    :goto_fb
    if-nez v3, :cond_362

    .line 5295
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmCurtainModeIsRunning(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5296
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->semToggleDarkScreenMode()V

    goto/16 :goto_362

    .line 5299
    :cond_10c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_123

    .line 5300
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadHighTextContrastEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5301
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5303
    :cond_123
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAudioDescriptionByDefaultUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13a

    .line 5304
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadAudioDescriptionEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5305
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5307
    :cond_13a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilitySoftKeyboardModeUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35f

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mShowImeWithHardKeyboardUri:Landroid/net/Uri;

    .line 5308
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14c

    goto/16 :goto_35f

    .line 5310
    :cond_14c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_163

    .line 5311
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadAccessibilityShortcutKeySettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5312
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5314
    :cond_163
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17a

    .line 5315
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadAccessibilityButtonTargetComponentLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5316
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5318
    :cond_17a
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonTargetsUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_191

    .line 5319
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadAccessibilityButtonTargetsLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5320
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5322
    :cond_191
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserNonInteractiveUiTimeoutUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_359

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserInteractiveUiTimeoutUri:Landroid/net/Uri;

    .line 5323
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a3

    goto/16 :goto_359

    .line 5325
    :cond_1a3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationModeUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1ba

    .line 5326
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadMagnificationModeForDefaultDisplayLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5327
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mupdateMagnificationModeChangeSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;I)V

    goto/16 :goto_362

    .line 5330
    :cond_1ba
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationCapabilityUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d1

    .line 5331
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadMagnificationCapabilitiesLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5332
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mupdateMagnificationCapabilitiesSettingsChangeLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5334
    :cond_1d1
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationFollowTypingUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e0

    .line 5335
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->readMagnificationFollowTypingLocked(Lcom/android/server/accessibility/AccessibilityUserState;)Z

    goto/16 :goto_362

    .line 5336
    :cond_1e0
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mFlashNotificationUrl:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_243

    .line 5337
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "flash_notification"

    invoke-static {p2, v0, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eqz p2, :cond_1fb

    goto :goto_1fc

    :cond_1fb
    move v3, v4

    :goto_1fc
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfputisLightFlashNotiEnabled(Z)V

    const-string p2, "AccessibilityManagerService"

    .line 5339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onChange():Enabled Light Notification Flash uri changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetisLightFlashNotiEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5340
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetisLightFlashNotiEnabled()Z

    move-result p2

    if-eqz p2, :cond_227

    .line 5341
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mcheckTorchLight(Lcom/android/server/accessibility/AccessibilityManagerService;)V

    goto/16 :goto_362

    .line 5346
    :cond_227
    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfputbIsTorchOn(Z)V

    .line 5347
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmCameraManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/hardware/camera2/CameraManager;

    move-result-object p2

    if-eqz p2, :cond_362

    .line 5348
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmCameraManager(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/hardware/camera2/CameraManager;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmTorchCallback(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/hardware/camera2/CameraManager$TorchCallback;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/hardware/camera2/CameraManager;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    goto/16 :goto_362

    .line 5351
    :cond_243
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mScreenFlashNotiUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_280

    .line 5352
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fgetmContext(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "screen_notification"

    invoke-static {p0, p2, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_25f

    goto :goto_260

    :cond_25f
    move v3, v4

    :goto_260
    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfputisScreenFlashNotiEnabled(Z)V

    const-string p0, "AccessibilityManagerService"

    .line 5354
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onChange():Enabled Screen flash noti uri changed: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$sfgetisScreenFlashNotiEnabled()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_362

    .line 5355
    :cond_280
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTapDurationEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_297

    .line 5356
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadTapDurationEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5357
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5359
    :cond_297
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchBlockingEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ae

    .line 5360
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadTouchBlockingEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5361
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5363
    :cond_2ae
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mStickyKeysEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c5

    .line 5364
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadStickyKeysEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5365
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5367
    :cond_2c5
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mBounceKeysEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2dc

    .line 5368
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadBounceKeysEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5369
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5371
    :cond_2dc
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mSlowKeysEnabledUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f3

    .line 5372
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadSlowKeysEnabledSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5373
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto/16 :goto_362

    .line 5375
    :cond_2f3
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mNaviBarModeUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_309

    .line 5376
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadGestureNaviBarModeSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5377
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto :goto_362

    .line 5379
    :cond_309
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityDirectAccessServiceIdUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31f

    .line 5380
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadAccessibilityDirectAccessSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5381
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto :goto_362

    .line 5383
    :cond_31f
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mA11yAMEnableUri:Landroid/net/Uri;

    .line 5384
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34b

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mA11yAMMagnificationEnableUri:Landroid/net/Uri;

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_330

    goto :goto_34b

    .line 5387
    :cond_330
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mOneHandModeActivateUri:Landroid/net/Uri;

    .line 5388
    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5389
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadOneHandModeActivateSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-nez p2, :cond_362

    .line 5390
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$fputmHasInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    .line 5391
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mscheduleUpdateInputFilter(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto :goto_362

    .line 5385
    :cond_34b
    :goto_34b
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p2, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadAMActiveListSettingLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    move-result p2

    if-eqz p2, :cond_362

    .line 5386
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$monUserStateChangedLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)V

    goto :goto_362

    .line 5324
    :cond_359
    :goto_359
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-static {p0, v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->-$$Nest$mreadUserRecommendedUiTimeoutSettingsLocked(Lcom/android/server/accessibility/AccessibilityManagerService;Lcom/android/server/accessibility/AccessibilityUserState;)Z

    goto :goto_362

    .line 5309
    :cond_35f
    :goto_35f
    invoke-virtual {v0}, Lcom/android/server/accessibility/AccessibilityUserState;->reconcileSoftKeyboardModeWithSettingsLocked()V

    .line 5394
    :cond_362
    :goto_362
    monitor-exit p1

    return-void

    :catchall_364
    move-exception p0

    monitor-exit p1
    :try_end_366
    .catchall {:try_start_7 .. :try_end_366} :catchall_364

    throw p0
.end method

.method public register(Landroid/content/ContentResolver;)V
    .registers 5

    .line 5146
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationEnabledUri:Landroid/net/Uri;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5148
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mDisplayMagnificationEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5150
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoclickEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5152
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mEnabledAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5154
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchExplorationGrantedAccessibilityServicesUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5157
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighTextContrastUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5159
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAudioDescriptionByDefaultUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5161
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilitySoftKeyboardModeUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5163
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mShowImeWithHardKeyboardUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5165
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityShortcutServiceIdUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5167
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonComponentIdUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5169
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityButtonTargetsUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5171
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserNonInteractiveUiTimeoutUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5173
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mUserInteractiveUiTimeoutUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5175
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationModeUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5177
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationCapabilityUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5179
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mMagnificationFollowTypingUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5183
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAutoActionEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5185
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mCornerActionEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5189
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mFlashNotificationUrl:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5191
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mScreenFlashNotiUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5195
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mScreenCurtainEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5199
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTapDurationEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5203
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mTouchBlockingEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5207
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mStickyKeysEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5209
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mBounceKeysEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5211
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mSlowKeysEnabledUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5215
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mNaviBarModeUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5219
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAmplifyAmbientSountEnableUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5223
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mHighContrastTextEnableUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5227
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mColorLensEnableUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5231
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mAccessibilityDirectAccessServiceIdUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5236
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mA11yAMEnableUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5238
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mA11yAMMagnificationEnableUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 5242
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$AccessibilityContentObserver;->mOneHandModeActivateUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method
