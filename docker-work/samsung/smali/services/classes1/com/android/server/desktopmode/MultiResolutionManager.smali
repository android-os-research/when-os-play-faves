.class public Lcom/android/server/desktopmode/MultiResolutionManager;
.super Ljava/lang/Object;
.source "MultiResolutionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;,
        Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;,
        Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    }
.end annotation


# static fields
.field public static final DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final FHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final HD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final RESOLUTION_TABLE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String;

.field public static final UHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final UWFHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final UWQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final WQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final WQXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public static final WUXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;


# instance fields
.field public final mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

.field public mDisplayRemovedOnEnablingDesktopMode:Z

.field public final mDualModeDensityChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public mIsForcedSupportAllResolution:Z

.field public mLastDualModeMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public final mResolver:Landroid/content/ContentResolver;

.field public mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

.field public final mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

.field public final mStandaloneModeDensityChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

.field public final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

.field public final mStateManager:Lcom/android/server/desktopmode/IStateManager;

.field public mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

.field public final mUserSettingResolutionChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public final mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCustomDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayRemovedOnEnablingDesktopMode(Lcom/android/server/desktopmode/MultiResolutionManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDualModeDensityChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDualModeDensityChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmResolver(Lcom/android/server/desktopmode/MultiResolutionManager;)Landroid/content/ContentResolver;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStandaloneModeDensityChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDensityChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStandaloneModeDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmStateManager(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/IStateManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserSettingResolutionChangedListener(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolutionChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWindowManagerInternal(Lcom/android/server/desktopmode/MultiResolutionManager;)Lcom/android/server/wm/WindowManagerInternal;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDisplayRemovedOnEnablingDesktopMode(Lcom/android/server/desktopmode/MultiResolutionManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleReconnection(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/State;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->handleReconnection(Lcom/android/server/desktopmode/State;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/MultiResolutionManager;->setSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshowUserSettingIsNotSupportedToast(Lcom/android/server/desktopmode/MultiResolutionManager;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->showUserSettingIsNotSupportedToast()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDisplayResolutionUnsupported(Lcom/android/server/desktopmode/MultiResolutionManager;Lcom/android/server/desktopmode/DisplayInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateDisplayResolutionUnsupported(Lcom/android/server/desktopmode/DisplayInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetRESOLUTION_TABLE()Ljava/util/Map;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 12

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    .line 67
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    .line 69
    new-instance v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v2, "UHD"

    const/16 v3, 0xf00

    const/16 v4, 0x870

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->UHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 70
    new-instance v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v3, "UWQHD"

    const/16 v4, 0xd70

    const/16 v5, 0x5a0

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/android/server/desktopmode/MultiResolutionManager;->UWQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 71
    new-instance v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v4, "WQXGA"

    const/16 v6, 0xa00

    const/16 v7, 0x640

    invoke-direct {v3, v4, v6, v7}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/server/desktopmode/MultiResolutionManager;->WQXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 72
    new-instance v4, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v8, "WQHD"

    invoke-direct {v4, v8, v6, v5}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/android/server/desktopmode/MultiResolutionManager;->WQHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 73
    new-instance v5, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v8, "UWFHD"

    const/16 v9, 0x438

    invoke-direct {v5, v8, v6, v9}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/server/desktopmode/MultiResolutionManager;->UWFHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 74
    new-instance v6, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v8, "WUXGA"

    const/16 v10, 0x780

    const/16 v11, 0x4b0

    invoke-direct {v6, v8, v10, v11}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/android/server/desktopmode/MultiResolutionManager;->WUXGA:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 75
    new-instance v8, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v11, "FHD"

    invoke-direct {v8, v11, v10, v9}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/android/server/desktopmode/MultiResolutionManager;->FHD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 76
    new-instance v9, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v10, "HD"

    const/16 v11, 0x384

    invoke-direct {v9, v10, v7, v11}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/server/desktopmode/MultiResolutionManager;->HD:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 77
    sput-object v8, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 78
    sput-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 79
    sput-object v9, Lcom/android/server/desktopmode/MultiResolutionManager;->LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 83
    iget-object v7, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v1, v2, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, v3, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v1, v4, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v1, v5, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v1, v6, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v1, v8, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v1, v9, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Lcom/android/server/wm/ActivityTaskManagerInternal;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/WindowManagerInternal;)V
    .registers 9

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    .line 93
    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$1;

    const-string/jumbo v1, "resolution_user_setting"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$1;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolutionChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    .line 113
    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$2;

    const-string v1, "dual_mode_screen_zoom"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$2;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDualModeDensityChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    .line 122
    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$3;

    const-string/jumbo v1, "standalone_mode_screen_zoom"

    invoke-direct {v0, p0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$3;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDensityChangedListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    .line 131
    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$4;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/MultiResolutionManager$4;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 204
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mContext:Landroid/content/Context;

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    .line 206
    iput-object p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 207
    invoke-interface {p2, v0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 208
    iput-object p4, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 209
    iput-object p5, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 210
    iput-object p6, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 211
    iput-object p3, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSettingsHelper:Lcom/android/server/desktopmode/SettingsHelper;

    .line 212
    new-instance p1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    sget-object p2, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const/16 p3, 0xa0

    invoke-direct {p1, p2, p3}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 213
    iput-object p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 214
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz p1, :cond_59

    new-instance p1, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    invoke-direct {p1, p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager;)V

    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    :cond_59
    return-void
.end method


# virtual methods
.method public final calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .registers 3

    .line 365
    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->LOWEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object p0

    return-object p0
.end method

.method public final calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;
    .registers 6

    if-eqz p1, :cond_61

    .line 370
    invoke-virtual {p1}, Lcom/android/server/desktopmode/DisplayInfo;->getRealSize()Landroid/graphics/Point;

    move-result-object p0

    .line 371
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculateMaxSupportedResolution(), displayInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_20
    invoke-virtual {p1}, Lcom/android/server/desktopmode/DisplayInfo;->getRotation()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    .line 375
    invoke-virtual {p1}, Lcom/android/server/desktopmode/DisplayInfo;->getRotation()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_37

    .line 378
    :cond_2e
    iget p1, p0, Landroid/graphics/Point;->y:I

    iget v0, p0, Landroid/graphics/Point;->x:I

    if-le p1, v0, :cond_37

    .line 379
    invoke-virtual {p0, p1, v0}, Landroid/graphics/Point;->set(II)V

    .line 383
    :cond_37
    sget-object p1, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_60

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 384
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 385
    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    if-lt v1, v2, :cond_41

    iget v1, p0, Landroid/graphics/Point;->y:I

    iget v2, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    if-lt v1, v2, :cond_41

    return-object v0

    :cond_60
    return-object p2

    .line 391
    :cond_61
    sget-object p0, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    return-object p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 4

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/MultiResolutionManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 413
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mIsForcedSupportAllResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayRemovedOnEnablingDesktopMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mDisplayRemovedOnEnablingDesktopMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mStandaloneModeDisplayMetrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCustomDisplayMetrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserSettingResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mMaxSupportedResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSelectedDisplayMetrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLastDualModeMaxSupportedResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mLastDualModeMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getCustomDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
    .registers 1

    .line 426
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    return-object p0
.end method

.method public final getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    :goto_7
    return-object v0
.end method

.method public getStandaloneModeDensity()I
    .registers 1

    .line 219
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    return p0
.end method

.method public getStandaloneModeOriginalDensity(I)I
    .registers 2

    .line 224
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->-$$Nest$mgetOriginalDisplaySizeDensity(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;I)Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    return p0
.end method

.method public final handleReconnection(Lcom/android/server/desktopmode/State;)V
    .registers 4

    .line 395
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object v0

    .line 396
    iget v0, v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_c

    const/4 v1, 0x3

    if-ne v0, v1, :cond_34

    .line 397
    :cond_c
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_34

    .line 398
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->isResolutionChangeNeeded(Lcom/android/server/desktopmode/State;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 p1, 0x1

    .line 399
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->setDualDisplayResolutionDensity(Z)I

    goto :goto_34

    .line 401
    :cond_1e
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_29

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string v1, "No need to change resolution"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_29
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    if-eqz v0, :cond_34

    .line 404
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)V

    :cond_34
    :goto_34
    return-void
.end method

.method public final isResolutionChangeNeeded(Lcom/android/server/desktopmode/State;)Z
    .registers 4

    .line 322
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const/4 v1, 0x1

    if-nez v0, :cond_15

    .line 323
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mLastDualModeMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 324
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object p0

    .line 325
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr v1, p0

    goto :goto_36

    .line 328
    :cond_15
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object p1

    .line 329
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 328
    invoke-virtual {p1, p0}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    move-result p0

    if-eqz p0, :cond_35

    .line 330
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_36

    sget-object p0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string p1, "This display does not support current resolution."

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    .line 333
    :cond_36
    :goto_36
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_51

    sget-object p0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "isResolutionChangeNeeded: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_51
    return v1
.end method

.method public onUserChanged(Z)V
    .registers 5

    .line 228
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserChanged(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateUserSettingDisplayMetrics()V

    .line 230
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStandaloneModeDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;

    invoke-static {v0}, Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;->-$$Nest$mupdateDesktopModeDensity(Lcom/android/server/desktopmode/MultiResolutionManager$StandaloneModeDisplayMetrics;)V

    .line 232
    :cond_27
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    if-eqz p1, :cond_40

    .line 233
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isExternalDisplayConnected()Z

    move-result p1

    if-eqz p1, :cond_40

    .line 234
    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object p1

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    :cond_40
    return-void
.end method

.method public setCustomResolutionFromAdbCommand(Ljava/io/PrintWriter;III)V
    .registers 8

    .line 432
    :try_start_0
    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    new-instance v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    const-string v2, "ADB"

    invoke-direct {v1, v2, p2, p3}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;-><init>(Ljava/lang/String;II)V

    invoke-direct {v0, v1, p4}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    const-string p2, "Successfully set custom resolution"

    .line 434
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    const/4 p2, 0x0

    .line 436
    iput-object p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mCustomDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    const-string p0, "Failed to set custom resolution. Width, height, and density must be greater than 0. Custom resolution is removed."

    .line 437
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method public setDualDisplayResolutionDensity(Z)I
    .registers 4

    if-eqz p1, :cond_25

    .line 263
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateUserSettingDisplayMetrics()V

    .line 264
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateDualDisplayMetrics()V

    .line 265
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    .line 266
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    .line 267
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 265
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enableDexDisplay(III)I

    move-result p0

    return p0

    .line 269
    :cond_25
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->disableDexDisplay()I

    move-result p0

    return p0
.end method

.method public final setSelectedDisplayMetrics(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V
    .registers 6

    .line 244
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSelectedDisplayMetrics: resolution="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", density="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_23
    new-instance v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-direct {v0, p1, p2}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;-><init>(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;I)V

    .line 247
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-virtual {p1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_78

    .line 248
    sget-boolean p1, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p1, :cond_4a

    sget-object p1, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changed to: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_4a
    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    .line 250
    iget-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p1}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object p1

    .line 251
    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_78

    .line 252
    iget-object p2, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-interface {p1}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result p1

    .line 253
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v0, v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->width:I

    .line 254
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->height:I

    .line 255
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object p0

    iget p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->density:I

    .line 252
    invoke-virtual {p2, p1, v0, v1, p0}, Lcom/android/server/wm/WindowManagerInternal;->setDisplaySizeAndDensityInDex(IIII)V

    :cond_78
    return-void
.end method

.method public setSupportAllResolution(Z)V
    .registers 2

    .line 445
    iput-boolean p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    return-void
.end method

.method public final showUserSettingIsNotSupportedToast()V
    .registers 3

    .line 279
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 280
    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isDexOnPcOrWirelessDexConnected()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_44

    .line 283
    :cond_11
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->getSelectedDisplayMetrics()Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->resolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 284
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "showToastResolutionChanged()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_2b
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getDesktopDisplayId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_44

    .line 287
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/Utils;->getDisplayContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object p0

    const v0, 0x1040443

    invoke-static {p0, v0}, Lcom/android/server/desktopmode/ToastManager;->showToast(Landroid/content/Context;I)V

    :cond_44
    :goto_44
    return-void
.end method

.method public final updateDisplayResolutionUnsupported(Lcom/android/server/desktopmode/DisplayInfo;)V
    .registers 3

    const/4 v0, 0x0

    .line 274
    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object p1

    if-nez p1, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    .line 275
    :goto_a
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {p0, p1}, Lcom/android/server/desktopmode/IStateManager;->setDisplayResolutionUnsupported(Z)V

    return-void
.end method

.method public final updateDualDisplayMetrics()V
    .registers 4

    .line 294
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->getConnectedDisplay()Lcom/android/server/desktopmode/DisplayInfo;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 295
    iget-boolean v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    if-eqz v1, :cond_11

    goto :goto_45

    .line 304
    :cond_11
    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    .line 305
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mStateManager:Lcom/android/server/desktopmode/IStateManager;

    .line 306
    invoke-interface {v0}, Lcom/android/server/desktopmode/IStateManager;->getState()Lcom/android/server/desktopmode/State;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/desktopmode/State;->isDexOnPcOrWirelessDexConnected()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_39

    .line 310
    :cond_29
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->isSupportedOn(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 311
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    goto :goto_3b

    :cond_36
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    goto :goto_3b

    .line 307
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 313
    :goto_3b
    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-virtual {v1, v0}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->setResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    .line 314
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mLastDualModeMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    goto :goto_59

    .line 296
    :cond_45
    :goto_45
    iget-boolean v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mIsForcedSupportAllResolution:Z

    if-eqz v0, :cond_4d

    .line 297
    invoke-virtual {p0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateSupportAllResolution()V

    goto :goto_59

    .line 299
    :cond_4d
    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {p0, v0}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    .line 300
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->DUAL_MODE_DEFAULT:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->setResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    .line 316
    :goto_59
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_76

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSelectedDisplayMetrics= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_76
    return-void
.end method

.method public final updateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)V
    .registers 2

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->calculateMaxSupportedResolution(Lcom/android/server/desktopmode/DisplayInfo;)Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/MultiResolutionManager;->updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    return-void
.end method

.method public final updateMaxSupportedResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V
    .registers 5

    .line 342
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateMaxSupportedResolution: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1b
    iput-object p1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mMaxSupportedResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 344
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    iget-object p1, p1, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;->name:Ljava/lang/String;

    const-string/jumbo v0, "resolution_max"

    invoke-static {p0, v0, p1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateSupportAllResolution()V
    .registers 3

    .line 349
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    sget-object v1, Lcom/android/server/desktopmode/MultiResolutionManager;->HIGHEST_RESOLUTION:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    invoke-virtual {v0, v1}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->setResolution(Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;)V

    .line 350
    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v0, "resolution_max"

    const-string v1, "ADB"

    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->setSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final updateUserSettingDisplayMetrics()V
    .registers 5

    .line 356
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_c

    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "updateUserSettingDisplayMetrics()"

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_c
    sget-object v0, Lcom/android/server/desktopmode/MultiResolutionManager;->RESOLUTION_TABLE:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string/jumbo v3, "resolution_user_setting"

    invoke-static {v1, v3, v2}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    iput-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mUserSettingResolution:Lcom/android/server/desktopmode/MultiResolutionManager$Resolution;

    .line 359
    iget-object v0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mSelectedDisplayMetrics:Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;

    iget-object p0, p0, Lcom/android/server/desktopmode/MultiResolutionManager;->mResolver:Landroid/content/ContentResolver;

    const/16 v1, 0xa0

    const-string v2, "dual_mode_screen_zoom"

    .line 360
    invoke-static {p0, v2, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 359
    invoke-virtual {v0, p0}, Lcom/android/server/desktopmode/MultiResolutionManager$DisplayMetrics;->setDensity(I)V

    return-void
.end method
