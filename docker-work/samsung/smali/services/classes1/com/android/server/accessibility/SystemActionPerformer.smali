.class public Lcom/android/server/accessibility/SystemActionPerformer;
.super Ljava/lang/Object;
.source "SystemActionPerformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "SystemActionPerformer"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLegacyBackAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyHomeAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyLockScreenAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyNotificationsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyPowerDialogAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyQuickSettingsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyRecentsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mLegacyTakeScreenshotAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

.field public final mListener:Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;

.field public final mRegisteredSystemActions:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSystemActionLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenshotHelperSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/util/ScreenshotHelper;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemActionLock:Ljava/lang/Object;

.field public final mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;)V
    .registers 4

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/accessibility/SystemActionPerformer;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/wm/WindowManagerInternal;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/util/ScreenshotHelper;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 107
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/accessibility/SystemActionPerformer;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerInternal;Ljava/util/function/Supplier;Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/server/wm/WindowManagerInternal;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/util/ScreenshotHelper;",
            ">;",
            "Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;",
            ")V"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    .line 115
    iput-object p1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    .line 116
    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    .line 117
    iput-object p4, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mListener:Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;

    .line 118
    iput-object p3, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mScreenshotHelperSupplier:Ljava/util/function/Supplier;

    .line 120
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x104016f

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x2

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyHomeAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 124
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040166

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyBackAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 128
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 130
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040176

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x3

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyRecentsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 132
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040171

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x4

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyNotificationsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 136
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040175

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x5

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyQuickSettingsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 140
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040174

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x6

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyPowerDialogAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 144
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x1040170

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x8

    invoke-direct {p2, p4, p3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyLockScreenAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 148
    new-instance p2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x1040177

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x9

    invoke-direct {p2, p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyTakeScreenshotAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    return-void
.end method


# virtual methods
.method public final addLegacySystemActions(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;)V"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 212
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyBackAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_12
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 215
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyHomeAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_24
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 218
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyRecentsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    :cond_36
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x4

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 220
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 222
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyNotificationsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_48
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x5

    .line 225
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 224
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    .line 226
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyQuickSettingsAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_5a
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/4 v1, 0x6

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 228
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6c

    .line 230
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyPowerDialogAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_6c
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/16 v1, 0x8

    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 232
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 234
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyLockScreenAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    :cond_7f
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    const/16 v1, 0x9

    .line 237
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 236
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 238
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mLegacyTakeScreenshotAction:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_92
    return-void
.end method

.method public final expandNotifications()V
    .registers 4

    .line 345
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 347
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    .line 349
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->expandNotificationsPanel()V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 351
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 352
    throw p0
.end method

.method public final expandQuickSettings()V
    .registers 4

    .line 356
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 358
    :try_start_4
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "statusbar"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    .line 360
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->expandSettingsPanel()V
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_16

    .line 362
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_16
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 363
    throw p0
.end method

.method public getSystemActions()Ljava/util/List;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 197
    :try_start_8
    iget-object v2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_12
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 198
    new-instance v4, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 199
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 200
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RemoteAction;

    invoke-virtual {v3}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 201
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 205
    :cond_3b
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/SystemActionPerformer;->addLegacySystemActions(Ljava/util/List;)V

    .line 206
    monitor-exit v1

    return-object v0

    :catchall_40
    move-exception p0

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_8 .. :try_end_42} :catchall_40

    throw p0
.end method

.method public final lockScreen()Z
    .registers 6

    .line 386
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x7

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/PowerManager;->goToSleep(JII)V

    .line 388
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->lockNow()V

    const/4 p0, 0x1

    return p0
.end method

.method public final openRecents()Z
    .registers 3

    .line 367
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 369
    :try_start_4
    const-class p0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/statusbar/StatusBarManagerInternal;
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_1b

    if-nez p0, :cond_13

    const/4 p0, 0x0

    .line 376
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 374
    :cond_13
    :try_start_13
    invoke-interface {p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleRecentApps()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1b

    .line 376
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_1b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 377
    throw p0
.end method

.method public performSystemAction(I)Z
    .registers 9

    .line 246
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 248
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d8

    .line 251
    :try_start_7
    iget-object v3, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/RemoteAction;
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_d5

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_43

    .line 254
    :try_start_17
    invoke-virtual {v3}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_1e
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_17 .. :try_end_1e} :catch_23
    .catchall {:try_start_17 .. :try_end_1e} :catchall_d5

    .line 255
    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_d5

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catch_23
    move-exception p0

    :try_start_24
    const-string p1, "SystemActionPerformer"

    .line 257
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "canceled PendingIntent for global action "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v3}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-static {p1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_24 .. :try_end_3f} :catchall_d5

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    .line 264
    :cond_43
    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_d5

    packed-switch p1, :pswitch_data_de

    :pswitch_47
    :try_start_47
    const-string p0, "SystemActionPerformer"

    goto :goto_bd

    :pswitch_4a
    const/16 p1, 0x17

    .line 311
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(I)V
    :try_end_4f
    .catchall {:try_start_47 .. :try_end_4f} :catchall_d8

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :pswitch_53
    const/16 p1, 0x16

    .line 308
    :try_start_55
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(I)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_d8

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :pswitch_5c
    const/16 p1, 0x15

    .line 305
    :try_start_5e
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(I)V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_d8

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :pswitch_65
    const/16 p1, 0x14

    .line 302
    :try_start_67
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(I)V
    :try_end_6a
    .catchall {:try_start_67 .. :try_end_6a} :catchall_d8

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :pswitch_6e
    const/16 p1, 0x13

    .line 299
    :try_start_70
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(I)V
    :try_end_73
    .catchall {:try_start_70 .. :try_end_73} :catchall_d8

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :pswitch_77
    const/16 p1, 0x4f

    .line 296
    :try_start_79
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(I)V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_d8

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 294
    :pswitch_80
    :try_start_80
    invoke-virtual {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->takeScreenshot()Z

    move-result p0
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_d8

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 292
    :pswitch_88
    :try_start_88
    invoke-virtual {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->lockScreen()Z

    move-result p0
    :try_end_8c
    .catchall {:try_start_88 .. :try_end_8c} :catchall_d8

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    .line 288
    :pswitch_90
    :try_start_90
    invoke-virtual {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->showGlobalActions()V
    :try_end_93
    .catchall {:try_start_90 .. :try_end_93} :catchall_d8

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 284
    :pswitch_97
    :try_start_97
    invoke-virtual {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->expandQuickSettings()V
    :try_end_9a
    .catchall {:try_start_97 .. :try_end_9a} :catchall_d8

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 280
    :pswitch_9e
    :try_start_9e
    invoke-virtual {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->expandNotifications()V
    :try_end_a1
    .catchall {:try_start_9e .. :try_end_a1} :catchall_d8

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 278
    :pswitch_a5
    :try_start_a5
    invoke-virtual {p0}, Lcom/android/server/accessibility/SystemActionPerformer;->openRecents()Z

    move-result p0
    :try_end_a9
    .catchall {:try_start_a5 .. :try_end_a9} :catchall_d8

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :pswitch_ad
    const/4 p1, 0x3

    .line 274
    :try_start_ae
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(I)V
    :try_end_b1
    .catchall {:try_start_ae .. :try_end_b1} :catchall_d8

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :pswitch_b5
    const/4 p1, 0x4

    .line 270
    :try_start_b6
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SystemActionPerformer;->sendDownAndUpKeyEvents(I)V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_d8

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    .line 314
    :goto_bd
    :try_start_bd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d1
    .catchall {:try_start_bd .. :try_end_d1} :catchall_d8

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_d5
    move-exception p0

    .line 264
    :try_start_d6
    monitor-exit v2
    :try_end_d7
    .catchall {:try_start_d6 .. :try_end_d7} :catchall_d5

    :try_start_d7
    throw p0
    :try_end_d8
    .catchall {:try_start_d7 .. :try_end_d8} :catchall_d8

    :catchall_d8
    move-exception p0

    .line 318
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 319
    throw p0

    nop

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_b5
        :pswitch_ad
        :pswitch_a5
        :pswitch_9e
        :pswitch_97
        :pswitch_90
        :pswitch_47
        :pswitch_88
        :pswitch_80
        :pswitch_77
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_47
        :pswitch_6e
        :pswitch_65
        :pswitch_5c
        :pswitch_53
        :pswitch_4a
    .end packed-switch
.end method

.method public registerSystemAction(ILandroid/app/RemoteAction;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_15

    .line 167
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mListener:Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;

    if-eqz p0, :cond_14

    .line 168
    invoke-interface {p0}, Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;->onSystemActionsChanged()V

    :cond_14
    return-void

    :catchall_15
    move-exception p0

    .line 166
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method

.method public final sendDownAndUpKeyEvents(I)V
    .registers 13

    .line 323
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 326
    :try_start_4
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v4, 0x0

    move-object v2, p0

    move v3, p1

    move-wide v5, v9

    move-wide v7, v9

    .line 327
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/SystemActionPerformer;->sendKeyEventIdentityCleared(IIJJ)V

    const/4 v4, 0x1

    .line 329
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    move-object v2, p0

    move v3, p1

    move-wide v5, v9

    .line 328
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/accessibility/SystemActionPerformer;->sendKeyEventIdentityCleared(IIJJ)V
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1f

    .line 331
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 332
    throw p0
.end method

.method public final sendKeyEventIdentityCleared(IIJJ)V
    .registers 20

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/16 v10, 0x8

    const/16 v11, 0x101

    const/4 v12, 0x0

    move-wide/from16 v0, p3

    move-wide/from16 v2, p5

    move v4, p2

    move v5, p1

    .line 336
    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    move-result-object v0

    .line 339
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 340
    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 341
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    return-void
.end method

.method public final showGlobalActions()V
    .registers 1

    .line 382
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mWindowManagerService:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerInternal;->showGlobalActions()V

    return-void
.end method

.method public final takeScreenshot()Z
    .registers 9

    .line 393
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mScreenshotHelperSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_c

    .line 394
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/util/ScreenshotHelper;

    move-object v1, p0

    goto :goto_14

    :cond_c
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper;

    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    move-object v1, v0

    :goto_14
    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x4

    .line 395
    new-instance v6, Landroid/os/Handler;

    .line 397
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v6, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v7, 0x0

    .line 395
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(IZZILandroid/os/Handler;Ljava/util/function/Consumer;)V

    const/4 p0, 0x1

    return p0
.end method

.method public unregisterSystemAction(I)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mSystemActionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mRegisteredSystemActions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_15

    .line 185
    iget-object p0, p0, Lcom/android/server/accessibility/SystemActionPerformer;->mListener:Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;

    if-eqz p0, :cond_14

    .line 186
    invoke-interface {p0}, Lcom/android/server/accessibility/SystemActionPerformer$SystemActionsChangedListener;->onSystemActionsChanged()V

    :cond_14
    return-void

    :catchall_15
    move-exception p0

    .line 184
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method
