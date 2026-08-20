.class public Lcom/samsung/android/multiwindow/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/multiwindow/MultiWindowManager$MultiSplitFlags;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$DexHelp;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$embedActivityPackageEnabledState;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$SplitActivityPackageEnabledState;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$FreeformHeaderType;,
        Lcom/samsung/android/multiwindow/MultiWindowManager$ChangeTransitionMode;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_ENTER_CONTENTS_TO_WINDOW:Ljava/lang/String; = "com.samsung.android.action.ENTER_CONTENTS_TO_WINDOW"

.field public static final blacklist ACTION_MINIMIZE_ALL:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL"

.field public static final blacklist ACTION_MINIMIZE_ALL_BY_SYSTEM:Ljava/lang/String; = "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

.field public static final blacklist ACTION_MULTI_WINDOW_ENABLE_CHANGED:Ljava/lang/String; = "com.samsung.android.action.MULTI_WINDOW_ENABLE_CHANGED"

.field public static final blacklist BUNDLE_TASK_REMOVED:Ljava/lang/String; = "bundle_task_removed"

.field public static final blacklist CHANGE_TRANSIT_MODE_BY_FREEFORM_HEADER_TYPE_CHANGE:I = 0x5

.field public static final blacklist CHANGE_TRANSIT_MODE_BY_NATURAL_SWITCHING:I = 0x4

.field public static final blacklist CHANGE_TRANSIT_MODE_DISMISS:I = 0x2

.field public static final blacklist CHANGE_TRANSIT_MODE_FREEFORM_WINDOWING_MODE_CHANGE:I = 0x3

.field public static final blacklist CHANGE_TRANSIT_MODE_STANDARD:I = 0x1

.field public static final blacklist CHANGE_TRANSIT_MODE_THUMBNAIL_ONLY:I = 0x6

.field public static final blacklist CHANGE_TRANSIT_MODE_UNDEFINED:I = 0x0

.field public static final blacklist CORNER_GESTURE_CUSTOM_DEFAULT_VALUE:I = 0x10

.field public static final blacklist CORNER_GESTURE_CUSTOM_MAX_VALUE:I = 0xff

.field public static final blacklist CORNER_GESTURE_CUSTOM_MIN_VALUE:I = 0x0

.field public static final blacklist DEX_COMPAT_LOG_PREFIX:Ljava/lang/String; = "[DexCompat] "

.field public static final blacklist DEX_HELP_NONE:I = 0x0

.field public static final blacklist DEX_HELP_NON_RESIZEABLE_RESTART:I = 0x1

.field public static final blacklist EMBED_ACTIVITY_PACKAGE_DISABLED:I = 0x2

.field public static final blacklist EMBED_ACTIVITY_PACKAGE_ENABLED:I = 0x1

.field public static final blacklist EMBED_ACTIVITY_PACKAGE_UNDEFINED:I = 0x0

.field public static final blacklist EXCLUSION_AREA_FROM_DIM_BOUNDS_DP:I = 0x7

.field public static final blacklist EXTRA_IN_MULTI_WINDOW_MODE:Ljava/lang/String; = "com.samsung.android.extra.IN_MULTI_WINDOW_MODE"

.field public static final blacklist EXTRA_MULTI_WINDOW_ENABLED:Ljava/lang/String; = "com.samsung.android.extra.MULTI_WINDOW_ENABLED"

.field public static final blacklist EXTRA_MULTI_WINDOW_ENABLED_USER_ID:Ljava/lang/String; = "com.samsung.android.extra.MULTI_WINDOW_ENABLED_USER_ID"

.field public static final blacklist EXTRA_MULTI_WINDOW_ENABLE_REQUESTER:Ljava/lang/String; = "com.samsung.android.extra.MULTI_WINDOW_ENABLE_REQUESTER"

.field public static final blacklist FREEFORM_HEADER_TYPE_BAR:I = 0x1

.field public static final blacklist FREEFORM_HEADER_TYPE_HANDLER:I = 0x0

.field public static final blacklist FREEFORM_TRANSIT_MINIMIZE:I = 0x1

.field public static final blacklist FREEFORM_TRANSIT_NONE:I = 0x0

.field public static final blacklist FREEFORM_TRANSIT_RESTORE:I = 0x2

.field private static final blacklist IMultiTaskingBinderSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/samsung/android/multiwindow/IMultiTaskingBinder;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist INVALID_POSITION:I = -0x1

.field public static final blacklist LAUNCH_OVER_FOCUSED_TASK_ID:I = -0x2710

.field private static final blacklist META_MASK:J = 0x1000000000000L

.field public static final blacklist MULTIWINDOW_MODE_FREEFORM:I = 0x1

