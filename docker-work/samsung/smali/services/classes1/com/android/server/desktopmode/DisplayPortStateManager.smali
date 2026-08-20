.class public Lcom/android/server/desktopmode/DisplayPortStateManager;
.super Ljava/lang/Object;
.source "DisplayPortStateManager.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDisplayPortState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDualModeEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mExternalDisplayModeDual:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mExternalDisplayModeListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public mHdmiAutoEnterEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHdmiAutoEnterListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public mHdmiDisplayConnected:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mHighResolutionsForExternalEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mHighResolutionsForExternalListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

.field public final mLock:Ljava/lang/Object;

.field public mStandaloneModeEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public final mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDualModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDualModeEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExternalDisplayModeDual(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayModeDual:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiAutoEnterEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHdmiDisplayConnected(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiDisplayConnected:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHighResolutionsForExternalEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHighResolutionsForExternalEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/desktopmode/DisplayPortStateManager;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmDualModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDualModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmExternalDisplayModeDual(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayModeDual:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHdmiAutoEnterEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHdmiDisplayConnected(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiDisplayConnected:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmHighResolutionsForExternalEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHighResolutionsForExternalEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmStandaloneModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mStandaloneModeEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetSettingState(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->getSettingState()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misExternalDisplayModeDualEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->isExternalDisplayModeDualEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misHdmiAutoEnterEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->isHdmiAutoEnterEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misHighResolutionsForExternalEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->isHighResolutionsForExternalEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetDisplayPortStateLocked(Lcom/android/server/desktopmode/DisplayPortStateManager;ZZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDualModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDualModeEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetHighResolutionsForExternalEnabledLocked(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setHighResolutionsForExternalEnabledLocked(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetStandaloneModeEnabled(Lcom/android/server/desktopmode/DisplayPortStateManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setStandaloneModeEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smisDualModeEnabled(Lcom/android/server/desktopmode/State;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->isDualModeEnabled(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$smisStandaloneModeEnabled(Lcom/android/server/desktopmode/State;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->isStandaloneModeEnabled(Lcom/android/server/desktopmode/State;)Z

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[DMS]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/desktopmode/DisplayPortStateManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;)V
    .registers 9

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/android/server/desktopmode/DisplayPortStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/desktopmode/DisplayPortStateManager$1;-><init>(Lcom/android/server/desktopmode/DisplayPortStateManager;)V

    iput-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mStateListener:Lcom/android/server/desktopmode/StateManager$StateListener;

    .line 83
    new-instance v1, Lcom/android/server/desktopmode/DisplayPortStateManager$2;

    const-string/jumbo v2, "hdmi_auto_enter"

    invoke-direct {v1, p0, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager$2;-><init>(Lcom/android/server/desktopmode/DisplayPortStateManager;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    .line 98
    new-instance v2, Lcom/android/server/desktopmode/DisplayPortStateManager$3;

    const-string/jumbo v3, "high_resolutions_for_external"

    invoke-direct {v2, p0, v3}, Lcom/android/server/desktopmode/DisplayPortStateManager$3;-><init>(Lcom/android/server/desktopmode/DisplayPortStateManager;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHighResolutionsForExternalListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    .line 111
    new-instance v3, Lcom/android/server/desktopmode/DisplayPortStateManager$4;

    const-string v4, "external_display_mode"

    invoke-direct {v3, p0, v4}, Lcom/android/server/desktopmode/DisplayPortStateManager$4;-><init>(Lcom/android/server/desktopmode/DisplayPortStateManager;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayModeListener:Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;

    .line 127
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;

    const/4 v4, -0x1

    .line 128
    iput v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDisplayPortState:I

    const/4 v4, 0x0

    .line 130
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiDisplayConnected:Z

    .line 132
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z

    .line 134
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDualModeEnabled:Z

    .line 136
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mStandaloneModeEnabled:Z

    .line 138
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHighResolutionsForExternalEnabled:Z

    .line 140
    iput-boolean v4, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayModeDual:Z

    .line 145
    iput-object p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mContext:Landroid/content/Context;

    .line 146
    invoke-interface {p2, v0}, Lcom/android/server/desktopmode/IStateManager;->registerListener(Lcom/android/server/desktopmode/StateManager$StateListener;)V

    .line 147
    invoke-virtual {p3, v1}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 148
    invoke-virtual {p3, v2}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    .line 149
    invoke-virtual {p3, v3}, Lcom/android/server/desktopmode/SettingsHelper;->registerListener(Lcom/android/server/desktopmode/SettingsHelper$OnSettingChangedListener;)V

    return-void
.end method

.method public static isDualModeEnabled(Lcom/android/server/desktopmode/State;)Z
    .registers 3

    .line 158
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    .line 159
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_17

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    if-nez p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method

.method public static isStandaloneModeEnabled(Lcom/android/server/desktopmode/State;)Z
    .registers 3

    .line 164
    invoke-interface {p0}, Lcom/android/server/desktopmode/State;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result v0

    const/16 v1, 0x65

    if-ne v0, v1, :cond_17

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_17

    iget p0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    if-nez p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    return p0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 5

    .line 245
    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 246
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v2, Lcom/android/server/desktopmode/DisplayPortStateManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDisplayPortState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDisplayPortState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHdmiDisplayConnected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiDisplayConnected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHdmiAutoEnterEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDualModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDualModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mStandaloneModeEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mStandaloneModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mExternalDisplayModeDual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayModeDual:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mHighResolutionsForExternalEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHighResolutionsForExternalEnabled:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 256
    monitor-exit v0

    return-void

    :catchall_cb
    move-exception p0

    monitor-exit v0
    :try_end_cd
    .catchall {:try_start_3 .. :try_end_cd} :catchall_cb

    throw p0
.end method

.method public final getSettingState()Z
    .registers 2

    .line 176
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->SUPPORT_STANDALONE:Z

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mExternalDisplayModeDual:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z

    if-nez v0, :cond_10

    iget-boolean p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mStandaloneModeEnabled:Z

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_16

    :cond_12
    const/4 p0, 0x0

    goto :goto_16

    .line 178
    :cond_14
    iget-boolean p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiAutoEnterEnabled:Z

    :goto_16
    return p0
.end method

.method public final isExternalDisplayModeDualEnabled()Z
    .registers 3

    .line 170
    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "external_display_mode"

    const-string v1, "dual"

    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 170
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isHdmiAutoEnterEnabled()Z
    .registers 3

    .line 153
    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "hdmi_auto_enter"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final isHighResolutionsForExternalEnabled()Z
    .registers 3

    .line 198
    iget-object p0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "high_resolutions_for_external"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final setDisplayPortStateLocked(ZZ)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 184
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHighResolutionsForExternalEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    move v0, v1

    goto :goto_a

    :cond_7
    shl-int/lit8 v0, p1, 0x4

    or-int/2addr v0, p2

    .line 189
    :goto_a
    iget v2, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDisplayPortState:I

    if-eq v2, v0, :cond_39

    .line 190
    iput v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDisplayPortState:I

    .line 191
    sget-boolean p0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p0, :cond_2f

    sget-object p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDisplayPortState(), state=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-static {p0, v2}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    if-nez p1, :cond_33

    if-eqz p2, :cond_34

    :cond_33
    const/4 v1, 0x1

    :cond_34
    const-string p0, "/sys/class/dp_sec/dex"

    .line 193
    invoke-static {p0, v0, v1}, Lcom/android/server/desktopmode/Utils;->writeFile(Ljava/lang/String;IZ)V

    :cond_39
    return-void
.end method

.method public final setDualModeEnabled(Z)V
    .registers 5

    .line 216
    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDualModeEnabled:Z

    if-eq v1, p1, :cond_25

    .line 218
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDualModeEnabled:Z

    .line 219
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiDisplayConnected:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    if-eqz p1, :cond_18

    const/4 p1, 0x1

    .line 222
    invoke-virtual {p0, p1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    .line 223
    invoke-virtual {p0, p1, p1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    goto :goto_25

    :cond_18
    if-eqz v1, :cond_1e

    .line 226
    invoke-virtual {p0, v2, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    goto :goto_25

    .line 229
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->getSettingState()Z

    move-result p1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    .line 232
    :cond_25
    :goto_25
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public final setHighResolutionsForExternalEnabledLocked(Z)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 204
    sget-object v0, Lcom/android/server/desktopmode/DisplayPortStateManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHighResolutionsForExternalEnabledLocked(), enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mHdmiDisplayConnected:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mDualModeEnabled:Z

    if-nez v0, :cond_2d

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    .line 208
    invoke-virtual {p0, v0, v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    goto :goto_2d

    .line 210
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->getSettingState()Z

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public final setStandaloneModeEnabled(Z)V
    .registers 4

    .line 236
    iget-object v0, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mStandaloneModeEnabled:Z

    if-eq v1, p1, :cond_11

    .line 238
    iput-boolean p1, p0, Lcom/android/server/desktopmode/DisplayPortStateManager;->mStandaloneModeEnabled:Z

    .line 239
    invoke-virtual {p0}, Lcom/android/server/desktopmode/DisplayPortStateManager;->getSettingState()Z

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/desktopmode/DisplayPortStateManager;->setDisplayPortStateLocked(ZZ)V

    .line 241
    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method
