.class public Lcom/samsung/android/multiwindow/MultiWindowCoreState;
.super Ljava/lang/Object;
.source "MultiWindowCoreState.java"

# interfaces
.implements Lcom/samsung/android/app/CoreState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowCoreState$MultiWindowCoreStateListener;,
        Lcom/samsung/android/multiwindow/MultiWindowCoreState$Key;,
        Lcom/samsung/android/multiwindow/MultiWindowCoreState$Diff;
    }
.end annotation


# static fields
.field public static blacklist FREEFORM_HANDLER_HELP_POPUP_COUNT:I = 0x0

.field public static blacklist FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z = false

.field public static blacklist FREEFORM_HEADER_TYPE:I = 0x0

.field public static blacklist MD_DEXSTAR_SHOWING_DELAY_TIME:I = 0x0

.field public static blacklist MD_DEX_NON_RESIZEABLE_APP_RESTART_DIALOG_DISABLED:Z = false

.field public static blacklist MW_DIVIDER_PANEL_FIRST_AUTO_OPEN_DISABLED:Z = false

.field public static blacklist MW_ENABLED:Z = false

.field public static blacklist MW_FREEFORM_CORNER_GESTURE_CUSTOM_VALUE:I = 0x0

.field public static blacklist MW_FREEFORM_CORNER_GESTURE_ENABLED:Z = false

.field public static blacklist MW_MULTISTAR_BLOCKED_MINIMIZED_FREEFORM_ENABLED:Z = false

.field public static blacklist MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I = 0x0

.field public static blacklist MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z = false

.field public static blacklist MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z = false

.field public static final blacklist MW_SHARED_PREF_NAME:Ljava/lang/String; = "multiwindow.property"

.field public static blacklist MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

.field public static blacklist SPLIT_HANDLER_HELP_POPUP_COUNT:I

.field public static blacklist SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist mLock:Ljava/lang/Object;

.field private static blacklist sInstance:Lcom/samsung/android/multiwindow/MultiWindowCoreState;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 31
    const-class v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->TAG:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    .line 43
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

    .line 44
    sput-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

    .line 45
    sput v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HANDLER_HELP_POPUP_COUNT:I

    .line 46
    sput v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->SPLIT_HANDLER_HELP_POPUP_COUNT:I

    .line 50
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    .line 51
    sput v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_CUSTOM_VALUE:I

    .line 55
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MD_DEX_NON_RESIZEABLE_APP_RESTART_DIALOG_DISABLED:Z

    .line 59
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_BLOCKED_MINIMIZED_FREEFORM_ENABLED:Z

    .line 63
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_DIVIDER_PANEL_FIRST_AUTO_OPEN_DISABLED:Z

    .line 67
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 71
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 75
    sput-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    .line 79
    sput v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    .line 83
    sput v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HEADER_TYPE:I

    .line 87
    const/4 v0, -0x1

    sput v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MD_DEXSTAR_SHOWING_DELAY_TIME:I

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getInstance()Lcom/samsung/android/multiwindow/MultiWindowCoreState;
    .registers 1

    .line 95
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    if-nez v0, :cond_b

    .line 96
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    .line 98
    :cond_b
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    return-object v0
.end method

