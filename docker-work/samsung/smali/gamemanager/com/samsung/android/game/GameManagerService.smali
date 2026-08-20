.class public final Lcom/samsung/android/game/GameManagerService;
.super Lcom/samsung/android/game/IGameManagerService$Stub;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/game/GameManagerService$MultiUserReceiver;,
        Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;,
        Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;,
        Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;,
        Lcom/samsung/android/game/GameManagerService$DisplayListener;,
        Lcom/samsung/android/game/GameManagerService$GameIntentType;,
        Lcom/samsung/android/game/GameManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final GAMEBOOSTER_ACTION:Ljava/lang/String; = "com.samsung.android.game.gametools.GAMETOOLS_INTENTSERVICE"

.field private static final GAMELAUNCHER_ACTION:Ljava/lang/String; = "com.samsung.android.game.gamehome.GAME_PACKAGE_CHANGED"

.field private static final GAME_INTENT_SVC:Ljava/lang/String; = "com.samsung.android.game.gos.GameIntentService"

.field private static final MSG_UNBIND_CHECK:I = 0x271c

.field private static final PKG_GAMEBOOSTER:Ljava/lang/String; = "com.samsung.android.game.gametools"

.field private static final PKG_GAMELAUNCHER:Ljava/lang/String; = "com.samsung.android.game.gamehome"

.field private static final PKG_GOS:Ljava/lang/String; = "com.samsung.android.game.gos"

.field private static final SIOP_MODE_OFF:I = -0x3e8

.field private static final TAG:Ljava/lang/String; = "GameManager"

.field private static final URI_GAMELAUNCHER_PREF:Ljava/lang/String; = "pref_setting_gamelauncher_need_fresh_start"


# instance fields
.field private mActionLogger:Lcom/samsung/android/game/ActionLogger;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mApBooster:Lcom/samsung/android/game/ApBooster;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

.field private mDisabledVrrControlList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayListener:Lcom/samsung/android/game/GameManagerService$DisplayListener;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDssController:Lcom/android/server/DssController;

.field private mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

.field private mGameManager:Landroid/app/GameManager;

.field private mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;

.field private final mGosServiceConn:Landroid/content/ServiceConnection;

.field private mGosSystemService:Lcom/samsung/android/game/gos/IGosSystemService;

.field private mHandler:Landroid/os/Handler;

.field private mIsGameBoosterInstalled:Z

.field private mIsGameLauncherEnabled:Z

.field private mIsGosEnabled:Z

.field private mLockForGameServiceConn:Ljava/lang/Object;

.field private mMultiUserReceiver:Lcom/samsung/android/game/GameManagerService$MultiUserReceiver;

.field private mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

.field private mPkgUpdateReceiver:Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;

.field private mSdhmsReceiver:Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;

.field private mSecFamilyPkgChangeReceiver:Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;

.field private mSiopMode:I

.field private mStatusBarManager:Landroid/app/SemStatusBarManager;

.field private mSystemHelper:Lcom/samsung/android/game/SystemHelper;

.field private mVrrModeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/game/IGameManagerService$Stub;-><init>()V

    .line 139
    new-instance v0, Lcom/samsung/android/game/GameManagerService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/GameManagerService$1;-><init>(Lcom/samsung/android/game/GameManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mHandler:Landroid/os/Handler;

    .line 154
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/samsung/android/game/GameManagerService;->mSiopMode:I

    .line 156
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    .line 158
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    .line 159
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    .line 160
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mApBooster:Lcom/samsung/android/game/ApBooster;

    .line 161
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    .line 163
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    .line 164
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    .line 165
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 166
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 167
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 168
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 170
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    .line 172
    iput-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    .line 173
    iput-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z

    .line 174
    iput-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameBoosterInstalled:Z

    .line 176
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    .line 177
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;

    .line 178
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayListener:Lcom/samsung/android/game/GameManagerService$DisplayListener;

    .line 187
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mLockForGameServiceConn:Ljava/lang/Object;

    .line 902
    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGameManager:Landroid/app/GameManager;

    .line 1892
    new-instance v2, Lcom/samsung/android/game/GameManagerService$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/game/GameManagerService$2;-><init>(Lcom/samsung/android/game/GameManagerService;)V

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mGosServiceConn:Landroid/content/ServiceConnection;

    .line 191
    const-string v2, "GameManager"

    const-string v3, "ctor"

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    .line 195
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    .line 196
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/game/data/DatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/samsung/android/game/data/DatabaseHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    .line 197
    iget v3, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/game/data/DatabaseHelper;->loadPkgDataFromDb(I)V

    .line 198
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 199
    new-instance v2, Lcom/samsung/android/game/ActionLogger;

    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    invoke-direct {v2, v3}, Lcom/samsung/android/game/ActionLogger;-><init>(Lcom/samsung/android/game/data/DatabaseHelper;)V

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    .line 201
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    .line 202
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    .line 203
    new-instance v2, Lcom/samsung/android/game/ApBooster;

    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/game/ApBooster;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mApBooster:Lcom/samsung/android/game/ApBooster;

    .line 204
    new-instance v2, Lcom/samsung/android/game/SystemHelper;

    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/game/SystemHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    .line 206
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mActivityManager:Landroid/app/ActivityManager;

    .line 207
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 208
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/app/SemStatusBarManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/SemStatusBarManager;

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    .line 209
    invoke-static {}, Lcom/android/server/DssController;->getService()Lcom/android/server/DssController;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    .line 212
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    const-string v4, "com.samsung.android.game.gos"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/game/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    .line 213
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    const-string v4, "com.samsung.android.game.gamehome"

    invoke-static {v2, v4, v3}, Lcom/samsung/android/game/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z

    .line 214
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v3, "com.samsung.android.game.gametools"

    invoke-static {v2, v3}, Lcom/samsung/android/game/Util;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameBoosterInstalled:Z

    .line 218
    const/4 v2, 0x0

    .line 219
    .local v2, "lcdOn":Z
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v3, :cond_f1

    .line 220
    invoke-virtual {v3, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_f0

    const/4 v1, 0x1

    :cond_f0
    move v2, v1

    .line 222
    :cond_f1
    new-instance v1, Lcom/samsung/android/game/FgCheckThread;

    iget-object v5, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    iget v7, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    iget-boolean v8, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    iget-boolean v9, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z

    iget-boolean v10, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameBoosterInstalled:Z

    move-object v3, v1

    move v4, v2

    invoke-direct/range {v3 .. v10}, Lcom/samsung/android/game/FgCheckThread;-><init>(ZLandroid/content/Context;Lcom/samsung/android/game/SystemHelper;IZZZ)V

    iput-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    .line 224
    invoke-virtual {v1}, Lcom/samsung/android/game/FgCheckThread;->start()V

    .line 225
    new-instance v1, Lcom/samsung/android/game/GosNotifyThread;

    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/samsung/android/game/GosNotifyThread;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;

    .line 226
    invoke-virtual {v1}, Lcom/samsung/android/game/GosNotifyThread;->start()V

    .line 227
    new-instance v1, Lcom/samsung/android/game/GameManagerService$DisplayListener;

    invoke-direct {v1, p0}, Lcom/samsung/android/game/GameManagerService$DisplayListener;-><init>(Lcom/samsung/android/game/GameManagerService;)V

    iput-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayListener:Lcom/samsung/android/game/GameManagerService$DisplayListener;

    .line 228
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v3, :cond_123

    .line 229
    invoke-virtual {v3, v1, v0}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 232
    :cond_123
    new-instance v0, Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;-><init>(Lcom/samsung/android/game/GameManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mSdhmsReceiver:Lcom/samsung/android/game/GameManagerService$SDHMSReceiver;

    .line 233
    new-instance v0, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;-><init>(Lcom/samsung/android/game/GameManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mPkgUpdateReceiver:Lcom/samsung/android/game/GameManagerService$PkgUpdateReceiver;

    .line 234
    new-instance v0, Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;-><init>(Lcom/samsung/android/game/GameManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mSecFamilyPkgChangeReceiver:Lcom/samsung/android/game/GameManagerService$SecFamilyPkgChangeReceiver;

    .line 236
    new-instance v0, Lcom/samsung/android/game/GameManagerService$MultiUserReceiver;

    invoke-direct {v0, p0}, Lcom/samsung/android/game/GameManagerService$MultiUserReceiver;-><init>(Lcom/samsung/android/game/GameManagerService;)V

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mMultiUserReceiver:Lcom/samsung/android/game/GameManagerService$MultiUserReceiver;

    .line 240
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/gos/IGosSystemService;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGosSystemService:Lcom/samsung/android/game/gos/IGosSystemService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/samsung/android/game/GameManagerService;Lcom/samsung/android/game/gos/IGosSystemService;)Lcom/samsung/android/game/gos/IGosSystemService;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;
    .param p1, "x1"    # Lcom/samsung/android/game/gos/IGosSystemService;

    .line 67
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService;->mGosSystemService:Lcom/samsung/android/game/gos/IGosSystemService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/game/GameManagerService;)V
    .registers 1
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->unbindService()V

    return-void
.end method

.method static synthetic access$1000(Lcom/samsung/android/game/GameManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->isMlPidModel()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/game/GameManagerService;)I
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    iget v0, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/samsung/android/game/GameManagerService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;
    .param p1, "x1"    # I

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/game/GameManagerService;->deleteAllGamePolicies(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/GosNotifyThread;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/PkgDataHelper;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/samsung/android/game/GameManagerService;Lcom/samsung/android/game/PkgDataHelper;)Lcom/samsung/android/game/PkgDataHelper;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;
    .param p1, "x1"    # Lcom/samsung/android/game/PkgDataHelper;

    .line 67
    iput-object p1, p0, Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/data/DatabaseHelper;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/game/GameManagerService;)Ljava/util/Map;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/game/GameManagerService;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/game/GameManagerService;)Landroid/app/ActivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mActivityManager:Landroid/app/ActivityManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/game/GameManagerService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mLockForGameServiceConn:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/game/GameManagerService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/game/GameManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    iget-boolean v0, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/samsung/android/game/GameManagerService;)Landroid/hardware/display/DisplayManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/game/GameManagerService;)Lcom/samsung/android/game/FgCheckThread;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/game/GameManagerService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/game/GameManagerService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;

    .line 67
    iget-boolean v0, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/samsung/android/game/GameManagerService;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/game/GameManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0, p1}, Lcom/samsung/android/game/GameManagerService;->checkPkgEnabledState(Ljava/lang/String;)V

    return-void
.end method