.field public static final blacklist MULTIWINDOW_MODE_NONE:I = 0x0

.field public static final blacklist MULTIWINDOW_MODE_PINNED:I = 0x4

.field public static final blacklist MULTIWINDOW_MODE_SPLIT_SCREEN:I = 0x2

.field public static final blacklist MULTI_SPLIT_BOTTOM_SIDE:I = 0x400

.field public static final blacklist MULTI_SPLIT_DOCK_SIDE_MASK:I = 0x7c0

.field public static final blacklist MULTI_SPLIT_INVALID_SIDE:I = 0x40

.field public static final blacklist MULTI_SPLIT_LEFT_SIDE:I = 0x80

.field public static final blacklist MULTI_SPLIT_MODE_MASK:I = 0x38

.field public static final blacklist MULTI_SPLIT_NONE_SPLIT:I = 0x8

.field public static final blacklist MULTI_SPLIT_NOT_SUPPORT:I = 0x2

.field public static final blacklist MULTI_SPLIT_NOT_SUPPORT_BY_HOME:I = 0x4

.field public static final blacklist MULTI_SPLIT_RIGHT_SIDE:I = 0x200

.field public static final blacklist MULTI_SPLIT_SUPPORT:I = 0x1

.field public static final blacklist MULTI_SPLIT_THREE_SPLIT:I = 0x20

.field public static final blacklist MULTI_SPLIT_TOP_SIDE:I = 0x100

.field public static final blacklist MULTI_SPLIT_TWO_SPLIT:I = 0x10

.field public static final blacklist NATURAL_SWITCHING_SUPPORT:I = 0x800

.field public static final blacklist PERMISSION_MULTI_WINDOW_MONITOR:Ljava/lang/String; = "com.samsung.android.permission.MULTI_WINDOW_MONITOR"

.field public static final blacklist POPUP_VIEW_HANDLE_TOUCH_AREA_DP:I = 0x19

.field public static final blacklist POPUP_VIEW_WINDOW_SIZE_TOUCH_AREA_DP:I = 0xc

.field public static final blacklist RESIZE_HANDLE_FOR_POINTER_WIDTH_IN_DP:I = 0xa

.field public static final blacklist RESIZE_HANDLE_WIDTH_IN_PX:I = 0x30

.field public static final blacklist RESIZE_INSIDE_OVERLAP_AREA_IN_DP:I = 0x4

.field public static final blacklist RESIZE_OVERLAP_AREA_IN_DP:I = 0x8

.field public static final blacklist SC_DOCK_LEFT:J = 0x1000000000047L

.field public static final blacklist SPLIT_ACTIVITY_PACKAGE_BLOCKED:I = 0x2

.field public static final blacklist SPLIT_ACTIVITY_PACKAGE_DISABLED:I = 0x0

.field public static final blacklist SPLIT_ACTIVITY_PACKAGE_ENABLED:I = 0x1

.field public static final blacklist TAG:Ljava/lang/String; = "MultiWindowManager"

.field public static final blacklist TYPE_LONG_PRESS:I = 0x1

.field private static blacklist sInstance:Lcom/samsung/android/multiwindow/MultiWindowManager;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 327
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager$1;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager$1;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->IMultiTaskingBinderSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 315
    return-void
.end method

.method public static blacklist changeTransitModeToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "changeTransitMode"    # I

    .line 119
    packed-switch p0, :pswitch_data_1e

    .line 135
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 133
    :pswitch_8
    const-string v0, "CHANGE_TRANSIT_MODE_THUMBNAIL_ONLY"

    return-object v0

    .line 131
    :pswitch_b
    const-string v0, "CHANGE_TRANSIT_MODE_BY_FREEFORM_HEADER_TYPE_CHANGE"

    return-object v0

    .line 129
    :pswitch_e
    const-string v0, "CHANGE_TRANSIT_MODE_BY_NATURAL_SWITCHING"

    return-object v0

    .line 127
    :pswitch_11
    const-string v0, "CHANGE_TRANSIT_MODE_FREEFORM_WINDOWING_MODE_CHANGE"

    return-object v0

    .line 125
    :pswitch_14
    const-string v0, "CHANGE_TRANSIT_MODE_DISMISS"

    return-object v0

    .line 123
    :pswitch_17
    const-string v0, "CHANGE_TRANSIT_MODE_STANDARD"

    return-object v0

    .line 121
    :pswitch_1a
    const-string v0, "CHANGE_TRANSIT_MODE_UNDEFINED"

    return-object v0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method public static blacklist convertToMultiSplitMode(I)I
    .registers 2
    .param p0, "number"    # I

    .line 865
    const/4 v0, 0x2

    if-ne p0, v0, :cond_6

    .line 866
    const/16 v0, 0x10

    return v0

    .line 868
    :cond_6
    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    .line 869
    const/16 v0, 0x20

    return v0

    .line 871
    :cond_c
    const/16 v0, 0x8

    return v0