.method private blacklist updateCornerGestureCustomValue(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "state"    # Landroid/os/Bundle;

    .line 364
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_CUSTOM_VALUE:I

    .line 365
    .local v0, "lastCustomValue":I
    const-string v1, "corner_gesture_custom_value"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 366
    .local v1, "customValue":I
    sget v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_CUSTOM_VALUE:I

    if-eq v3, v1, :cond_f

    .line 367
    sput v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_CUSTOM_VALUE:I

    .line 369
    :cond_f
    sget v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_CUSTOM_VALUE:I

    if-eq v3, v0, :cond_16

    .line 370
    const/16 v2, 0x2000

    goto :goto_17

    :cond_16
    nop

    .line 369
    :goto_17
    return v2
.end method

.method private blacklist updateDexNonResizeableAppRestartDialogState(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "state"    # Landroid/os/Bundle;

    .line 354
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MD_DEX_NON_RESIZEABLE_APP_RESTART_DIALOG_DISABLED:Z

    .line 355
    .local v0, "wasDisabled":Z
    nop

    .line 356
    const-string v1, "dex_non_resizeable_app_restart_dialog_disabled"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    goto :goto_f

    :cond_e
    move v3, v2

    :goto_f
    sput-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MD_DEX_NON_RESIZEABLE_APP_RESTART_DIALOG_DISABLED:Z

    .line 357
    if-eq v3, v0, :cond_16

    .line 358
    const/16 v2, 0x80

    goto :goto_17

    :cond_16
    nop

    .line 357
    :goto_17
    return v2
.end method

.method private blacklist updateDexStarShowingDelayTime(Landroid/os/Bundle;)I
    .registers 5
    .param p1, "state"    # Landroid/os/Bundle;

    .line 306
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MD_DEXSTAR_SHOWING_DELAY_TIME:I

    .line 307
    .local v0, "lastDelayMills":I
    const-string v1, "mouse_immersive_time_control"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MD_DEXSTAR_SHOWING_DELAY_TIME:I

    .line 308
    if-eq v1, v0, :cond_10

    const/16 v1, 0x4000

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private blacklist updateFreeformHeaderTypeState(Landroid/os/Bundle;)I
    .registers 5
    .param p1, "state"    # Landroid/os/Bundle;

    .line 267
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HEADER_TYPE:I

    .line 268
    .local v0, "lastHeaderType":I
    const-string v1, "freeform_header_type"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HEADER_TYPE:I

    .line 270
    if-eq v1, v0, :cond_f

    const/16 v2, 0x1000

    :cond_f
    return v2
.end method

.method private blacklist updateHandlerFreeformHelpState(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "state"    # Landroid/os/Bundle;

    .line 254
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

    .line 255
    .local v0, "wasEnabled":Z
    const-string v1, "freeform_handler_help_popup_count"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 256
    .local v1, "helpCount":I
    sget v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HANDLER_HELP_POPUP_COUNT:I

    if-eq v3, v1, :cond_16

    .line 257
    sput v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HANDLER_HELP_POPUP_COUNT:I

    .line 258
    const/4 v3, 0x1

    if-ge v1, v3, :cond_13

    goto :goto_14

    :cond_13
    move v3, v2

    :goto_14
    sput-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

    .line 260
    :cond_16
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

    if-eq v3, v0, :cond_1c

    .line 261
    const/4 v2, 0x4

    goto :goto_1d

    :cond_1c
    nop

    .line 260
    :goto_1d
    return v2
.end method

.method private blacklist updateHandlerSplitHelpState(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "state"    # Landroid/os/Bundle;

    .line 244
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

    .line 245
    .local v0, "wasEnabled":Z
    const-string v1, "multi_split_quick_options_help_count"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 246
    .local v1, "helpCount":I
    sget v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->SPLIT_HANDLER_HELP_POPUP_COUNT:I

    if-eq v3, v1, :cond_16

    .line 247
    sput v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->SPLIT_HANDLER_HELP_POPUP_COUNT:I

    .line 248
    const/4 v3, 0x1

    if-ge v1, v3, :cond_13

    goto :goto_14

    :cond_13
    move v3, v2

    :goto_14
    sput-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

    .line 250
    :cond_16
    sget-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

    if-eq v3, v0, :cond_1c

    const/16 v2, 0x8

    :cond_1c
    return v2
.end method

.method private blacklist updateMultiStarBlockedMinimizeFreeformState(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "state"    # Landroid/os/Bundle;

    .line 286
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_BLOCKED_MINIMIZED_FREEFORM_ENABLED:Z

    .line 287
    .local v0, "wasEnabled":Z
    const-string v1, "mw_blocked_minimized_freeform"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d

    goto :goto_e

    :cond_d
    move v3, v2

    :goto_e
    sput-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_BLOCKED_MINIMIZED_FREEFORM_ENABLED:Z

    .line 289
    if-eq v3, v0, :cond_15

    .line 290
    const/16 v2, 0x800

    goto :goto_16

    :cond_15
    nop

    .line 289
    :goto_16
    return v2
.end method

.method private blacklist updateMultiStarCornerGestureState(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "state"    # Landroid/os/Bundle;

    .line 334
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    .line 335
    .local v0, "wasEnabled":Z
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_11

    .line 336
    const-string v1, "open_in_pop_up_view"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_11

    goto :goto_12

    :cond_11
    move v2, v3

    :goto_12
    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_FREEFORM_CORNER_GESTURE_ENABLED:Z

    .line 337
    if-eq v2, v0, :cond_19

    .line 338
    const/16 v3, 0x10

    goto :goto_1a

    :cond_19
    nop

    .line 337
    :goto_1a
    return v3
.end method

.method private blacklist updateMultiStarSupportCustomDensityState(Landroid/os/Bundle;)I
    .registers 5
    .param p1, "state"    # Landroid/os/Bundle;

    .line 296
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    .line 297
    .local v0, "lastCustomDensityEnabledFlags":I
    const-string v1, "custom_density"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED:I

    .line 299
    if-eq v1, v0, :cond_10

    .line 300
    const/16 v2, 0x20

    goto :goto_11

    :cond_10
    nop

    .line 299
    :goto_11
    return v2
.end method

.method private blacklist updateMultiStarSupportStayFocusActivity(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "state"    # Landroid/os/Bundle;

    .line 344
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    .line 345
    .local v0, "wasEnabled":Z
    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_12

    const-string/jumbo v1, "stay_focus_activity"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_12

    goto :goto_13

    :cond_12
    move v2, v3

    :goto_13
    sput-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    .line 347
    if-eq v2, v0, :cond_1a

    .line 348
    const/16 v3, 0x40

    goto :goto_1b

    :cond_1a
    nop

    .line 347
    :goto_1b
    return v3
.end method

.method private blacklist updateMultiWindowEnabledState(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "state"    # Landroid/os/Bundle;

    .line 207
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    .line 208
    .local v0, "wasEnabled":Z
    const-string v1, "mw_enabled"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_e

    move v1, v2

    goto :goto_f

    :cond_e
    move v1, v3

    :goto_f
    sput-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    .line 209
    if-eq v1, v0, :cond_14

    goto :goto_15

    :cond_14
    move v2, v3

    :goto_15
    return v2
.end method

.method private blacklist updateNaviStarSplitImmersiveModeState(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "state"    # Landroid/os/Bundle;

    .line 324
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 325
    .local v0, "lastNaviOnlyImmersiveModeEnabled":Z
    const-string v1, "mw_navibar_immersive_mode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d

    goto :goto_e

    :cond_d
    move v3, v2

    :goto_e
    sput-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 327
    if-eq v3, v0, :cond_15

    .line 328
    const/16 v2, 0x400

    goto :goto_16

    :cond_15
    nop

    .line 327
    :goto_16
    return v2
.end method

.method private blacklist updateSplitDividerPanelFirstAutoOpenState(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "state"    # Landroid/os/Bundle;

    .line 276
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_DIVIDER_PANEL_FIRST_AUTO_OPEN_DISABLED:Z

    .line 277
    .local v0, "wasDisabled":Z
    nop

    .line 278
    const-string v1, "divider_panel_first_auto_open_disabled"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_e

    goto :goto_f

    :cond_e
    move v3, v2

    :goto_f
    sput-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_DIVIDER_PANEL_FIRST_AUTO_OPEN_DISABLED:Z

    .line 279
    if-eq v3, v0, :cond_16

    .line 280
    const/16 v2, 0x100

    goto :goto_17

    :cond_16
    nop

    .line 279
    :goto_17
    return v2
.end method

.method private blacklist updateSplitImmersiveModeState(Landroid/os/Bundle;)I
    .registers 6
    .param p1, "state"    # Landroid/os/Bundle;

    .line 314
    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 315
    .local v0, "lastImmersiveModeEnabled":Z
    const-string v1, "mw_immersive_mode"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_d

    goto :goto_e

    :cond_d
    move v3, v2

    :goto_e
    sput-boolean v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    .line 317
    if-eq v3, v0, :cond_15

    .line 318
    const/16 v2, 0x200

    goto :goto_16

    :cond_15
    nop

    .line 317
    :goto_16
    return v2
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "MultiWindowCoreState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v1, "MW_ENABLED="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 221
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", FREEFORM_HANDLER_HELP_POPUP_ENABLED="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", SPLIT_HANDLER_HELP_POPUP_ENABLED="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", FREEFORM_HEADER_TYPE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HEADER_TYPE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", MW_MULTISTAR_BLOCKED_MINIMIZED_FREEFORM_ENABLED="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_BLOCKED_MINIMIZED_FREEFORM_ENABLED:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist updateFrom(Landroid/os/Bundle;)I
    .registers 5
    .param p1, "state"    # Landroid/os/Bundle;

    .line 155
    if-nez p1, :cond_4

    .line 156
    const/4 v0, 0x0

    return v0

    .line 159
    :cond_4
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 160
    const/4 v1, 0x0

    .line 162
    .local v1, "changes":I
    :try_start_8
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateMultiWindowEnabledState(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    .line 165
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateHandlerSplitHelpState(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    .line 166
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateHandlerFreeformHelpState(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    .line 169
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateMultiStarCornerGestureState(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    .line 172
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateFreeformHeaderTypeState(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    .line 175
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateSplitDividerPanelFirstAutoOpenState(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    .line 178
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateMultiStarBlockedMinimizeFreeformState(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    .line 181
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateMultiStarSupportCustomDensityState(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    .line 184
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateSplitImmersiveModeState(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    .line 187
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateNaviStarSplitImmersiveModeState(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    .line 190
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateMultiStarSupportStayFocusActivity(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    .line 196
    invoke-direct {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->updateCornerGestureCustomValue(Landroid/os/Bundle;)I

    move-result v2

    or-int/2addr v1, v2

    .line 201
    monitor-exit v0

    return v1

    .line 202
    .end local v1    # "changes":I
    :catchall_46
    move-exception v1

    monitor-exit v0
    :try_end_48
    .catchall {:try_start_8 .. :try_end_48} :catchall_46

    throw v1
.end method