.method private bindService()Z
    .registers 7

    .line 1865
    const-string v0, "GameManager"

    const-string v1, "bindService(), begin."

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1866
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/game/gos/IGosSystemService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1867
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.game.gos"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1869
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mGosServiceConn:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    .line 1870
    .local v1, "isServiceBinded":Z
    const-string v2, "GameManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindService(), ret: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1872
    if-eqz v1, :cond_77

    .line 1874
    :try_start_48
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mLockForGameServiceConn:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4b
    .catch Ljava/lang/InterruptedException; {:try_start_48 .. :try_end_4b} :catch_57

    .line 1875
    :try_start_4b
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mLockForGameServiceConn:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V

    .line 1876
    monitor-exit v2

    .line 1880
    goto :goto_77

    .line 1876
    :catchall_54
    move-exception v3

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_54

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "isServiceBinded":Z
    .end local p0    # "this":Lcom/samsung/android/game/GameManagerService;
    :try_start_56
    throw v3
    :try_end_57
    .catch Ljava/lang/InterruptedException; {:try_start_56 .. :try_end_57} :catch_57

    .line 1877
    .restart local v0    # "intent":Landroid/content/Intent;
    .restart local v1    # "isServiceBinded":Z
    .restart local p0    # "this":Lcom/samsung/android/game/GameManagerService;
    :catch_57
    move-exception v2

    .line 1878
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1879
    const-string v3, "GameManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService(), "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_77
    :goto_77
    return v1
.end method