.end method

.method public static blacklist createModeToDockSide(I)I
    .registers 2
    .param p0, "createMode"    # I

    .line 875
    packed-switch p0, :pswitch_data_e

    .line 885
    const/4 v0, -0x1

    return v0

    .line 879
    :pswitch_5
    const/4 v0, 0x4

    return v0

    .line 883
    :pswitch_7
    const/4 v0, 0x3

    return v0

    .line 877
    :pswitch_9
    const/4 v0, 0x2

    return v0

    .line 881
    :pswitch_b
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_e
    .packed-switch 0x2
        :pswitch_b
        :pswitch_9
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public static blacklist dockSideToMultiSplitFlag(I)I
    .registers 2
    .param p0, "dockSide"    # I

    .line 897
    packed-switch p0, :pswitch_data_12

    .line 907
    const/16 v0, 0x40

    return v0

    .line 905
    :pswitch_6
    const/16 v0, 0x400

    return v0

    .line 903
    :pswitch_9
    const/16 v0, 0x200

    return v0

    .line 901
    :pswitch_c
    const/16 v0, 0x100

    return v0

    .line 899
    :pswitch_f
    const/16 v0, 0x80

    return v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method public static blacklist embedActivityPackageEnabledStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 276
    packed-switch p0, :pswitch_data_12

    .line 284
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 282
    :pswitch_8
    const-string v0, "EMBED_ACTIVITY_PACKAGE_DISABLED"

    return-object v0

    .line 280
    :pswitch_b
    const-string v0, "EMBED_ACTIVITY_PACKAGE_ENABLED"

    return-object v0

    .line 278
    :pswitch_e
    const-string v0, "EMBED_ACTIVITY_PACKAGE_UNDEFINED"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static blacklist getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;
    .registers 1

    .line 340
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->IMultiTaskingBinderSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    return-object v0
.end method

