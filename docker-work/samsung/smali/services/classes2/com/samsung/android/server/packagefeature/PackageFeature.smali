.class public final enum Lcom/samsung/android/server/packagefeature/PackageFeature;
.super Ljava/lang/Enum;
.source "PackageFeature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/packagefeature/PackageFeature;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum ALLOW_MULTI_WINDOW:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum ALLOW_NO_WAIT_ROTATION_FOR_4_1:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum BROADCAST_RECEIVER_ALLOW_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum DEX_LAUNCH_B:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FIXED_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FLEX_MODE_APP:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FLEX_PANEL_DEFAULT:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum FULL_SCREEN:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum HIGH_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum IGNORE_APP_ROTATION:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum IGNORE_APP_ROTATION_DISABLED:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final LOCAL_DEBUG:Z = false

.field public static final enum LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum NAVIGATION_LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum SPLIT_ACTIVITY:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final enum TABLET_MIN_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

.field public static final TAG:Ljava/lang/String; = "PackageFeature"

.field public static final enum TEST_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeature;


# instance fields
.field private mController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

.field public final mDebugCommand:Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

.field public mEnabled:Z

.field public final mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

.field public final mName:Ljava/lang/String;

.field private mTmpCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 35

    .line 42
    new-instance v7, Lcom/samsung/android/server/packagefeature/PackageFeature;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_DISPLAY_COMPAT_POLICIES:Z

    const/4 v3, 0x1

    sget-object v15, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->FOLDABLE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    new-instance v6, Lcom/samsung/android/server/packagefeature/DisplayCompatDebugCommand;

    invoke-direct {v6}, Lcom/samsung/android/server/packagefeature/DisplayCompatDebugCommand;-><init>()V

    const-string v1, "DISPLAY_COMPAT"

    const/4 v2, 0x0

    const-string v5, "displayCompat"

    move-object v0, v7

    move-object v4, v15

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v7, Lcom/samsung/android/server/packagefeature/PackageFeature;->DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 48
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/4 v10, 0x1

    const/4 v11, 0x0

    new-instance v14, Lcom/samsung/android/server/packagefeature/FoldMinAspectRatioDebugCommand;

    invoke-direct {v14}, Lcom/samsung/android/server/packagefeature/FoldMinAspectRatioDebugCommand;-><init>()V

    const-string v9, "FIXED_ASPECT_RATIO"

    const-string v13, "fixedAspectRatio"

    move-object v8, v0

    move-object v12, v15

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->FIXED_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 54
    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/4 v10, 0x2

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_TABLET_MIN_ASPECT_RATIO_MODE:Z

    new-instance v14, Lcom/samsung/android/server/packagefeature/TabletMinAspectRatioDebugCommand;

    invoke-direct {v14}, Lcom/samsung/android/server/packagefeature/TabletMinAspectRatioDebugCommand;-><init>()V

    const-string v9, "TABLET_MIN_ASPECT_RATIO"

    const-string/jumbo v13, "tabletMinAspectRatio"

    move-object v8, v1

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v1, Lcom/samsung/android/server/packagefeature/PackageFeature;->TABLET_MIN_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 60
    new-instance v2, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/4 v10, 0x3

    const/4 v11, 0x1

    const-string v9, "FULL_SCREEN"

    const-string v13, "fullScreen"

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;)V

    sput-object v2, Lcom/samsung/android/server/packagefeature/PackageFeature;->FULL_SCREEN:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 65
    new-instance v3, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/4 v10, 0x4

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->FW_IGNORE_APP_ROTATION_LIST:Z

    new-instance v14, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v4, "-setIgnoreAppRotation"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v14, v4}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const-string v9, "IGNORE_APP_ROTATION"

    const-string v13, "ignoreAppRotation"

    move-object v8, v3

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v3, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 71
    new-instance v4, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/4 v10, 0x5

    const/4 v11, 0x0

    new-instance v14, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v5, "-setIgnoreAppRotationDisabled"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const-string v9, "IGNORE_APP_ROTATION_DISABLED"

    const-string v13, "ignoreAppRotationDisabled"

    move-object v8, v4

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v4, Lcom/samsung/android/server/packagefeature/PackageFeature;->IGNORE_APP_ROTATION_DISABLED:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 77
    new-instance v5, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/4 v10, 0x6

    new-instance v14, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v6, "-setFlexModeApp"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-direct {v14, v6}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const-string v9, "FLEX_MODE_APP"

    const-string v13, "flexModeApp"

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v5, Lcom/samsung/android/server/packagefeature/PackageFeature;->FLEX_MODE_APP:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 83
    new-instance v6, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/4 v10, 0x7

    new-instance v14, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v8, "-setFlexPanelDefault"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v14, v8}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const-string v9, "FLEX_PANEL_DEFAULT"

    const-string v13, "flexPanelDefault"

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v6, Lcom/samsung/android/server/packagefeature/PackageFeature;->FLEX_PANEL_DEFAULT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 89
    new-instance v16, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/16 v10, 0x8

    const/4 v11, 0x1

    const-string v9, "ALLOW_MULTI_WINDOW"

    const-string v13, "allowMultiWindow"

    move-object/from16 v8, v16

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;)V

    sput-object v16, Lcom/samsung/android/server/packagefeature/PackageFeature;->ALLOW_MULTI_WINDOW:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 94
    new-instance v17, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/16 v10, 0x9

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY_ALLOW_LIST:Z

    const-string v9, "SPLIT_ACTIVITY"

    const-string/jumbo v13, "splitActivity"

    move-object/from16 v8, v17

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;)V

    sput-object v17, Lcom/samsung/android/server/packagefeature/PackageFeature;->SPLIT_ACTIVITY:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 99
    new-instance v18, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/16 v10, 0xa

    const/4 v11, 0x0

    new-instance v14, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v8, "-setAllowNoWaitRotation"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-direct {v14, v8}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const-string v9, "ALLOW_NO_WAIT_ROTATION_FOR_4_1"

    const-string v13, "allowNoWaitRotationFor_4_1"

    move-object/from16 v8, v18

    invoke-direct/range {v8 .. v14}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v18, Lcom/samsung/android/server/packagefeature/PackageFeature;->ALLOW_NO_WAIT_ROTATION_FOR_4_1:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 105
    new-instance v14, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/16 v10, 0xb

    const-string v9, "DEX_LAUNCH_B"

    const-string v13, "dexLaunchBlock"

    move-object v8, v14

    invoke-direct/range {v8 .. v13}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;)V

    sput-object v14, Lcom/samsung/android/server/packagefeature/PackageFeature;->DEX_LAUNCH_B:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 112
    new-instance v8, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/16 v21, 0xc

    sget-boolean v22, Lcom/samsung/android/rune/CoreRune;->FW_VRR_LOW_REFRESH_RATE_LIST:Z

    sget-object v9, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->REFRESH_RATE_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    new-instance v10, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v11, "-setLowRefreshRate"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const-string v20, "LOW_REFRESH_RATE"

    const-string v24, "lowRefreshRate"

    move-object/from16 v19, v8

    move-object/from16 v23, v9

    move-object/from16 v25, v10

    invoke-direct/range {v19 .. v25}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v8, Lcom/samsung/android/server/packagefeature/PackageFeature;->LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 118
    new-instance v10, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/16 v25, 0xd

    sget-boolean v26, Lcom/samsung/android/rune/CoreRune;->FW_VRR_HIGH_REFRESH_RATE_BLOCK_LIST:Z

    new-instance v11, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v12, "-setHighRefreshRate"

    filled-new-array {v12}, [Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const-string v24, "HIGH_REFRESH_RATE"

    const-string v28, "highRefreshRate"

    move-object/from16 v23, v10

    move-object/from16 v27, v9

    move-object/from16 v29, v11

    invoke-direct/range {v23 .. v29}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v10, Lcom/samsung/android/server/packagefeature/PackageFeature;->HIGH_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 124
    new-instance v11, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/16 v25, 0xe

    sget-boolean v26, Lcom/samsung/android/rune/CoreRune;->FW_VRR_NAVIGATION_LOW_REFRESH_RATE:Z

    new-instance v12, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    const-string v13, "-setNaviAppLowRefreshRate"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;-><init>([Ljava/lang/String;)V

    const-string v24, "NAVIGATION_LOW_REFRESH_RATE"

    const-string v28, "naviAppLowRefreshRate"

    move-object/from16 v23, v11

    move-object/from16 v29, v12

    invoke-direct/range {v23 .. v29}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    sput-object v11, Lcom/samsung/android/server/packagefeature/PackageFeature;->NAVIGATION_LOW_REFRESH_RATE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 132
    new-instance v9, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/16 v31, 0xf

    const/16 v32, 0x1

    sget-object v33, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->BROADCAST_RECEIVER_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const-string v30, "BROADCAST_RECEIVER_ALLOW_LIST"

    const-string v34, "BroadcastReceiverAllowList"

    move-object/from16 v29, v9

    invoke-direct/range {v29 .. v34}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;)V

    sput-object v9, Lcom/samsung/android/server/packagefeature/PackageFeature;->BROADCAST_RECEIVER_ALLOW_LIST:Lcom/samsung/android/server/packagefeature/PackageFeature;

    .line 139
    new-instance v12, Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/16 v21, 0x10

    sget-boolean v22, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    sget-object v23, Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;->TEST_PACKAGE_FEATURE_GROUP:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    const-string v20, "TEST_PACKAGE_FEATURE"

    const-string/jumbo v24, "testPackageFeature"

    move-object/from16 v19, v12

    invoke-direct/range {v19 .. v24}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;)V

    sput-object v12, Lcom/samsung/android/server/packagefeature/PackageFeature;->TEST_PACKAGE_FEATURE:Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/16 v13, 0x11

    new-array v13, v13, [Lcom/samsung/android/server/packagefeature/PackageFeature;

    const/4 v15, 0x0

    aput-object v7, v13, v15

    const/4 v7, 0x1

    aput-object v0, v13, v7

    const/4 v0, 0x2

    aput-object v1, v13, v0

    const/4 v0, 0x3

    aput-object v2, v13, v0

    const/4 v0, 0x4

    aput-object v3, v13, v0

    const/4 v0, 0x5

    aput-object v4, v13, v0

    const/4 v0, 0x6

    aput-object v5, v13, v0

    const/4 v0, 0x7

    aput-object v6, v13, v0

    const/16 v0, 0x8

    aput-object v16, v13, v0

    const/16 v0, 0x9

    aput-object v17, v13, v0

    const/16 v0, 0xa

    aput-object v18, v13, v0

    const/16 v0, 0xb

    aput-object v14, v13, v0

    const/16 v0, 0xc

    aput-object v8, v13, v0

    const/16 v0, 0xd

    aput-object v10, v13, v0

    const/16 v0, 0xe

    aput-object v11, v13, v0

    const/16 v0, 0xf

    aput-object v9, v13, v0

    const/16 v0, 0x10

    aput-object v12, v13, v0

    .line 39
    sput-object v13, Lcom/samsung/android/server/packagefeature/PackageFeature;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeature;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 161
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/server/packagefeature/PackageFeature;-><init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLcom/samsung/android/server/packagefeature/PackageFeatureGroup;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;",
            ")V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 158
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mTmpCallbacks:Ljava/util/List;

    .line 166
    iput-boolean p3, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mEnabled:Z

    .line 167
    iput-object p4, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mGroup:Lcom/samsung/android/server/packagefeature/PackageFeatureGroup;

    .line 168
    iput-object p5, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mName:Ljava/lang/String;

    .line 169
    iput-object p6, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mDebugCommand:Lcom/samsung/android/server/packagefeature/PackageFeatureDebugCommand;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/packagefeature/PackageFeature;
    .registers 2

    .line 39
    const-class v0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/packagefeature/PackageFeature;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/packagefeature/PackageFeature;
    .registers 1

    .line 39
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->$VALUES:[Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-virtual {v0}, [Lcom/samsung/android/server/packagefeature/PackageFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/packagefeature/PackageFeature;

    return-object v0
.end method


# virtual methods
.method public registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V
    .registers 4

    .line 186
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mTmpCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 187
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    if-nez v1, :cond_e

    .line 188
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mTmpCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    monitor-exit v0

    return-void

    .line 191
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_13

    .line 192
    invoke-interface {v1, p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    return-void

    :catchall_13
    move-exception p0

    .line 191
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public setPackageFeatureController(Lcom/samsung/android/server/packagefeature/PackageFeatureController;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 176
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mTmpCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 177
    :try_start_6
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mController:Lcom/samsung/android/server/packagefeature/PackageFeatureController;

    .line 178
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mTmpCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;

    .line 179
    invoke-interface {p1, p0, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureController;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeature;Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    goto :goto_e

    .line 181
    :cond_1e
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeature;->mTmpCallbacks:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 182
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_6 .. :try_end_27} :catchall_25

    throw p0
.end method