.method private checkPkgEnabledState(Ljava/lang/String;)V
    .registers 6
    .param p1, "reason"    # Ljava/lang/String;

    .line 1948
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    const-string v2, "com.samsung.android.game.gos"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/game/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    .line 1949
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    const-string v2, "com.samsung.android.game.gamehome"

    invoke-static {v0, v2, v1}, Lcom/samsung/android/game/Util;->isPkgEnabled(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z

    .line 1950
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.game.gametools"

    invoke-static {v0, v1}, Lcom/samsung/android/game/Util;->isPkgInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameBoosterInstalled:Z

    .line 1951
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    iget-boolean v2, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    iget-boolean v3, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z

    invoke-virtual {v1, v2, v3, v0}, Lcom/samsung/android/game/FgCheckThread;->setPkgEnabledState(ZZZ)V

    .line 1952
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Now checking pkgs enabled... "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "         mIsGosEnabled , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        mIsGameLauncherEnabled , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "        mIsGameBoosterInstalled , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameBoosterInstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1956
    return-void
.end method

.method private checkSettingPermission()Z
    .registers 11

    .line 1925
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1926
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1927
    .local v1, "uid":I
    const/4 v2, 0x1

    if-eqz v1, :cond_64

    const/16 v3, 0x3e8

    if-ne v1, v3, :cond_12

    goto :goto_64

    .line 1929
    :cond_12
    const/16 v3, 0x7d0

    const/4 v4, 0x0

    if-ne v1, v3, :cond_18

    .line 1930
    return v4

    .line 1932
    :cond_18
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 1933
    .local v3, "packages":[Ljava/lang/String;
    const-string v5, "GameManager"

    if-nez v3, :cond_37

    .line 1934
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "packages is null. uid: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    return v4

    .line 1937
    :cond_37
    array-length v6, v3

    move v7, v4

    :goto_39
    if-ge v7, v6, :cond_49

    aget-object v8, v3, v7

    .line 1938
    .local v8, "pkg":Ljava/lang/String;
    const-string v9, "android"

    invoke-virtual {v0, v9, v8}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1939
    .local v9, "match":I
    if-nez v9, :cond_46

    .line 1940
    return v2

    .line 1937
    .end local v8    # "pkg":Ljava/lang/String;
    .end local v9    # "match":I
    :cond_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    .line 1943
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSettingPermission(). no permission. "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    return v4

    .line 1928
    .end local v3    # "packages":[Ljava/lang/String;
    :cond_64
    :goto_64
    return v2
.end method

.method private clearGosBind()V
    .registers 6

    .line 1784
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGosSystemService:Lcom/samsung/android/game/gos/IGosSystemService;

    if-eqz v0, :cond_f

    .line 1785
    const-string v0, "GameManager"

    const-string v1, "clearGosBind(), start unbindService"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->unbindService()V

    goto :goto_1a

    .line 1789
    :cond_f
    const/16 v0, 0x1388

    .line 1790
    .local v0, "MSG_UNBIND_CHECK_DELAY_TIME":I
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x271c

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1792
    .end local v0    # "MSG_UNBIND_CHECK_DELAY_TIME":I
    :goto_1a
    return-void
.end method

.method private deleteAllGamePolicies(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 998
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 999
    .local v0, "packageConfigurations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/game/SemPackageConfiguration;>;"
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    invoke-virtual {v1, p1}, Lcom/samsung/android/game/PkgDataHelper;->getPkgDataSet(I)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/PkgData;

    .line 1000
    .local v2, "pkgData":Lcom/samsung/android/game/PkgData;
    if-eqz v2, :cond_59

    .line 1001
    invoke-virtual {v2}, Lcom/samsung/android/game/PkgData;->getPkgName()Ljava/lang/String;

    move-result-object v3

    .line 1002
    .local v3, "pkgName":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAllGamePolicies(). pkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "GameManager"

    invoke-static {v5, v4}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    new-instance v4, Lcom/samsung/android/game/SemPackageConfiguration;

    invoke-direct {v4, v3}, Lcom/samsung/android/game/SemPackageConfiguration;-><init>(Ljava/lang/String;)V

    .line 1005
    .local v4, "config":Lcom/samsung/android/game/SemPackageConfiguration;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/game/SemPackageConfiguration;->setUserId(Ljava/lang/String;)V

    .line 1006
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/samsung/android/game/SemPackageConfiguration;->setCategory(I)V

    .line 1007
    invoke-virtual {v4, v5}, Lcom/samsung/android/game/SemPackageConfiguration;->setCategoryByUser(I)V

    .line 1008
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1010
    .end local v2    # "pkgData":Lcom/samsung/android/game/PkgData;
    .end local v3    # "pkgName":Ljava/lang/String;
    .end local v4    # "config":Lcom/samsung/android/game/SemPackageConfiguration;
    :cond_59
    goto :goto_f

    .line 1011
    :cond_5a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/samsung/android/game/SemPackageConfiguration;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/samsung/android/game/SemPackageConfiguration;

    .line 1012
    .local v1, "configArray":[Lcom/samsung/android/game/SemPackageConfiguration;
    invoke-direct {p0, v1}, Lcom/samsung/android/game/GameManagerService;->sendPackageDataToSdhms([Lcom/samsung/android/game/SemPackageConfiguration;)V

    .line 1014
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/game/data/DatabaseHelper;->removeUser(I)V

    .line 1015
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    invoke-virtual {v2, p1}, Lcom/samsung/android/game/PkgDataHelper;->removeUser(I)V

    .line 1016
    return-void
.end method

.method private dumpActionLogs(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1589
    const-string v0, "\nAction Log:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1590
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    invoke-virtual {v0}, Lcom/samsung/android/game/data/DatabaseHelper;->dumpAllActionLogs()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1591
    return-void
.end method

.method private dumpGameManagerState(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1691
    const-string v0, "\nGOS GOS DUMP"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1693
    const-string v0, "GameManager state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1694
    const-string v0, "  SERVICE_VERSION: 130.016"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSiopMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/GameManagerService;->mSiopMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mObservers count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v1}, Lcom/samsung/android/game/FgCheckThread;->getRegisteredCallbackCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsGosEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsGameLauncherEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameLauncherEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1699
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsGameBoosterInstalled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/game/GameManagerService;->mIsGameBoosterInstalled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  WifiManager.allowAutojoinGlobal() called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1}, Lcom/samsung/android/game/SystemHelper;->getBlockState()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1}, Lcom/samsung/android/game/SystemHelper;->getLastBlockTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/samsung/android/game/Util;->getDateFormattedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisabledVrrControlList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1702
    return-void
.end method

.method private dumpGos(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1594
    iget-boolean v0, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    if-eqz v0, :cond_22

    .line 1595
    const-string v0, "GameManager"

    const-string v1, "dumpGos(). GameOptimizer exists."

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1596
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mGosSystemService:Lcom/samsung/android/game/gos/IGosSystemService;

    if-nez v1, :cond_12

    .line 1597
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->bindService()Z

    .line 1599
    :cond_12
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mGosSystemService:Lcom/samsung/android/game/gos/IGosSystemService;

    if-eqz v1, :cond_1d

    .line 1600
    invoke-direct {p0, p1}, Lcom/samsung/android/game/GameManagerService;->dumpGosDB(Ljava/io/PrintWriter;)V

    .line 1601
    invoke-direct {p0, p1}, Lcom/samsung/android/game/GameManagerService;->dumpGosState(Ljava/io/PrintWriter;)V

    goto :goto_22

    .line 1603
    :cond_1d
    const-string v1, "dumpGos(), mGosService is null, cannot print GOS data"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    :cond_22
    :goto_22
    return-void
.end method

.method private dumpGosDB(Ljava/io/PrintWriter;)V
    .registers 12
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1611
    const-string v0, "string_array_length"

    :try_start_2
    const-string v1, "*** GameOptimizer dump starts ***"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1613
    const/4 v1, 0x1

    .line 1614
    .local v1, "stringArrayLength":I
    const/4 v2, 0x0

    .line 1615
    .local v2, "index":I
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1616
    .local v3, "requestJson":Lorg/json/JSONObject;
    :goto_e
    if-ge v2, v1, :cond_4c

    .line 1617
    const-string v4, "index"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1619
    iget-object v4, p0, Lcom/samsung/android/game/GameManagerService;->mGosSystemService:Lcom/samsung/android/game/gos/IGosSystemService;

    const-string v5, "get_encoded_database"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/samsung/android/game/gos/IGosSystemService;->requestOnlyForDumpOrTest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1620
    .local v4, "response":Ljava/lang/String;
    if-nez v4, :cond_24

    .line 1621
    goto :goto_4c

    .line 1622
    :cond_24
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1623
    .local v5, "responseJson":Lorg/json/JSONObject;
    const-string v6, "response_index"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1624
    .local v6, "responseIndex":I
    const-string v7, "contents"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1625
    .local v7, "content":Ljava/lang/String;
    move-object v8, v0

    .line 1626
    .local v8, "STRING_ARRAY_LENGTH":Ljava/lang/String;
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_41

    .line 1627
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    move v1, v9

    .line 1629
    :cond_41
    if-ne v2, v6, :cond_4c

    if-eqz v7, :cond_4c

    .line 1630
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1634
    nop

    .end local v4    # "response":Ljava/lang/String;
    .end local v5    # "responseJson":Lorg/json/JSONObject;
    .end local v6    # "responseIndex":I
    .end local v7    # "content":Ljava/lang/String;
    .end local v8    # "STRING_ARRAY_LENGTH":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 1635
    goto :goto_e

    .line 1637
    :cond_4c
    :goto_4c
    const-string v0, "\n*** GameOptimizer dump ends ***"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_51
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_51} :catch_52
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_51} :catch_52
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_51} :catch_52

    .line 1642
    .end local v1    # "stringArrayLength":I
    .end local v2    # "index":I
    .end local v3    # "requestJson":Lorg/json/JSONObject;
    goto :goto_77

    .line 1638
    :catch_52
    move-exception v0

    .line 1639
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1640
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1641
    const-string v1, "*** GameOptimizer dump failed ***\n"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1643
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_77
    return-void
.end method

.method private dumpGosState(Ljava/io/PrintWriter;)V
    .registers 22
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1647
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "gms_log"

    const-string v4, "last_fully_update_time"

    const-string v0, "jdm"

    const-string v5, "last_update_time"

    const-string v6, "is_device_supported_by_server"

    const-string v7, "device_name"

    const-string v8, "GameManager"

    :try_start_12
    iget-object v9, v1, Lcom/samsung/android/game/GameManagerService;->mGosSystemService:Lcom/samsung/android/game/gos/IGosSystemService;

    const-string v10, "get_global_data"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Lcom/samsung/android/game/gos/IGosSystemService;->requestOnlyForDumpOrTest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1648
    .local v9, "response":Ljava/lang/String;
    if-eqz v9, :cond_162

    .line 1649
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v9}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1651
    .local v10, "responseJson":Lorg/json/JSONObject;
    const-string v11, "\nGameOptimizer state"

    invoke-virtual {v2, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1652
    iget-object v11, v1, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_2d} :catch_165
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_2d} :catch_165

    .line 1653
    .local v11, "pm":Landroid/content/pm/PackageManager;
    if-eqz v11, :cond_aa

    .line 1655
    :try_start_2f
    const-string v12, "com.samsung.android.game.gos"

    const/16 v13, 0x80

    invoke-virtual {v11, v12, v13}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 1656
    .local v12, "pi":Landroid/content/pm/PackageInfo;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "  VersionName: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v12, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1657
    invoke-virtual {v12}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v13

    const-wide/16 v15, 0x3e8

    div-long/2addr v13, v15

    const-wide/16 v15, 0x64

    rem-long/2addr v13, v15

    .line 1658
    .local v13, "gosType":J
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-nez v15, :cond_62

    const/16 v15, 0x58

    goto :goto_64

    :cond_62
    const/16 v15, 0x4f

    .line 1660
    .local v15, "isGosLite":C
    :goto_64
    move-object/from16 v16, v0

    .line 1661
    .local v16, "DEVICE_TYPE":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2f .. :try_end_6b} :catch_a1
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_6b} :catch_165
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_6b} :catch_165

    move-object/from16 v17, v9

    .end local v9    # "response":Ljava/lang/String;
    .local v17, "response":Ljava/lang/String;
    :try_start_6d
    const-string v9, "  VersionCode: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-wide/from16 v18, v13

    .end local v13    # "gosType":J
    .local v18, "gosType":J
    invoke-virtual {v12}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " (GOS Lite: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", Device Type: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6d .. :try_end_9e} :catch_9f
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_9e} :catch_165
    .catch Lorg/json/JSONException; {:try_start_6d .. :try_end_9e} :catch_165

    .line 1664
    .end local v12    # "pi":Landroid/content/pm/PackageInfo;
    .end local v15    # "isGosLite":C
    .end local v16    # "DEVICE_TYPE":Ljava/lang/String;
    .end local v18    # "gosType":J
    goto :goto_ac

    .line 1662
    :catch_9f
    move-exception v0

    goto :goto_a4

    .end local v17    # "response":Ljava/lang/String;
    .restart local v9    # "response":Ljava/lang/String;
    :catch_a1
    move-exception v0

    move-object/from16 v17, v9

    .line 1663
    .end local v9    # "response":Ljava/lang/String;
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v17    # "response":Ljava/lang/String;
    :goto_a4
    :try_start_a4
    const-string v1, "dump(), com.samsung.android.game.gos does not exist in PackageInfo."

    invoke-static {v8, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ac

    .line 1653
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v17    # "response":Ljava/lang/String;
    .restart local v9    # "response":Ljava/lang/String;
    :cond_aa
    move-object/from16 v17, v9

    .line 1666
    .end local v9    # "response":Ljava/lang/String;
    .restart local v17    # "response":Ljava/lang/String;
    :goto_ac
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cc

    .line 1667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  DeviceNameFromGOS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1669
    :cond_cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  ModelName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1670
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_104

    .line 1671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  SupportedByServer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1673
    :cond_104
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_128

    .line 1674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LastUpdateTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/samsung/android/game/Util;->getDateFormattedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1675
    :cond_128
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14c

    .line 1676
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  LastFullyUpdateTime: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/samsung/android/game/Util;->getDateFormattedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    :cond_14c
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_164

    .line 1678
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1679
    .local v0, "gmsLog":Ljava/lang/String;
    if-eqz v0, :cond_164

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_164

    .line 1680
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_161
    .catch Landroid/os/RemoteException; {:try_start_a4 .. :try_end_161} :catch_165
    .catch Lorg/json/JSONException; {:try_start_a4 .. :try_end_161} :catch_165

    goto :goto_164

    .line 1648
    .end local v0    # "gmsLog":Ljava/lang/String;
    .end local v10    # "responseJson":Lorg/json/JSONObject;
    .end local v11    # "pm":Landroid/content/pm/PackageManager;
    .end local v17    # "response":Ljava/lang/String;
    .restart local v9    # "response":Ljava/lang/String;
    :cond_162
    move-object/from16 v17, v9

    .line 1687
    .end local v9    # "response":Ljava/lang/String;
    :cond_164
    :goto_164
    goto :goto_183

    .line 1684
    :catch_165
    move-exception v0

    .line 1685
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dump(), "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_183
    return-void
.end method

.method private dumpPackageData(Ljava/io/PrintWriter;)V
    .registers 21
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1705
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1706
    .local v2, "gameHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1707
    .local v3, "tunableAppSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/android/game/PkgData;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1708
    .local v4, "secGameFamilySet":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/android/game/PkgData;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 1709
    .local v5, "othersSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/samsung/android/game/PkgData;>;"
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 1710
    invoke-virtual {v6}, Lcom/samsung/android/game/PkgDataHelper;->getPkgNameUserIdMap()Ljava/util/HashMap;

    move-result-object v6

    .line 1711
    .local v6, "gameMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Integer;>;>;"
    iget-object v7, v0, Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    iget v8, v0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/game/PkgDataHelper;->getPkgDataSet(I)Ljava/util/Collection;

    move-result-object v7

    .line 1712
    .local v7, "pkgDataSet":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/game/PkgData;>;"
    const/4 v8, 0x1

    if-eqz v7, :cond_64

    .line 1713
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_31
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5f

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/samsung/android/game/PkgData;

    .line 1714
    .local v10, "pkgData":Lcom/samsung/android/game/PkgData;
    if-eqz v10, :cond_5e

    .line 1715
    invoke-virtual {v10}, Lcom/samsung/android/game/PkgData;->getCategory()I

    move-result v11

    .line 1716
    .local v11, "category":I
    if-ne v11, v8, :cond_4d

    .line 1717
    invoke-virtual {v10}, Lcom/samsung/android/game/PkgData;->getPkgName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5e

    .line 1718
    :cond_4d
    const/4 v12, 0x2

    if-ne v11, v12, :cond_54

    .line 1719
    invoke-interface {v3, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 1720
    :cond_54
    const/4 v12, 0x3

    if-ne v11, v12, :cond_5b

    .line 1721
    invoke-interface {v4, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 1723
    :cond_5b
    invoke-interface {v5, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1725
    .end local v10    # "pkgData":Lcom/samsung/android/game/PkgData;
    .end local v11    # "category":I
    :cond_5e
    :goto_5e
    goto :goto_31

    .line 1727
    :cond_5f
    const-string v9, "\nPackage Data:"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1729
    :cond_64
    iget-object v9, v0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v9

    .line 1730
    .local v9, "secureFolderID":I
    const/16 v10, 0x96

    if-lt v9, v10, :cond_98

    const/16 v10, 0xa0

    if-gt v9, v10, :cond_98

    .line 1731
    iget-object v10, v0, Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    invoke-virtual {v10, v9}, Lcom/samsung/android/game/PkgDataHelper;->getPkgDataSet(I)Ljava/util/Collection;

    move-result-object v10

    .line 1732
    .local v10, "secureFolderPkgDataSet":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/game/PkgData;>;"
    if-eqz v10, :cond_98

    .line 1733
    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_7e
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_98

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/samsung/android/game/PkgData;

    .line 1734
    .local v12, "pkgData":Lcom/samsung/android/game/PkgData;
    invoke-virtual {v12}, Lcom/samsung/android/game/PkgData;->getCategory()I

    move-result v13

    .line 1735
    .local v13, "category":I
    if-ne v13, v8, :cond_97

    .line 1736
    invoke-virtual {v12}, Lcom/samsung/android/game/PkgData;->getPkgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1737
    .end local v12    # "pkgData":Lcom/samsung/android/game/PkgData;
    .end local v13    # "category":I
    :cond_97
    goto :goto_7e

    .line 1741
    .end local v10    # "secureFolderPkgDataSet":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/samsung/android/game/PkgData;>;"
    :cond_98
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_12b

    .line 1742
    const-string v10, "  Game:"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1743
    const-string v10, "    UserId    DSS     GTC      GameSDK     PackageName"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1744
    const-string v10, "    ----------------------------------------------------------------"

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1745
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1746
    .local v10, "strUserIdBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_ba
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_128

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 1747
    .local v12, "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/game/PkgData;

    .line 1748
    .local v13, "pkgData":Lcom/samsung/android/game/PkgData;
    invoke-virtual {v13}, Lcom/samsung/android/game/PkgData;->getPkgName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 1749
    .local v14, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v15, 0x0

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1750
    const-string v15, "    "

    invoke-virtual {v1, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1751
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_e0
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v8

    if-ge v15, v8, :cond_10a

    .line 1752
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1753
    .local v8, "id":I
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1754
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    move-object/from16 v18, v2

    const/16 v16, 0x1

    .end local v2    # "gameHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    .local v18, "gameHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    add-int/lit8 v2, v17, -0x1

    if-ge v15, v2, :cond_104

    .line 1755
    const-string v2, ", "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    .end local v8    # "id":I
    :cond_104
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, v18

    const/4 v8, 0x1

    goto :goto_e0

    .end local v18    # "gameHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    .restart local v2    # "gameHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    :cond_10a
    move-object/from16 v18, v2

    .line 1758
    .end local v2    # "gameHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    .end local v15    # "i":I
    .restart local v18    # "gameHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v10, v8, v15

    const-string v2, "%-10s"

    invoke-static {v2, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v8, v15, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 1759
    invoke-direct {v0, v13}, Lcom/samsung/android/game/GameManagerService;->getGamePkgDataDump(Lcom/samsung/android/game/PkgData;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1760
    .end local v12    # "data":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    .end local v13    # "pkgData":Lcom/samsung/android/game/PkgData;
    .end local v14    # "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v2, v18

    const/4 v8, 0x1

    goto :goto_ba

    .line 1746
    .end local v18    # "gameHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    .restart local v2    # "gameHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    :cond_128
    move-object/from16 v18, v2

    .end local v2    # "gameHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    .restart local v18    # "gameHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    goto :goto_12d

    .line 1741
    .end local v10    # "strUserIdBuilder":Ljava/lang/StringBuilder;
    .end local v18    # "gameHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    .restart local v2    # "gameHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    :cond_12b
    move-object/from16 v18, v2

    .line 1763
    .end local v2    # "gameHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    .restart local v18    # "gameHash":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/samsung/android/game/PkgData;>;"
    :goto_12d
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_150

    .line 1764
    const-string v2, "  TunableApp:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1765
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_150

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/game/PkgData;

    .local v8, "pkgData":Lcom/samsung/android/game/PkgData;
    invoke-direct {v0, v8}, Lcom/samsung/android/game/GameManagerService;->getNonGamePkgDataDump(Lcom/samsung/android/game/PkgData;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v8    # "pkgData":Lcom/samsung/android/game/PkgData;
    goto :goto_13c

    .line 1767
    :cond_150
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_173

    .line 1768
    const-string v2, "  SecGameFamily:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1769
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_173

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/game/PkgData;

    .restart local v8    # "pkgData":Lcom/samsung/android/game/PkgData;
    invoke-direct {v0, v8}, Lcom/samsung/android/game/GameManagerService;->getNonGamePkgDataDump(Lcom/samsung/android/game/PkgData;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v8    # "pkgData":Lcom/samsung/android/game/PkgData;
    goto :goto_15f

    .line 1771
    :cond_173
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_196

    .line 1772
    const-string v2, "  Others:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1773
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_182
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_196

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/game/PkgData;

    .restart local v8    # "pkgData":Lcom/samsung/android/game/PkgData;
    invoke-direct {v0, v8}, Lcom/samsung/android/game/GameManagerService;->getNonGamePkgDataDump(Lcom/samsung/android/game/PkgData;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .end local v8    # "pkgData":Lcom/samsung/android/game/PkgData;
    goto :goto_182

    .line 1775
    :cond_196
    return-void
.end method

.method private getActionLogPkgData(Lcom/samsung/android/game/PkgData;)Ljava/lang/String;
    .registers 6
    .param p1, "pkgData"    # Lcom/samsung/android/game/PkgData;

    .line 1840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1841
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_c

    .line 1842
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1845
    :cond_c
    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getCategory()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c7

    .line 1846
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    if-eqz v1, :cond_41

    .line 1847
    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/DssController;->getDssForPackage(Ljava/lang/String;)F

    move-result v1

    .line 1848
    .local v1, "dss":F
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_2b

    .line 1849
    const-string v2, "DSS OFF"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_41

    .line 1851
    :cond_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DSS: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1854
    .end local v1    # "dss":F
    :cond_41
    :goto_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", GTC: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getCpuLevel()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getGpuLevel()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getShiftTemperature()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1855
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", GameSDK: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getCpuMinPercent()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getGpuMinPercent()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->isGameSdkSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1856
    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getGovernorSetting()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c7

    .line 1857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", GovernorSetting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getGovernorSetting()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1861
    :cond_c7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getAvailableRefreshRateList()Ljava/lang/String;
    .registers 12

    .line 606
    const-string v0, "GameManager"

    const/4 v1, 0x0

    .line 609
    .local v1, "response":Ljava/lang/String;
    :try_start_3
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    .line 610
    .local v2, "display":Landroid/view/Display;
    new-instance v4, Landroid/view/DisplayInfo;

    invoke-direct {v4}, Landroid/view/DisplayInfo;-><init>()V

    .line 612
    .local v4, "displayInfo":Landroid/view/DisplayInfo;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 614
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 615
    .local v5, "refreshRateModeIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Float;Ljava/lang/Integer;>;"
    iget-object v6, v4, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v7, v6

    :goto_1a
    if-ge v3, v7, :cond_42

    aget-object v8, v6, v3

    .line 616
    .local v8, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3f

    .line 617
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getModeId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    .end local v8    # "mode":Landroid/view/Display$Mode;
    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 620
    :cond_42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAvailableRefreshRateList()-modes from getDisplayInfo(): "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 623
    .local v3, "jsonArray":Lorg/json/JSONArray;
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_69
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_92

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 624
    .local v7, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Ljava/lang/Integer;>;"
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7a} :catch_a2

    .line 626
    .local v8, "json":Lorg/json/JSONObject;
    :try_start_7a
    const-string v9, "value_float_1"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 627
    const-string v9, "value_int_1"

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 629
    invoke-virtual {v3, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_8f
    .catch Lorg/json/JSONException; {:try_start_7a .. :try_end_8f} :catch_90
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_8f} :catch_a2

    .line 631
    goto :goto_91

    .line 630
    :catch_90
    move-exception v9

    .line 632
    .end local v7    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Float;Ljava/lang/Integer;>;"
    .end local v8    # "json":Lorg/json/JSONObject;
    :goto_91
    goto :goto_69

    .line 634
    :cond_92
    :try_start_92
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 635
    .local v6, "responseJson":Lorg/json/JSONObject;
    const-string v7, "value_array_1"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 636
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a0} :catch_a2

    move-object v1, v0

    .line 640
    .end local v2    # "display":Landroid/view/Display;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "displayInfo":Landroid/view/DisplayInfo;
    .end local v5    # "refreshRateModeIdMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Float;Ljava/lang/Integer;>;"
    .end local v6    # "responseJson":Lorg/json/JSONObject;
    goto :goto_b9

    .line 638
    :catch_a2
    move-exception v2

    .line 639
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAvailableRefreshRateList()-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_b9
    return-object v1
.end method

.method private getGameListAsUser(I)Ljava/util/List;
    .registers 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGameListAsUser(): mCurrentUserId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 395
    .local v0, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 396
    invoke-virtual {v1, p1}, Lcom/samsung/android/game/PkgDataHelper;->getPkgDataSet(I)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/PkgData;

    .line 397
    .local v2, "pkgData":Lcom/samsung/android/game/PkgData;
    if-eqz v2, :cond_53

    .line 398
    invoke-virtual {v2}, Lcom/samsung/android/game/PkgData;->getCategory()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_53

    .line 399
    invoke-virtual {v2}, Lcom/samsung/android/game/PkgData;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 401
    .end local v2    # "pkgData":Lcom/samsung/android/game/PkgData;
    :cond_53
    goto :goto_37

    .line 402
    :cond_54
    return-object v0
.end method

.method private getGamePkgDataDump(Lcom/samsung/android/game/PkgData;)Ljava/lang/String;
    .registers 10
    .param p1, "pkgData"    # Lcom/samsung/android/game/PkgData;

    .line 1806
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1807
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_c

    .line 1808
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1812
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    .line 1813
    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/DssController;->getDssForPackage(Ljava/lang/String;)F

    move-result v1

    .line 1814
    .local v1, "dss":F
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v1, v4

    if-nez v4, :cond_26

    .line 1815
    const-string v4, "OFF     "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 1817
    :cond_26
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v6, "%.4f  "

    invoke-static {v4, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1819
    .end local v1    # "dss":F
    :goto_39
    goto :goto_3f

    .line 1820
    :cond_3a
    const-string v1, "        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    :goto_3f
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getCpuLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getGpuLevel()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getShiftTemperature()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    const-string v6, "%2d/%2d/%2d "

    invoke-static {v1, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1827
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getCpuMinPercent()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getGpuMinPercent()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->isGameSdkSupported()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v4, v7

    const-string v2, "%2d/%2d/%-5b "

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1830
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1832
    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getGovernorSetting()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_bd

    .line 1833
    const-string v1, " GovernorSetting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getGovernorSetting()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1836
    :cond_bd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNonGamePkgDataDump(Lcom/samsung/android/game/PkgData;)Ljava/lang/String;
    .registers 5
    .param p1, "pkgData"    # Lcom/samsung/android/game/PkgData;

    .line 1795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1796
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez p1, :cond_c

    .line 1797
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1801
    :cond_c
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/game/PkgData;->getPkgName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1802
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isMlPidModel()Z
    .registers 3

    .line 1257
    const-string v0, "dev.ssrm.gamelevel"

    const-string v1, "null"

    invoke-static {v0, v1}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1258
    .local v0, "propValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isVariableRefreshRateSupported()Ljava/lang/String;
    .registers 3

    .line 595
    const/4 v0, 0x0

    .line 599
    .local v0, "response":Ljava/lang/String;
    const-string v1, "1"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 600
    .local v1, "isVrrSupported":Z
    :goto_c
    invoke-direct {p0, v1}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v0

    .line 602
    return-object v0
.end method

.method private printAllDssInfoToLogcat()V
    .registers 2

    .line 1778
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    if-eqz v0, :cond_7

    .line 1779
    invoke-virtual {v0}, Lcom/android/server/DssController;->showAllDSSInfo()V

    .line 1781
    :cond_7
    return-void
.end method

.method private printPkgMapToActionLog(Ljava/util/Map;)V
    .registers 6
    .param p1, "pkgMap"    # Ljava/util/Map;

    .line 448
    if-nez p1, :cond_3

    return-void

    .line 450
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "pkgMapArray":[Ljava/lang/String;
    if-eqz v0, :cond_28

    array-length v1, v0

    if-lez v1, :cond_28

    .line 452
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    sget-object v2, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->INI_GMS:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/game/ActionLogger;->addActionLogs(Lcom/samsung/android/game/ActionLogger$ActionLogTag;[Ljava/lang/String;)V

    goto :goto_31

    .line 454
    :cond_28
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    sget-object v2, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->INI_GMS:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    const-string v3, "  pkgMapArray is null or its length is 0."

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/game/ActionLogger;->addActionLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J

    .line 456
    :goto_31
    return-void
.end method

.method private putBoolToStrJson(Z)Ljava/lang/String;
    .registers 4
    .param p1, "value"    # Z

    .line 729
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 731
    .local v0, "responseJson":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "value_bool_1"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_a} :catch_b

    .line 734
    goto :goto_f

    .line 732
    :catch_b
    move-exception v1

    .line 733
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 735
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_f
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private requestToRemoveRefreshRate(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 691
    const-string v0, "package_name_list"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestToRemoveRefreshRate(), jsonParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 692
    .local v1, "log":Ljava/lang/String;
    const-string v2, "GameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    sget-object v4, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->DEL_VRR:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    invoke-virtual {v3, v4, v1}, Lcom/samsung/android/game/ActionLogger;->addActionLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J

    .line 695
    if-nez p1, :cond_25

    const/4 v0, 0x0

    return-object v0

    .line 698
    :cond_25
    const/4 v3, 0x0

    :try_start_26
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 700
    .local v4, "requestJson":Lorg/json/JSONObject;
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_36

    .line 701
    invoke-direct {p0, v3}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 703
    :cond_36
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 704
    .local v0, "pkgNameCsv":Ljava/lang/String;
    invoke-static {v0}, Lcom/samsung/android/game/Util;->csvToStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 706
    .local v5, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_a1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_48

    goto :goto_a1

    .line 710
    :cond_48
    const-class v6, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v6}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowManagerInternal;

    .line 711
    .local v6, "wmi":Lcom/android/server/wm/WindowManagerInternal;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_54
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 712
    .local v9, "pkgName":Ljava/lang/String;
    iget-object v10, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    if-eqz v10, :cond_71

    if-eqz v9, :cond_71

    invoke-interface {v10, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_71

    .line 713
    iget-object v10, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    :cond_71
    iget-object v10, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    if-eqz v10, :cond_98

    invoke-interface {v10, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_98

    .line 716
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "requestToRemoveRefreshRate(), "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " disabled by GameSDK"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v2, v10}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    goto :goto_54

    .line 719
    :cond_98
    invoke-virtual {v6, v9}, Lcom/android/server/wm/WindowManagerInternal;->removeFixedRefreshRatePackageInternal(Ljava/lang/String;)V

    .line 720
    .end local v9    # "pkgName":Ljava/lang/String;
    goto :goto_54

    .line 721
    :cond_9c
    invoke-direct {p0, v7}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 707
    .end local v6    # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    :cond_a1
    :goto_a1
    invoke-direct {p0, v3}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v2
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_a5} :catch_a6

    return-object v2

    .line 722
    .end local v0    # "pkgNameCsv":Ljava/lang/String;
    .end local v4    # "requestJson":Lorg/json/JSONObject;
    .end local v5    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_a6
    move-exception v0

    .line 723
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "requestToRemoveRefreshRate()-remote exception"

    invoke-static {v2, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v3}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private requestToSetRefreshRate(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "jsonParam"    # Ljava/lang/String;

    .line 645
    const-string v0, "display_mode_id_list"

    const-string v1, "package_name_list"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestToSetRefreshRate(), jsonParam: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 646
    .local v2, "log":Ljava/lang/String;
    const-string v3, "GameManager"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    iget-object v4, p0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    sget-object v5, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_VRR:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/game/ActionLogger;->addActionLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J

    .line 649
    if-nez p1, :cond_27

    const/4 v0, 0x0

    return-object v0

    .line 652
    :cond_27
    const/4 v4, 0x0

    :try_start_28
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 654
    .local v5, "requestJson":Lorg/json/JSONObject;
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_be

    .line 655
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3b

    goto/16 :goto_be

    .line 658
    :cond_3b
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 659
    .local v1, "pkgNameCsv":Ljava/lang/String;
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 660
    .local v0, "displayModeIdCsv":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/game/Util;->csvToStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 661
    .local v6, "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lcom/samsung/android/game/Util;->csvToStringList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 664
    .local v7, "displayModeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v6, :cond_b9

    if-eqz v7, :cond_b9

    .line 665
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-eq v8, v9, :cond_5a

    goto :goto_b9

    .line 669
    :cond_5a
    const-class v8, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v8}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowManagerInternal;

    .line 670
    .local v8, "wmi":Lcom/android/server/wm/WindowManagerInternal;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_63
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_b3

    .line 671
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 672
    .local v10, "pkgName":Ljava/lang/String;
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 673
    .local v11, "displayModeId":I
    iget-object v12, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    if-eqz v12, :cond_86

    if-eqz v10, :cond_86

    .line 674
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v10, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    :cond_86
    iget-object v12, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    if-eqz v12, :cond_ad

    invoke-interface {v12, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ad

    .line 677
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "requestToSetRefreshRate(), "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " disabled by GameSDK"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    goto :goto_b0

    .line 680
    :cond_ad
    invoke-virtual {v8, v10, v11}, Lcom/android/server/wm/WindowManagerInternal;->addFixedRefreshRatePackageInternal(Ljava/lang/String;I)V

    .line 670
    .end local v10    # "pkgName":Ljava/lang/String;
    .end local v11    # "displayModeId":I
    :goto_b0
    add-int/lit8 v9, v9, 0x1

    goto :goto_63

    .line 683
    .end local v9    # "i":I
    :cond_b3
    const/4 v9, 0x1

    invoke-direct {p0, v9}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 666
    .end local v8    # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    :cond_b9
    :goto_b9
    invoke-direct {p0, v4}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 656
    .end local v0    # "displayModeIdCsv":Ljava/lang/String;
    .end local v1    # "pkgNameCsv":Ljava/lang/String;
    .end local v6    # "pkgNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "displayModeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_be
    :goto_be
    invoke-direct {p0, v4}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v0
    :try_end_c2
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_c2} :catch_c3

    return-object v0

    .line 684
    .end local v5    # "requestJson":Lorg/json/JSONObject;
    :catch_c3
    move-exception v0

    .line 685
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "requestToSetRefreshRate()-remote exception"

    invoke-static {v3, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    .end local v0    # "e":Ljava/lang/Exception;
    invoke-direct {p0, v4}, Lcom/samsung/android/game/GameManagerService;->putBoolToStrJson(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private respondWithJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "jsonParam"    # Ljava/lang/String;

    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, "response":Ljava/lang/String;
    if-nez p1, :cond_5

    const/4 v1, 0x0

    return-object v1

    .line 526
    :cond_5
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    sparse-switch v2, :sswitch_data_1aa

    :cond_f
    goto/16 :goto_ee

    :sswitch_11
    const-string v2, "boost_acquire"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v1, 0xa

    goto/16 :goto_ee

    :sswitch_1d
    const-string v2, "set_threads_affinities"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v1, 0xf

    goto/16 :goto_ee

    :sswitch_29
    const-string v2, "set_render_thread_affinity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x3

    goto/16 :goto_ee

    :sswitch_34
    const-string v2, "request_to_set_refresh_rate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x7

    goto/16 :goto_ee

    :sswitch_3f
    const-string v2, "get_sysfs_data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v1, v3

    goto/16 :goto_ee

    :sswitch_4a
    const-string v2, "unset_render_thread_affinity"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x4

    goto/16 :goto_ee

    :sswitch_55
    const-string v2, "get_thread_names"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v1, 0x12

    goto/16 :goto_ee

    :sswitch_61
    const-string v2, "boost_release"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v1, 0xb

    goto/16 :goto_ee

    :sswitch_6d
    const-string v2, "get_pid_uid"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x2

    goto/16 :goto_ee

    :sswitch_78
    const-string v2, "write_file"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v1, 0x9

    goto/16 :goto_ee

    :sswitch_84
    const-string v2, "get_network_stats"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    move v1, v4

    goto :goto_ee

    :sswitch_8e
    const-string v2, "boost_set_dvfs_value"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v1, 0xc

    goto :goto_ee

    :sswitch_99
    const-string v2, "get_available_refresh_rate_list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x6

    goto :goto_ee

    :sswitch_a3
    const-string v2, "is_variable_refresh_rate_supported"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v1, 0x5

    goto :goto_ee

    :sswitch_ad
    const-string v2, "set_thread_affinity_littlecore"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v1, 0xe

    goto :goto_ee

    :sswitch_b8
    const-string v2, "get_thread_info"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v1, 0x13

    goto :goto_ee

    :sswitch_c3
    const-string v2, "get_thread_data"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v1, 0x10

    goto :goto_ee

    :sswitch_ce
    const-string v2, "request_to_remove_refresh_rate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v1, 0x8

    goto :goto_ee

    :sswitch_d9
    const-string v2, "control_wifi_switch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v1, 0x11

    goto :goto_ee

    :sswitch_e4
    const-string v2, "set_thread_affinity_bigcore"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/16 v1, 0xd

    :goto_ee
    packed-switch v1, :pswitch_data_1fc

    goto/16 :goto_17c

    .line 585
    :pswitch_f3
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->getThreadInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    goto/16 :goto_17c

    .line 582
    :pswitch_fb
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->getThreadNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 583
    goto/16 :goto_17c

    .line 579
    :pswitch_103
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->callEnableWifiSwitch(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 580
    goto/16 :goto_17c

    .line 576
    :pswitch_10b
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->getThreadData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 577
    goto/16 :goto_17c

    .line 573
    :pswitch_113
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->setThreadsAffinities(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 574
    goto/16 :goto_17c

    .line 570
    :pswitch_11b
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, v3, p2}, Lcom/samsung/android/game/SystemHelper;->setThreadAffinity(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 571
    goto :goto_17c

    .line 567
    :pswitch_122
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, v4, p2}, Lcom/samsung/android/game/SystemHelper;->setThreadAffinity(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 568
    goto :goto_17c

    .line 564
    :pswitch_129
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mApBooster:Lcom/samsung/android/game/ApBooster;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/ApBooster;->callSetDvfsValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 565
    goto :goto_17c

    .line 561
    :pswitch_130
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mApBooster:Lcom/samsung/android/game/ApBooster;

    invoke-virtual {v1}, Lcom/samsung/android/game/ApBooster;->callRelease()Ljava/lang/String;

    move-result-object v0

    .line 562
    goto :goto_17c

    .line 558
    :pswitch_137
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mApBooster:Lcom/samsung/android/game/ApBooster;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/ApBooster;->callAcquire(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 559
    goto :goto_17c

    .line 555
    :pswitch_13e
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->writeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 556
    goto :goto_17c

    .line 552
    :pswitch_145
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->requestToRemoveRefreshRate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    goto :goto_17c

    .line 549
    :pswitch_14a
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->requestToSetRefreshRate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 550
    goto :goto_17c

    .line 546
    :pswitch_14f
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->getAvailableRefreshRateList()Ljava/lang/String;

    move-result-object v0

    .line 547
    goto :goto_17c

    .line 543
    :pswitch_154
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->isVariableRefreshRateSupported()Ljava/lang/String;

    move-result-object v0

    .line 544
    goto :goto_17c

    .line 540
    :pswitch_159
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->unsetRenderThreadAffinity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 541
    goto :goto_17c

    .line 537
    :pswitch_160
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->setRenderThreadAffinity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 538
    goto :goto_17c

    .line 534
    :pswitch_167
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->getPidUidFromPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 535
    goto :goto_17c

    .line 531
    :pswitch_16e
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->getNetworkStats(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 532
    goto :goto_17c

    .line 528
    :pswitch_175
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mSystemHelper:Lcom/samsung/android/game/SystemHelper;

    invoke-virtual {v1, p2}, Lcom/samsung/android/game/SystemHelper;->getSysFsDataWithJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    nop

    .line 590
    :goto_17c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "respondWithJson. command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\njsonParam : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nresponse : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    return-object v0

    nop

    :sswitch_data_1aa
    .sparse-switch
        -0x6ebf06c0 -> :sswitch_e4
        -0x6c388c44 -> :sswitch_d9
        -0x613d8875 -> :sswitch_ce
        -0x5ada92aa -> :sswitch_c3
        -0x5ad81da6 -> :sswitch_b8
        -0x592fd4ac -> :sswitch_ad
        -0x4acd77ff -> :sswitch_a3
        -0x44e69d26 -> :sswitch_99
        -0x3f3d99d6 -> :sswitch_8e
        -0x286585db -> :sswitch_84
        -0x25f09624 -> :sswitch_78
        -0x1ddb984d -> :sswitch_6d
        -0x13166095 -> :sswitch_61
        0x150f1c -> :sswitch_55
        0xb4508ea -> :sswitch_4a
        0x102af8f8 -> :sswitch_3f
        0x20d4bc15 -> :sswitch_34
        0x5ae77791 -> :sswitch_29
        0x5c725919 -> :sswitch_1d
        0x6683d83a -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_175
        :pswitch_16e
        :pswitch_167
        :pswitch_160
        :pswitch_159
        :pswitch_154
        :pswitch_14f
        :pswitch_14a
        :pswitch_145
        :pswitch_13e
        :pswitch_137
        :pswitch_130
        :pswitch_129
        :pswitch_122
        :pswitch_11b
        :pswitch_113
        :pswitch_10b
        :pswitch_103
        :pswitch_fb
        :pswitch_f3
    .end packed-switch
.end method

.method private sendPackageDataToSdhms([Lcom/samsung/android/game/SemPackageConfiguration;)V
    .registers 6
    .param p1, "configArray"    # [Lcom/samsung/android/game/SemPackageConfiguration;

    .line 1019
    const-string v0, "GameManager"

    if-eqz p1, :cond_42

    array-length v1, p1

    if-nez v1, :cond_8

    goto :goto_42

    .line 1024
    :cond_8
    const-string v1, "com.sec.android.sdhms"

    .line 1025
    .local v1, "sdhmsPkgName":Ljava/lang/String;
    const-string v2, "sendPackageDataToSdhms(). sending intent to SDHMS."

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendPackageDataToSdhms(). configArray="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.android.sdhms.PKG_CONFIG_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1028
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.sec.android.sdhms"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    const-string v2, "configArray"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1030
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1031
    return-void

    .line 1020
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "sdhmsPkgName":Ljava/lang/String;
    :cond_42
    :goto_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendPackageDataToSdhms(). Nothing to do because configArray is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    return-void
.end method

.method private setAOSPGameMode(Ljava/lang/String;I)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "gameMode"    # I

    .line 904
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGameManager:Landroid/app/GameManager;

    const-string v1, "GameManager"

    if-nez v0, :cond_17

    .line 905
    const-string v0, "setAOSPGameMode() get GameManager service"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/GameManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/GameManager;

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGameManager:Landroid/app/GameManager;

    .line 908
    :cond_17
    const-string v0, "setAOSPGameMode() pkgName : "

    packed-switch p2, :pswitch_data_80

    .line 919
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", gameMode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    return-void

    .line 916
    :pswitch_3b
    const/4 p2, 0x2

    .line 917
    goto :goto_41

    .line 913
    :pswitch_3d
    const/4 p2, 0x1

    .line 914
    goto :goto_41

    .line 910
    :pswitch_3f
    const/4 p2, 0x3

    .line 911
    nop

    .line 922
    :goto_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ASOP_gameMode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    :try_start_5f
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGameManager:Landroid/app/GameManager;

    invoke-virtual {v0, p1, p2}, Landroid/app/GameManager;->setGameMode(Ljava/lang/String;I)V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_64} :catch_65

    .line 929
    goto :goto_7f

    .line 926
    :catch_65
    move-exception v0

    .line 927
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAOSPGameMode is failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 930
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_7f
    return-void

    :pswitch_data_80
    .packed-switch -0x1
        :pswitch_3f
        :pswitch_3d
        :pswitch_3b
    .end packed-switch
.end method

.method private setDfs(Landroid/os/IBinder;I)Z
    .registers 10
    .param p1, "surfaceFlinger"    # Landroid/os/IBinder;
    .param p2, "fps"    # I

    .line 779
    const-string v0, "GameManager"

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 780
    .local v1, "data":Landroid/os/Parcel;
    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 781
    return v2

    .line 784
    :cond_a
    const/4 v3, 0x0

    .line 785
    .local v3, "ret":Z
    const-string v4, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 786
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    const/16 v4, 0x462

    .line 789
    .local v4, "TRANSACT_CODE_SET_DFS":I
    const/16 v5, 0x462

    const/4 v6, 0x0

    :try_start_18
    invoke-interface {p1, v5, v1, v6, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 790
    .local v2, "transactRet":Z
    if-eqz v2, :cond_21

    .line 791
    const/4 v0, 0x1

    move v3, v0

    .end local v3    # "ret":Z
    .local v0, "ret":Z
    goto :goto_26

    .line 793
    .end local v0    # "ret":Z
    .restart local v3    # "ret":Z
    :cond_21
    const-string v5, "setDfs(), transactRet: false"

    invoke-static {v0, v5}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_26} :catch_2e
    .catch Ljava/lang/SecurityException; {:try_start_18 .. :try_end_26} :catch_27

    .line 799
    .end local v2    # "transactRet":Z
    :goto_26
    goto :goto_35

    .line 797
    :catch_27
    move-exception v2

    .line 798
    .local v2, "se":Ljava/lang/SecurityException;
    const-string v5, "setDfs(), SecurityException: Need system privilege"

    invoke-static {v0, v5}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_35

    .line 795
    .end local v2    # "se":Ljava/lang/SecurityException;
    :catch_2e
    move-exception v2

    .line 796
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v5, "setDfs(), RemoteException!"

    invoke-static {v0, v5}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v2    # "ex":Landroid/os/RemoteException;
    goto :goto_26

    .line 800
    :goto_35
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 802
    return v3
.end method

.method private setPkgDataWithConfigurationImpl(Lcom/samsung/android/game/SemPackageConfiguration;)V
    .registers 16
    .param p1, "config"    # Lcom/samsung/android/game/SemPackageConfiguration;

    .line 848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPkgDataWithConfigurationImpl(). configuration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-virtual {p1}, Lcom/samsung/android/game/SemPackageConfiguration;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 851
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_10f

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    if-nez v2, :cond_24

    goto/16 :goto_10f

    .line 856
    :cond_24
    invoke-virtual {p1}, Lcom/samsung/android/game/SemPackageConfiguration;->getUserId()Ljava/lang/String;

    move-result-object v2

    .line 857
    .local v2, "csvUserId":Ljava/lang/String;
    if-nez v2, :cond_35

    .line 858
    const-string v3, "setPkgDataWithConfigurationImpl(). csvUserId is null"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    iget v3, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 861
    :cond_35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPkgDataWithConfigurationImpl(). final csvUserId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    invoke-static {v2}, Lcom/samsung/android/game/Util;->csvToInts(Ljava/lang/String;)[I

    move-result-object v3

    .line 864
    .local v3, "userIds":[I
    if-nez v3, :cond_57

    .line 865
    const-string v4, "setPkgDataWithConfigurationImpl(). userIds is null"

    invoke-static {v1, v4}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    return-void

    .line 868
    :cond_57
    const/4 v4, 0x1

    .line 869
    .local v4, "DSS_SUPPORTED":Z
    array-length v5, v3

    const/4 v6, 0x0

    :goto_5a
    if-ge v6, v5, :cond_10e

    aget v7, v3, v6

    .line 870
    .local v7, "userId":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setPkgDataWithConfigurationImpl(). userId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v8

    iput-object v8, p0, Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 873
    invoke-virtual {v8, v0, v7}, Lcom/samsung/android/game/PkgDataHelper;->preparePkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v8

    .line 876
    .local v8, "pkgData":Lcom/samsung/android/game/PkgData;
    invoke-virtual {p1}, Lcom/samsung/android/game/SemPackageConfiguration;->getCategoryByUser()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/samsung/android/game/PkgData;->setCategory(I)V

    .line 879
    iget-object v9, p0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    if-eqz v9, :cond_a8

    .line 880
    invoke-virtual {p1}, Lcom/samsung/android/game/SemPackageConfiguration;->getDynamicSurfaceScaling()F

    move-result v9

    .line 881
    .local v9, "dss":F
    iget-object v10, p0, Lcom/samsung/android/game/GameManagerService;->mDssController:Lcom/android/server/DssController;

    invoke-virtual {v10, v0, v9}, Lcom/android/server/DssController;->addPackageData(Ljava/lang/String;F)V

    .line 882
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setPkgDataWithConfigurationImpl(). dss="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 885
    .end local v9    # "dss":F
    :cond_a8
    invoke-virtual {p1}, Lcom/samsung/android/game/SemPackageConfiguration;->getPerformancePolicyForSsrm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/samsung/android/game/PerformancePolicyParser;->parse(Ljava/lang/String;)Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;

    move-result-object v9

    .line 887
    .local v9, "perfPolicy":Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;
    iget v10, v9, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gameMode:I

    invoke-direct {p0, v0, v10}, Lcom/samsung/android/game/GameManagerService;->setAOSPGameMode(Ljava/lang/String;I)V

    .line 888
    iget v10, v9, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->cpuLevel:I

    invoke-virtual {v8, v10}, Lcom/samsung/android/game/PkgData;->setCpuLevel(I)V

    .line 889
    iget v10, v9, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gpuLevel:I

    invoke-virtual {v8, v10}, Lcom/samsung/android/game/PkgData;->setGpuLevel(I)V

    .line 890
    iget v10, v9, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->shiftTemperature:I

    invoke-virtual {v8, v10}, Lcom/samsung/android/game/PkgData;->setShiftTemperature(I)V

    .line 891
    iget v10, v9, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->cpuMinPercent:I

    invoke-virtual {v8, v10}, Lcom/samsung/android/game/PkgData;->setCpuMinPercent(I)V

    .line 892
    iget v10, v9, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gpuMinPercent:I

    invoke-virtual {v8, v10}, Lcom/samsung/android/game/PkgData;->setGpuMinPercent(I)V

    .line 893
    iget-boolean v10, v9, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->isGameSdkSupported:Z

    invoke-virtual {v8, v10}, Lcom/samsung/android/game/PkgData;->setGameSdkSupported(Z)V

    .line 894
    iget-object v10, v9, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->gameSdkSetting:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/samsung/android/game/PkgData;->setGameSdkSetting(Ljava/lang/String;)V

    .line 895
    iget-object v10, v9, Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;->governorSetting:Ljava/lang/String;

    invoke-virtual {v8, v10}, Lcom/samsung/android/game/PkgData;->setGovernorSetting(Ljava/lang/String;)V

    .line 897
    iget-object v10, p0, Lcom/samsung/android/game/GameManagerService;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    invoke-virtual {v10, v0, v8, v7}, Lcom/samsung/android/game/data/DatabaseHelper;->updateOrAddPkg(Ljava/lang/String;Lcom/samsung/android/game/PkgData;I)I

    .line 898
    iget-object v10, p0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    sget-object v11, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_PKG:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-direct {p0, v8}, Lcom/samsung/android/game/GameManagerService;->getActionLogPkgData(Lcom/samsung/android/game/PkgData;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lcom/samsung/android/game/ActionLogger;->addActionLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J

    .line 869
    .end local v7    # "userId":I
    .end local v8    # "pkgData":Lcom/samsung/android/game/PkgData;
    .end local v9    # "perfPolicy":Lcom/samsung/android/game/PerformancePolicyParser$PerformancePolicy;
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5a

    .line 900
    :cond_10e
    return-void

    .line 852
    .end local v2    # "csvUserId":Ljava/lang/String;
    .end local v3    # "userIds":[I
    .end local v4    # "DSS_SUPPORTED":Z
    :cond_10f
    :goto_10f
    const-string v2, "setPkgDataWithConfigurationImpl(). pkgName is null or dbHelper is null"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    return-void
.end method

.method private unbindService()V
    .registers 3

    .line 1887
    const-string v0, "GameManager"

    const-string v1, "unbindService(), begin."

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mGosServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1889
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGosSystemService:Lcom/samsung/android/game/gos/IGosSystemService;

    .line 1890
    return-void
.end method


# virtual methods
.method public disableVrrControl(Ljava/lang/String;)Z
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 467
    const-string v0, "GameManager"

    if-eqz p1, :cond_3b

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    if-eqz v1, :cond_3b

    .line 468
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b

    .line 469
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 470
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableVrrControl(), pkgName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listSize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const/4 v0, 0x1

    return v0

    .line 474
    :cond_3b
    const-string v1, "disableVrrControl(), fail!"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1565
    const-string v0, "GameManager"

    const-string v1, "dump(), begin"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1568
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3a

    .line 1569
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump gamemanager from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1570
    return-void

    .line 1573
    :cond_3a
    monitor-enter p0

    .line 1574
    :try_start_3b
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->dumpActionLogs(Ljava/io/PrintWriter;)V

    .line 1576
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->dumpGos(Ljava/io/PrintWriter;)V

    .line 1578
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->dumpGameManagerState(Ljava/io/PrintWriter;)V

    .line 1580
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->dumpPackageData(Ljava/io/PrintWriter;)V

    .line 1582
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->printAllDssInfoToLogcat()V

    .line 1583
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_3b .. :try_end_4b} :catchall_4f

    .line 1585
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->clearGosBind()V

    .line 1586
    return-void

    .line 1583
    :catchall_4f
    move-exception v0

    :try_start_50
    monitor-exit p0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    throw v0
.end method

.method public enableVrrControl(Ljava/lang/String;)Z
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 482
    const-string v0, "enableVrrControl(), pkgName: "

    const-string v1, "GameManager"

    if-eqz p1, :cond_ab

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    if-eqz v2, :cond_ab

    .line 483
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 485
    :try_start_d
    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    .line 486
    .local v2, "wmi":Lcom/android/server/wm/WindowManagerInternal;
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    if-eqz v3, :cond_61

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    .line 487
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", vrrMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " add refresh rate."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7e

    .line 489
    iget-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mVrrModeMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/WindowManagerInternal;->addFixedRefreshRatePackageInternal(Ljava/lang/String;I)V

    goto :goto_7e

    .line 492
    :cond_61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " remove refresh rate."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerInternal;->removeFixedRefreshRatePackageInternal(Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_7e} :catch_7f

    .line 497
    .end local v2    # "wmi":Lcom/android/server/wm/WindowManagerInternal;
    :cond_7e
    :goto_7e
    goto :goto_85

    .line 495
    :catch_7f
    move-exception v2

    .line 496
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "enableVrrControl() - remote exception!"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", listSize: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mDisabledVrrControlList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    const/4 v0, 0x1

    return v0

    .line 502
    :cond_ab
    const-string v0, "enableVrrControl(), fail!"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    const/4 v0, 0x0

    return v0
.end method

.method public getForegroundApp()Ljava/lang/String;
    .registers 4

    .line 360
    const-string v0, "GameManager"

    const-string v1, "getForegroundApp()"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->checkSettingPermission()Z

    move-result v0

    if-nez v0, :cond_18

    .line 363
    const/4 v0, 0x0

    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.SET_ACTIVITY_WATCHER"

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_15} :catch_16

    .line 366
    goto :goto_18

    .line 364
    :catch_16
    move-exception v1

    .line 365
    .local v1, "se":Ljava/lang/SecurityException;
    return-object v0

    .line 369
    .end local v1    # "se":Ljava/lang/SecurityException;
    :cond_18
    :goto_18
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v0}, Lcom/samsung/android/game/FgCheckThread;->getForegroundPkgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameList()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 377
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v0

    .line 378
    .local v0, "callerUserId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGameList():: mCurrentUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callerUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v1, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 382
    invoke-virtual {v2, v0}, Lcom/samsung/android/game/PkgDataHelper;->getPkgDataSet(I)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/game/PkgData;

    .line 383
    .local v3, "pkgData":Lcom/samsung/android/game/PkgData;
    if-eqz v3, :cond_57

    .line 384
    invoke-virtual {v3}, Lcom/samsung/android/game/PkgData;->getCategory()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_57

    .line 385
    invoke-virtual {v3}, Lcom/samsung/android/game/PkgData;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    .end local v3    # "pkgData":Lcom/samsung/android/game/PkgData;
    :cond_57
    goto :goto_3b

    .line 388
    :cond_58
    return-object v1
.end method

.method public getGamePkgDataIncServer(Ljava/lang/String;)Lcom/samsung/android/game/PkgData;
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 743
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 744
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/game/PkgDataHelper;->getGamePkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v0

    return-object v0
.end method

.method public getSosPolicy(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 752
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopActivityName()Ljava/lang/String;
    .registers 4

    .line 758
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 760
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v0}, Lcom/samsung/android/game/FgCheckThread;->getTopActivityName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 3

    .line 508
    const-string v0, "GameManager"

    const-string v1, "getVersion."

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    const v0, 0x43020419

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public identifyForegroundApp()I
    .registers 5

    .line 344
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v0}, Lcom/samsung/android/game/FgCheckThread;->getFocusedPkgName()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "pkgName":Ljava/lang/String;
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v1

    .line 346
    .local v1, "callerUserId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "identifyForegroundApp. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCurrentUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callerUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameManager"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    iget-boolean v2, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    if-nez v2, :cond_43

    .line 349
    const-string v2, "GameService does not exist"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const/4 v2, -0x1

    return v2

    .line 352
    :cond_43
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 353
    invoke-virtual {v2, v0, v1}, Lcom/samsung/android/game/PkgDataHelper;->getGamePkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v2

    if-eqz v2, :cond_51

    const/4 v2, 0x1

    goto :goto_52

    :cond_51
    const/4 v2, 0x0

    :goto_52
    return v2
.end method

.method public identifyGamePackage(Ljava/lang/String;)I
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 322
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    .line 325
    .local v0, "callingMethodInfo":Ljava/lang/String;
    goto :goto_14

    .line 323
    .end local v0    # "callingMethodInfo":Ljava/lang/String;
    :catch_10
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "tracing failed"

    move-object v0, v1

    .line 327
    .local v0, "callingMethodInfo":Ljava/lang/String;
    :goto_14
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v1

    .line 328
    .local v1, "callerUserId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "identifyGamePackage. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mCurrentUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callerUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callingMethodInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameManager"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const/4 v2, 0x0

    if-nez p1, :cond_54

    return v2

    .line 331
    :cond_54
    iget-boolean v4, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    if-nez v4, :cond_5f

    .line 332
    const-string v2, "GameService deos not exist"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const/4 v2, -0x1

    return v2

    .line 335
    :cond_5f
    invoke-static {}, Lcom/samsung/android/game/PkgDataHelper;->getInstance()Lcom/samsung/android/game/PkgDataHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/samsung/android/game/GameManagerService;->mPkgDataHelper:Lcom/samsung/android/game/PkgDataHelper;

    .line 336
    invoke-virtual {v3, p1, v1}, Lcom/samsung/android/game/PkgDataHelper;->getGamePkgData(Ljava/lang/String;I)Lcom/samsung/android/game/PkgData;

    move-result-object v3

    if-eqz v3, :cond_6c

    const/4 v2, 0x1

    :cond_6c
    return v2
.end method

.method public initGameManager(ILjava/util/Map;)Z
    .registers 7
    .param p1, "tunerMode"    # I
    .param p2, "pkgMap"    # Ljava/util/Map;

    .line 425
    const-string v0, "GameManager"

    const-string v1, "initGameManager(), begin"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->checkSettingPermission()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    return v0

    .line 428
    :cond_f
    monitor-enter p0

    .line 429
    :try_start_10
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v0

    .line 430
    .local v0, "callerUserId":I
    const-string v1, "GameManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initGameManager(), before init.. mCurrentUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callerUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    iget v1, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    if-ne v1, v0, :cond_6e

    .line 432
    if-eqz p2, :cond_65

    .line 433
    const-string v1, "GameManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initGameManager(), pkgMap: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    iget v2, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v1, p2, v2}, Lcom/samsung/android/game/data/DatabaseHelper;->refreshGameList(Ljava/util/Map;I)V

    .line 436
    invoke-direct {p0, p2}, Lcom/samsung/android/game/GameManagerService;->printPkgMapToActionLog(Ljava/util/Map;)V

    goto :goto_6e

    .line 438
    :cond_65
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    sget-object v2, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->INI_GMS:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    const-string v3, "  pkgMap is null."

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/game/ActionLogger;->addActionLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J

    .line 442
    :cond_6e
    :goto_6e
    const-string v1, "GameManager"

    const-string v2, "initGameManager(), after init"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const/4 v1, 0x1

    monitor-exit p0

    return v1

    .line 444
    .end local v0    # "callerUserId":I
    :catchall_78
    move-exception v0

    monitor-exit p0
    :try_end_7a
    .catchall {:try_start_10 .. :try_end_7a} :catchall_78

    throw v0
.end method

.method public onBootPhase(I)V
    .registers 5
    .param p1, "phase"    # I

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBootPhase, phase: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const/16 v0, 0x1e0

    if-ne p1, v0, :cond_2c

    .line 251
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/FgCheckThread;->setKeyguardManager(Landroid/app/KeyguardManager;)V

    goto :goto_52

    .line 252
    :cond_2c
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_36

    .line 253
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v0}, Lcom/samsung/android/game/FgCheckThread;->registerTaskStackListener()V

    goto :goto_52

    .line 254
    :cond_36
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_52

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBootPhase().PHASE_BOOT_COMPLETED mIsGosEnabled : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    :cond_52
    :goto_52
    return-void
.end method

.method public onUserStopped(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserStopped, userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/data/DatabaseHelper;->removeUser(I)V

    .line 311
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 7
    .param p1, "newUserId"    # I

    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUserSwitched, newUserId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCurrentUserId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameManager"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    iget v0, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    if-eq v0, p1, :cond_65

    .line 287
    iput p1, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    .line 288
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/FgCheckThread;->setCurrentUserId(I)V

    .line 289
    const-string v0, "onUserSwitched"

    invoke-direct {p0, v0}, Lcom/samsung/android/game/GameManagerService;->checkPkgEnabledState(Ljava/lang/String;)V

    .line 291
    iget-boolean v0, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    if-nez v0, :cond_49

    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->isMlPidModel()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 293
    iget v0, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/game/GameManagerService;->deleteAllGamePolicies(I)V

    .line 294
    const-string v0, "onUserSwitched(), the user\'s data was reset by disabling GOS"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_52

    .line 295
    :cond_49
    iget-boolean v0, p0, Lcom/samsung/android/game/GameManagerService;->mIsGosEnabled:Z

    if-eqz v0, :cond_52

    .line 297
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mGosNotifyThread:Lcom/samsung/android/game/GosNotifyThread;

    invoke-virtual {v0}, Lcom/samsung/android/game/GosNotifyThread;->sendUserSwitchMessage()V

    .line 301
    :cond_52
    :goto_52
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    if-eqz v0, :cond_65

    .line 302
    const/4 v1, 0x0

    const-string v2, "com.samsung.android.game.gametools"

    const/4 v3, 0x0

    const/16 v4, 0xa

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/SemStatusBarManager;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    .line 303
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mStatusBarManager:Landroid/app/SemStatusBarManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/app/SemStatusBarManager;->setNavigationBarShortcut(Ljava/lang/String;Landroid/widget/RemoteViews;II)V

    .line 306
    :cond_65
    return-void
.end method

.method public registerCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z
    .registers 4
    .param p1, "callback"    # Lcom/samsung/android/game/IGameManagerCallback;

    .line 410
    const-string v0, "GameManager"

    const-string v1, "registerCallback"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/FgCheckThread;->registerCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    move-result v0

    return v0
.end method

.method public requestWithJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "jsonParam"    # Ljava/lang/String;

    .line 514
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->checkSettingPermission()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return-object v0

    .line 515
    :cond_8
    const/4 v0, 0x0

    .line 516
    .local v0, "response":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/GameManagerService;->respondWithJson(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 517
    return-object v0
.end method

.method public setPackageConfigurations(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/game/SemPackageConfiguration;",
            ">;)Z"
        }
    .end annotation

    .line 808
    .local p1, "packageConfigurations":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/game/SemPackageConfiguration;>;"
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->checkSettingPermission()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 809
    :cond_8
    if-nez p1, :cond_b

    return v1

    .line 811
    :cond_b
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v0

    .line 813
    .local v0, "callerUserId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPackageConfigurations(). mCurrentUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callerUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    iget v1, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    if-ne v1, v0, :cond_7a

    .line 816
    iget-object v1, p0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    sget-object v2, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_PKG:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPackageConfigurations() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/game/GameManagerService;->mDisplayListener:Lcom/samsung/android/game/GameManagerService$DisplayListener;

    invoke-virtual {v4}, Lcom/samsung/android/game/GameManagerService$DisplayListener;->getResLog()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/game/ActionLogger;->addActionLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J

    .line 817
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/game/SemPackageConfiguration;

    .line 818
    .local v2, "config":Lcom/samsung/android/game/SemPackageConfiguration;
    invoke-direct {p0, v2}, Lcom/samsung/android/game/GameManagerService;->setPkgDataWithConfigurationImpl(Lcom/samsung/android/game/SemPackageConfiguration;)V

    .line 819
    .end local v2    # "config":Lcom/samsung/android/game/SemPackageConfiguration;
    goto :goto_5b

    .line 822
    :cond_6b
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/samsung/android/game/SemPackageConfiguration;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/samsung/android/game/SemPackageConfiguration;

    .line 823
    .local v1, "configArray":[Lcom/samsung/android/game/SemPackageConfiguration;
    invoke-direct {p0, v1}, Lcom/samsung/android/game/GameManagerService;->sendPackageDataToSdhms([Lcom/samsung/android/game/SemPackageConfiguration;)V

    .line 825
    .end local v1    # "configArray":[Lcom/samsung/android/game/SemPackageConfiguration;
    :cond_7a
    const/4 v1, 0x1

    return v1
.end method

.method public setPerformanceMode(ILjava/lang/String;)Z
    .registers 8
    .param p1, "tunePerformanceMode"    # I
    .param p2, "callerPackageName"    # Ljava/lang/String;

    .line 831
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->checkSettingPermission()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 832
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v0

    .line 833
    .local v0, "callerUserId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPerformanceMode(), tunePerformanceMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callerPackageName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurrentUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", callerUserId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GameManager"

    invoke-static {v2, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    iget v1, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    if-ne v1, v0, :cond_6a

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 837
    .local v1, "logMsg":Ljava/lang/StringBuilder;
    const-string v2, "setPerformanceMode()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    iput p1, p0, Lcom/samsung/android/game/GameManagerService;->mSiopMode:I

    .line 840
    const-string v2, ", SiopMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/game/GameManagerService;->mSiopMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 842
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    sget-object v3, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_GLO:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/game/ActionLogger;->addActionLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J

    .line 844
    .end local v1    # "logMsg":Ljava/lang/StringBuilder;
    :cond_6a
    const/4 v1, 0x1

    return v1
.end method

.method public setTargetFrameRate(Landroid/os/IBinder;I)Z
    .registers 9
    .param p1, "surfaceFlinger"    # Landroid/os/IBinder;
    .param p2, "fps"    # I

    .line 765
    const/4 v0, 0x0

    .line 766
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/samsung/android/game/GameManagerService;->checkSettingPermission()Z

    move-result v1

    if-nez v1, :cond_8

    return v0

    .line 768
    :cond_8
    invoke-static {}, Landroid/os/UserHandle;->semGetCallingUserId()I

    move-result v1

    .line 769
    .local v1, "callerUserId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTargetFrameRate(), mCurrentUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", callerUserId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GameManager"

    invoke-static {v3, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    iget v2, p0, Lcom/samsung/android/game/GameManagerService;->mCurrentUserId:I

    if-ne v2, v1, :cond_38

    .line 771
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/game/GameManagerService;->setDfs(Landroid/os/IBinder;I)Z

    move-result v0

    .line 774
    :cond_38
    iget-object v2, p0, Lcom/samsung/android/game/GameManagerService;->mActionLogger:Lcom/samsung/android/game/ActionLogger;

    sget-object v3, Lcom/samsung/android/game/ActionLogger$ActionLogTag;->SET_DFS:Lcom/samsung/android/game/ActionLogger$ActionLogTag;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FPS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", successful: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/game/ActionLogger;->addActionLog(Lcom/samsung/android/game/ActionLogger$ActionLogTag;Ljava/lang/String;)J

    .line 775
    return v0
.end method

.method public syncGameList(Ljava/util/Map;)V
    .registers 3
    .param p1, "pkgMap"    # Ljava/util/Map;

    .line 460
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mDbHelper:Lcom/samsung/android/game/data/DatabaseHelper;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/data/DatabaseHelper;->syncGameList(Ljava/util/Map;)V

    .line 461
    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z
    .registers 4
    .param p1, "callback"    # Lcom/samsung/android/game/IGameManagerCallback;

    .line 419
    const-string v0, "GameManager"

    const-string v1, "unregisterCallback"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/samsung/android/game/GameManagerService;->mFgCheckThread:Lcom/samsung/android/game/FgCheckThread;

    invoke-virtual {v0, p1}, Lcom/samsung/android/game/FgCheckThread;->unregisterCallback(Lcom/samsung/android/game/IGameManagerCallback;)Z

    move-result v0

    return v0
.end method