.method public static blacklist getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;
    .registers 1

    .line 320
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowManager;

    if-nez v0, :cond_b

    .line 321
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowManager;

    invoke-direct {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;-><init>()V

    sput-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowManager;

    .line 323
    :cond_b
    sget-object v0, Lcom/samsung/android/multiwindow/MultiWindowManager;->sInstance:Lcom/samsung/android/multiwindow/MultiWindowManager;

    return-object v0
.end method

.method public static blacklist multiSplitFlagsToDockSide(I)I
    .registers 2
    .param p0, "flags"    # I

    .line 912
    and-int/lit16 v0, p0, 0x7c0

    sparse-switch v0, :sswitch_data_10

    .line 922
    const/4 v0, -0x1

    return v0

    .line 920
    :sswitch_7
    const/4 v0, 0x4

    return v0

    .line 918
    :sswitch_9
    const/4 v0, 0x3

    return v0

    .line 916
    :sswitch_b
    const/4 v0, 0x2

    return v0

    .line 914
    :sswitch_d
    const/4 v0, 0x1

    return v0

    nop

    :sswitch_data_10
    .sparse-switch
        0x80 -> :sswitch_d
        0x100 -> :sswitch_b
        0x200 -> :sswitch_9
        0x400 -> :sswitch_7
    .end sparse-switch
.end method

.method public static blacklist multiSplitFlagsToString(I)Ljava/lang/StringBuilder;
    .registers 3
    .param p0, "flags"    # I

    .line 927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 928
    .local v0, "sb":Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_f

    const-string v1, " MULTI_SPLIT_SUPPORT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 929
    :cond_f
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_19

    const-string v1, " MULTI_SPLIT_NOT_SUPPORT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    .line 930
    :cond_19
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_22

    const-string v1, " MULTI_SPLIT_NOT_SUPPORT_BY_HOME"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 931
    :cond_22
    :goto_22
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_2c

    const-string v1, " MULTI_SPLIT_NONE_SPLIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 932
    :cond_2c
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_36

    const-string v1, " MULTI_SPLIT_TWO_SPLIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3f

    .line 933
    :cond_36
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_3f

    const-string v1, " MULTI_SPLIT_THREE_SPLIT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 934
    :cond_3f
    :goto_3f
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_49

    const-string v1, " MULTI_SPLIT_INVALID_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 935
    :cond_49
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_53

    const-string v1, " MULTI_SPLIT_LEFT_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 936
    :cond_53
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_5d

    const-string v1, " MULTI_SPLIT_TOP_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 937
    :cond_5d
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_67

    const-string v1, " MULTI_SPLIT_RIGHT_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    .line 938
    :cond_67
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_70

    const-string v1, " MULTI_SPLIT_BOTTOM_SIDE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 939
    :cond_70
    :goto_70
    return-object v0
.end method

.method public static blacklist splitActivityPackageEnabledStateToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "state"    # I

    .line 239
    packed-switch p0, :pswitch_data_12

    .line 247
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 245
    :pswitch_8
    const-string v0, "SPLIT_ACTIVITY_PACKAGE_BLOCKED"

    return-object v0

    .line 243
    :pswitch_b
    const-string v0, "SPLIT_ACTIVITY_PACKAGE_ENABLED"

    return-object v0

    .line 241
    :pswitch_e
    const-string v0, "SPLIT_ACTIVITY_PACKAGE_DISABLED"

    return-object v0

    nop

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method

.method private static blacklist warningException(Ljava/lang/Exception;)V
    .registers 3
    .param p0, "e"    # Ljava/lang/Exception;

    .line 344
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_8

    .line 345
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    .line 347
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "warningException() : caller="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Debug;->getCaller()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiWindowManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :goto_2d
    return-void
.end method


# virtual methods
.method public blacklist changeSplitLayoutByNaturalSwitching(IIIILandroid/graphics/Rect;FFZ)V
    .registers 12
    .param p1, "taskId"    # I
    .param p2, "toWindowingMode"    # I
    .param p3, "toPosition"    # I
    .param p4, "splitCreateMode"    # I
    .param p5, "dropBounds"    # Landroid/graphics/Rect;
    .param p6, "dividerRatio"    # F
    .param p7, "cellDividerRatio"    # F
    .param p8, "reparentCell"    # Z

    .line 569
    :try_start_0
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 570
    .local v0, "options":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 571
    invoke-virtual {v0, p4}, Landroid/app/ActivityOptions;->setSplitScreenCreateMode(I)V

    .line 572
    invoke-virtual {v0, p3}, Landroid/app/ActivityOptions;->setSplitPosition(I)V

    .line 573
    invoke-virtual {v0, p8}, Landroid/app/ActivityOptions;->setReparentCell(Z)V

    .line 580
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, p1, v2, p5}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->changeSplitLayoutByNaturalSwitching(ILandroid/os/Bundle;Landroid/graphics/Rect;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1b} :catch_1c

    .line 583
    .end local v0    # "options":Landroid/app/ActivityOptions;
    goto :goto_20

    .line 581
    :catch_1c
    move-exception v0

    .line 582
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 584
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_20
    return-void
.end method

.method public blacklist changeToHorizontalSplitLayout(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1425
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->changeToHorizontalSplitLayout(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1428
    goto :goto_c

    .line 1426
    :catch_8
    move-exception v0

    .line 1427
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1429
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist disableDividerPanelFirstAutoOpen()V
    .registers 2

    .line 1127
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->disableDividerPanelFirstAutoOpen()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1130
    goto :goto_c

    .line 1128
    :catch_8
    move-exception v0

    .line 1129
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1131
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist disableNonResizeableAppRestartDialog()V
    .registers 2

    .line 1395
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->disableNonResizeableAppRestartDialog()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1398
    goto :goto_c

    .line 1396
    :catch_8
    move-exception v0

    .line 1397
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1399
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist dismissSplitTask(Landroid/os/IBinder;Z)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "homeBehindTopTask"    # Z

    .line 1066
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->dismissSplitTask(Landroid/os/IBinder;Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1069
    goto :goto_c

    .line 1067
    :catch_8
    move-exception v0

    .line 1068
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1070
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist dismissTaskInSplitScreen(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 953
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->dismissTaskInSplitScreen(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 956
    goto :goto_c

    .line 954
    :catch_8
    move-exception v0

    .line 955
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 957
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist enterSplitScreenTopActivity()V
    .registers 2

    .line 985
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->enterSplitScreenTopActivity()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 988
    goto :goto_c

    .line 986
    :catch_8
    move-exception v0

    .line 987
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 989
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist exitMultiWindow(Landroid/os/IBinder;Z)Z
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "checkPermission"    # Z

    .line 650
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->exitMultiWindow(Landroid/os/IBinder;Z)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 651
    :catch_9
    move-exception v0

    .line 652
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 655
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist finishNaturalSwitching()V
    .registers 2

    .line 551
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->finishNaturalSwitching()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 554
    goto :goto_c

    .line 552
    :catch_8
    move-exception v0

    .line 553
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 555
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist getAllowedMultiWindowPackageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 609
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getAllowedMultiWindowPackageList()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 610
    :catch_9
    move-exception v0

    .line 611
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 613
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getCornerGestureCustomValue()I
    .registers 2

    .line 1248
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getCornerGestureCustomValue()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1249
    :catch_9
    move-exception v0

    .line 1250
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1252
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getDexTaskInfoFlags(Landroid/os/IBinder;)I
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 812
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getDexTaskInfoFlags(Landroid/os/IBinder;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 813
    :catch_9
    move-exception v0

    .line 814
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 816
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1357
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getEmbedActivityPackageEnabled(Ljava/lang/String;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1358
    :catch_9
    move-exception v0

    .line 1359
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiWindowManager"

    const-string v2, "Failed to getEmbedActivityPackageEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1361
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getFreeformAlpha(Landroid/os/IBinder;)F
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1116
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getFreeformAlpha(Landroid/os/IBinder;)F

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1117
    :catch_9
    move-exception v0

    .line 1118
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1120
    .end local v0    # "e":Landroid/os/RemoteException;
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public blacklist getFreeformContainerDefaultPoint()Landroid/graphics/PointF;
    .registers 2

    .line 418
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getFreeformContainerDefaultPoint()Landroid/graphics/PointF;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 419
    :catch_9
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 423
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getFreeformHeaderType()I
    .registers 2

    .line 1099
    sget v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->FREEFORM_HEADER_TYPE:I

    return v0
.end method

.method public blacklist getMWDisableRequesters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 480
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getMWDisableRequesters()Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 481
    :catch_d
    move-exception v0

    .line 482
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 484
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMinimizedFreeformTasksForCurrentUser()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 428
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getMinimizedFreeformTasksForCurrentUser()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 429
    :catch_d
    move-exception v0

    .line 430
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 433
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getMultiSplitFlags()I
    .registers 2

    .line 944
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getMultiSplitFlags()I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 945
    :catch_9
    move-exception v0

    .line 946
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 948
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getMultiWindowBlockListApp()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 638
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getMultiWindowBlockListApp()Landroid/content/pm/StringParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/StringParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 639
    :catch_d
    move-exception v0

    .line 640
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 642
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMultiWindowModeStates(I)I
    .registers 3
    .param p1, "displayId"    # I

    .line 672
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getMultiWindowModeStates(I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 673
    :catch_9
    move-exception v0

    .line 674
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 677
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getResizeMode(Landroid/content/pm/ActivityInfo;)I
    .registers 3
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 598
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getResizeMode(Landroid/content/pm/ActivityInfo;)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 599
    :catch_9
    move-exception v0

    .line 600
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 602
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSplitActivityAllowPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1302
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getSplitActivityAllowPackages()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 1303
    :catch_9
    move-exception v0

    .line 1304
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1306
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSplitActivityPackageEnabled(Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1322
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getSplitActivityPackageEnabled(Ljava/lang/String;I)I

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1323
    :catch_9
    move-exception v0

    .line 1324
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiWindowManager"

    const-string v2, "Failed to getSplitActivityPackageEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1326
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getSupportEmbedActivityPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1384
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getSupportEmbedActivityPackages()Ljava/util/List;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 1385
    :catch_9
    move-exception v0

    .line 1386
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1388
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSupportedMultiWindowModes(Landroid/content/pm/ActivityInfo;)I
    .registers 5
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .line 750
    if-nez p1, :cond_4

    .line 751
    const/4 v0, 0x0

    return v0

    .line 754
    :cond_4
    iget v0, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 755
    .local v0, "resizeMode":I
    const/4 v1, 0x0

    .line 758
    .local v1, "supportedModes":I
    invoke-virtual {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getResizeMode(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    .line 761
    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 762
    const/4 v1, 0x3

    .line 765
    :cond_12
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 766
    or-int/lit8 v1, v1, 0x4

    .line 769
    :cond_1a
    return v1
.end method

.method public blacklist getSupportedMultiWindowModes(Landroid/content/pm/ResolveInfo;)I
    .registers 3
    .param p1, "rInfo"    # Landroid/content/pm/ResolveInfo;

    .line 734
    if-nez p1, :cond_4

    .line 735
    const/4 v0, 0x0

    return v0

    .line 737
    :cond_4
    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSupportedMultiWindowModes(Landroid/content/pm/ActivityInfo;)I

    move-result v0

    return v0
.end method

.method public blacklist getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;
    .registers 3
    .param p1, "taskId"    # I

    .line 524
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    move-result-object v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    .line 525
    :catch_9
    move-exception v0

    .line 526
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 528
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist getTaskInfoFromPackageName(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 1267
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getTaskInfoFromPackageName(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 1268
    :catch_d
    move-exception v0

    .line 1269
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1271
    .end local v0    # "e":Landroid/os/RemoteException;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVisibleTasks()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 468
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->getVisibleTasks()Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 469
    :catch_d
    move-exception v0

    .line 470
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 473
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasMinimizedToggleTasks()Z
    .registers 2

    .line 446
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist hideInputMethod(I)V
    .registers 3
    .param p1, "reason"    # I

    .line 501
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->hideInputMethod(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 504
    goto :goto_c

    .line 502
    :catch_8
    move-exception v0

    .line 503
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 505
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist injectBackEventForDex(Landroid/os/IBinder;I)Z
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I

    .line 1458
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->injectBackEventForDex(Landroid/os/IBinder;I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1459
    :catch_9
    move-exception v0

    .line 1460
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1462
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAllTasksResizable(III)Z
    .registers 5
    .param p1, "taskId1"    # I
    .param p2, "taskId2"    # I
    .param p3, "taskId3"    # I

    .line 1469
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isAllTasksResizable(III)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1470
    :catch_9
    move-exception v0

    .line 1471
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1473
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAllowedMultiWindowPackage(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 618
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isAllowedMultiWindowPackage(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 619
    :catch_9
    move-exception v0

    .line 620
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 622
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDisabledNonResizeableAppRestartDialog()Z
    .registers 2

    .line 1403
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isDisabledNonResizeableAppRestartDialog()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1404
    :catch_9
    move-exception v0

    .line 1405
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1407
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isFlexPanelRunning()Z
    .registers 2

    .line 1057
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isFlexPanelRunning()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1058
    :catch_9
    move-exception v0

    .line 1059
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1061
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isMultiWindowBlockListApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 629
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isMultiWindowBlockListApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 630
    :catch_9
    move-exception v0

    .line 631
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 633
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isSplitImmersiveModeEnabled()Z
    .registers 2

    .line 1182
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isSplitImmersiveModeEnabled()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1183
    :catch_9
    move-exception v0

    .line 1184
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1186
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isValidCornerGesture(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1237
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->isValidCornerGesture(Landroid/view/MotionEvent;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1238
    :catch_9
    move-exception v0

    .line 1239
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1241
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist minimizeAllTasks(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 371
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->minimizeAllTasks(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 372
    :catch_9
    move-exception v0

    .line 373
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 375
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist minimizeTaskById(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 363
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->minimizeTaskById(I)Z
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 366
    goto :goto_c

    .line 364
    :catch_8
    move-exception v0

    .line 365
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 367
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist minimizeTaskByToken(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 354
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->minimizeTaskByToken(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 355
    :catch_9
    move-exception v0

    .line 356
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 358
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist moveFreeformTaskToSplit(Landroid/os/IBinder;Landroid/app/ActivityOptions;)V
    .registers 5
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/app/ActivityOptions;

    .line 976
    if-eqz p2, :cond_9

    :try_start_2
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_a

    .line 978
    :catch_7
    move-exception v0

    goto :goto_12

    .line 976
    :cond_9
    const/4 v0, 0x0

    .line 977
    .local v0, "bOptions":Landroid/os/Bundle;
    :goto_a
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->moveFreeformTaskToSplit(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_11} :catch_7

    .line 980
    .end local v0    # "bOptions":Landroid/os/Bundle;
    goto :goto_15

    .line 979
    .local v0, "e":Landroid/os/RemoteException;
    :goto_12
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 981
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    return-void
.end method

.method public blacklist moveSplitTaskToFreeform(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 961
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->moveSplitTaskToFreeform(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 964
    goto :goto_c

    .line 962
    :catch_8
    move-exception v0

    .line 963
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 965
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist noMoreShowMultiWindowHandlerHelp(I)V
    .registers 3
    .param p1, "windowingMode"    # I

    .line 794
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->noMoreShowMultiWindowHandlerHelp(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 797
    goto :goto_c

    .line 795
    :catch_8
    move-exception v0

    .line 796
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 798
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist notifyDragSplitAppIconHasDrawable(Z)V
    .registers 3
    .param p1, "hasDrawable"    # Z

    .line 509
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->notifyDragSplitAppIconHasDrawable(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 512
    goto :goto_c

    .line 510
    :catch_8
    move-exception v0

    .line 511
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 513
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist notifyFreeformMinimizeAnimationEnd(I)V
    .registers 3
    .param p1, "taskId"    # I

    .line 400
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->notifyFreeformMinimizeAnimationEnd(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 403
    goto :goto_c

    .line 401
    :catch_8
    move-exception v0

    .line 402
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 404
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    .line 1204
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->registerDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1207
    goto :goto_c

    .line 1205
    :catch_8
    move-exception v0

    .line 1206
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1208
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/multiwindow/IFreeformCallback;

    .line 383
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->registerFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 386
    goto :goto_c

    .line 384
    :catch_8
    move-exception v0

    .line 385
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 387
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist registerNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/INaturalSwitchingListener;

    .line 559
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->registerNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 562
    goto :goto_c

    .line 560
    :catch_8
    move-exception v0

    .line 561
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 563
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;

    .line 1039
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->registerRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1042
    goto :goto_c

    .line 1040
    :catch_8
    move-exception v0

    .line 1041
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1043
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist registerSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;

    .line 1021
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->registerSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1024
    goto :goto_c

    .line 1022
    :catch_8
    move-exception v0

    .line 1023
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1025
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist removeFocusedTask(I)Z
    .registers 3
    .param p1, "displayId"    # I

    .line 1276
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->removeFocusedTask(I)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1277
    :catch_9
    move-exception v0

    .line 1278
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1280
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist reportDexHelpShown(Landroid/os/IBinder;I)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "mode"    # I

    .line 1415
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->reportDexHelpShown(Landroid/os/IBinder;I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1418
    goto :goto_c

    .line 1416
    :catch_8
    move-exception v0

    .line 1417
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1419
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist reportFreeformContainerPoint(Landroid/graphics/PointF;)V
    .registers 3
    .param p1, "point"    # Landroid/graphics/PointF;

    .line 410
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->reportFreeformContainerPoint(Landroid/graphics/PointF;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 413
    goto :goto_c

    .line 411
    :catch_8
    move-exception v0

    .line 412
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 414
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist reportMultiWindowHandlerHelpShown(I)V
    .registers 3
    .param p1, "windowingMode"    # I

    .line 802
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->reportMultiWindowHandlerHelpShown(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 805
    goto :goto_c

    .line 803
    :catch_8
    move-exception v0

    .line 804
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 806
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist setBlockedMinimizeFreeformEnable(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1142
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setBlockedMinimizeFreeformEnable(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1145
    goto :goto_c

    .line 1143
    :catch_8
    move-exception v0

    .line 1144
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1146
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist setCornerGestureCustomValue(I)V
    .registers 3
    .param p1, "value"    # I

    .line 1257
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setCornerGestureCustomValue(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1260
    goto :goto_c

    .line 1258
    :catch_8
    move-exception v0

    .line 1259
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1261
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist setCornerGestureEnabledWithSettings(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1228
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setCornerGestureEnabledWithSettings(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1231
    goto :goto_c

    .line 1229
    :catch_8
    move-exception v0

    .line 1230
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1232
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist setCustomDensityEnabled(I)V
    .registers 3
    .param p1, "enabledFlags"    # I

    .line 1152
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setCustomDensityEnabled(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1155
    goto :goto_c

    .line 1153
    :catch_8
    move-exception v0

    .line 1154
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1156
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enabled"    # Z
    .param p3, "userId"    # I

    .line 1373
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setEmbedActivityPackageEnabled(Ljava/lang/String;ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1376
    goto :goto_10

    .line 1374
    :catch_8
    move-exception v0

    .line 1375
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiWindowManager"

    const-string v2, "Failed to setEmbedActivityPackageEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1377
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public blacklist setFreeformAlpha(Landroid/os/IBinder;F)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "alpha"    # F

    .line 1108
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setFreeformAlpha(Landroid/os/IBinder;F)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1111
    goto :goto_c

    .line 1109
    :catch_8
    move-exception v0

    .line 1110
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1112
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist setFreeformHeaderType(I)V
    .registers 3
    .param p1, "type"    # I

    .line 1083
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setFreeformHeaderType(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1086
    goto :goto_c

    .line 1084
    :catch_8
    move-exception v0

    .line 1085
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1088
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist setMaxVisibleFreeformCountForDex(II)V
    .registers 4
    .param p1, "maxCount"    # I
    .param p2, "maxDexCount"    # I

    .line 491
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setMaxVisibleFreeformCountForDex(II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 494
    goto :goto_c

    .line 492
    :catch_8
    move-exception v0

    .line 493
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 495
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist setMultiWindowEnabled(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enabled"    # Z

    .line 696
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 697
    return-void
.end method

.method public blacklist setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "enabled"    # Z
    .param p4, "userId"    # I

    .line 717
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 720
    goto :goto_c

    .line 718
    :catch_8
    move-exception v0

    .line 719
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 722
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist setNaviBarImmersiveModeLocked(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 1193
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setNaviStarSplitImmersiveMode(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1196
    goto :goto_c

    .line 1194
    :catch_8
    move-exception v0

    .line 1195
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1197
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist setSplitActivityPackageEnabled(Ljava/lang/String;II)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "userId"    # I

    .line 1339
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setSplitActivityPackageEnabled(Ljava/lang/String;II)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1342
    goto :goto_10

    .line 1340
    :catch_8
    move-exception v0

    .line 1341
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MultiWindowManager"

    const-string v2, "Failed to setSplitActivityPackageEnabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1343
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_10
    return-void
.end method

.method public blacklist setSplitImmersiveMode(Z)V
    .registers 3
    .param p1, "enable"    # Z

    .line 1174
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setSplitImmersiveMode(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1177
    goto :goto_c

    .line 1175
    :catch_8
    move-exception v0

    .line 1176
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1178
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist setStayFocusActivityEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 1292
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->setStayFocusActivityEnabled(Z)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1295
    goto :goto_c

    .line 1293
    :catch_8
    move-exception v0

    .line 1294
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1296
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist showOverlayAllApps(Landroid/os/IBinder;[I)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "buttonPosition"    # [I

    .line 995
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->showOverlayAllApps(Landroid/os/IBinder;[I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 998
    goto :goto_c

    .line 996
    :catch_8
    move-exception v0

    .line 997
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 999
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist startFreeformTaskPinning(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 776
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->startFreeformTaskPinning(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 779
    goto :goto_c

    .line 777
    :catch_8
    move-exception v0

    .line 778
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 780
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist startNaturalSwitching(ILandroid/os/IRemoteCallback;)Z
    .registers 4
    .param p1, "taskId"    # I
    .param p2, "callback"    # Landroid/os/IRemoteCallback;

    .line 539
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->startNaturalSwitching(ILandroid/os/IRemoteCallback;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 540
    :catch_9
    move-exception v0

    .line 541
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 543
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist startResizingFreeformTask(Landroid/os/IBinder;IIZ)V
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "isPointerInput"    # Z

    .line 1011
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->startResizingFreeformTask(Landroid/os/IBinder;IIZ)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1014
    goto :goto_c

    .line 1012
    :catch_8
    move-exception v0

    .line 1013
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1015
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist stopFreeformTaskPinning(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 784
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->stopFreeformTaskPinning(Landroid/os/IBinder;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 787
    goto :goto_c

    .line 785
    :catch_8
    move-exception v0

    .line 786
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 788
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist supportMultiSplitAppMinimumSize()Z
    .registers 2

    .line 1441
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist supportsMultiWindow(Landroid/os/IBinder;)Z
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 454
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->supportsMultiWindow(Landroid/os/IBinder;)Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 455
    :catch_9
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 460
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist toggleFreeformWindowingMode()Z
    .registers 2

    .line 1162
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->toggleFreeformWindowingMode()Z

    move-result v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 1163
    :catch_9
    move-exception v0

    .line 1164
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1166
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/multiwindow/IDexSnappingCallback;

    .line 1213
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->unregisterDexSnappingCallback(Lcom/samsung/android/multiwindow/IDexSnappingCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1216
    goto :goto_c

    .line 1214
    :catch_8
    move-exception v0

    .line 1215
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1217
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    .registers 3
    .param p1, "observer"    # Lcom/samsung/android/multiwindow/IFreeformCallback;

    .line 392
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->unregisterFreeformCallback(Lcom/samsung/android/multiwindow/IFreeformCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 395
    goto :goto_c

    .line 393
    :catch_8
    move-exception v0

    .line 394
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 396
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist unregisterNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/INaturalSwitchingListener;

    .line 588
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->unregisterNaturalSwitchingListener(Lcom/samsung/android/multiwindow/INaturalSwitchingListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 591
    goto :goto_c

    .line 589
    :catch_8
    move-exception v0

    .line 590
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 592
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist unregisterRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;

    .line 1047
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->unregisterRemoteAppTransitionListener(Lcom/samsung/android/multiwindow/IRemoteAppTransitionListener;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1050
    goto :goto_c

    .line 1048
    :catch_8
    move-exception v0

    .line 1049
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1051
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist unregisterSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;

    .line 1029
    :try_start_0
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getDefault()Lcom/samsung/android/multiwindow/IMultiTaskingBinder;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/multiwindow/IMultiTaskingBinder;->unregisterSplitAdjacentCallback(Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_8

    .line 1032
    goto :goto_c

    .line 1030
    :catch_8
    move-exception v0

    .line 1031
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->warningException(Ljava/lang/Exception;)V

    .line 1033
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c
    return-void
.end method

.method public blacklist updateMultiSplitAppMinimumSize()V
    .registers 1

    .line 1452
    return-void
.end method
