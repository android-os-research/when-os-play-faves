.class public Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
.super Lcom/android/server/notification/ManagedServices;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationAssistants"
.end annotation


# static fields
.field public static final ATT_TYPES:Ljava/lang/String; = "types"

.field public static final TAG_ALLOWED_ADJUSTMENT_TYPES:Ljava/lang/String; = "s_allowed_adjustments"

.field public static final TAG_ALLOWED_ADJUSTMENT_TYPES_OLD:Ljava/lang/String; = "q_allowed_adjustments"

.field public static final TAG_ENABLED_NOTIFICATION_ASSISTANTS:Ljava/lang/String; = "enabled_assistants"


# instance fields
.field public mAllowedAdjustments:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDefaultFromConfig:Landroid/content/ComponentName;

.field public final mLock:Ljava/lang/Object;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$-bR5NhNPIE-ji2CH17r3A47mMTE(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;ZZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantExpansionChangedLocked$6(Ljava/lang/String;ZZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1j5r0o_uYl47TiY5sHfp8i1FM-c(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantNotificationClicked$11(Ljava/lang/String;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6lc-oTEIucujqQxoVbFh91vtQ0Y(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$disallowAdjustmentType$1(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FzawhyH3en63LkrhpQo8D4ilBag(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$allowAdjustmentType$0(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$GFQMD8QE3JzHrKIWFYwKLLFSTHc(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantNotificationDirectReplyLocked$7(Ljava/lang/String;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P-83BsqYHz3wMgg5WjRNRXghByg(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantSnoozedLocked$10(Ljava/lang/String;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y5nQ0-qS9Zd_gf45FH6_0xSPJfM(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$onPanelHidden$4(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$c1VyVKrTdwMTYGFowax9UiOlF84(Ljava/util/function/BiConsumer;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantLocked$12(Ljava/util/function/BiConsumer;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kwTqvPHoM6SXKSUUHhJA5bwSETw(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$onPanelRevealed$3(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oAV6wGldB-oni-AiBe4-pC2KrgI(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;ZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantVisibilityChangedLocked$5(Ljava/lang/String;ZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pDWexJx-2nhWzMi7F3_Fhe56uOk(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Ljava/lang/CharSequence;ZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantSuggestedReplySent$8(Ljava/lang/String;Ljava/lang/CharSequence;ZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$shwiDeOfiV1MYiG8ZY-ARgF_wCQ(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$onNotificationsSeenLocked$2(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wonhjqQvJSBN2WR2IJteYFYGOb4(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Landroid/app/Notification$Action;ZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantActionClicked$9(Ljava/lang/String;Landroid/app/Notification$Action;ZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAssistantSnoozedLocked(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantSnoozedLocked(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monNotificationEnqueuedLocked(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/NotificationRecord;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onNotificationEnqueuedLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V
    .registers 6

    .line 12054
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 12055
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    .line 11983
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    .line 11985
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    const/4 p1, 0x0

    .line 11988
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mDefaultFromConfig:Landroid/content/ComponentName;

    const/4 p1, 0x0

    .line 12059
    :goto_17
    sget-object p2, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    array-length p3, p2

    if-ge p1, p3, :cond_26

    .line 12060
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    aget-object p2, p2, p1

    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_17

    :cond_26
    return-void
.end method

.method private synthetic lambda$allowAdjustmentType$0(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 2

    .line 12171
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyCapabilitiesChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method private synthetic lambda$disallowAdjustmentType$1(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 2

    .line 12180
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyCapabilitiesChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method private synthetic lambda$notifyAssistantActionClicked$9(Ljava/lang/String;Landroid/app/Notification$Action;ZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 6

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    goto :goto_5

    :cond_4
    const/4 p3, 0x0

    .line 12399
    :goto_5
    :try_start_5
    invoke-interface {p4, p1, p2, p3}, Landroid/service/notification/INotificationListener;->onActionClicked(Ljava/lang/String;Landroid/app/Notification$Action;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_21

    :catch_9
    move-exception p1

    .line 12406
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unable to notify assistant (snoozed): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    return-void
.end method

.method private synthetic lambda$notifyAssistantExpansionChangedLocked$6(Ljava/lang/String;ZZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 6

    .line 12341
    :try_start_0
    invoke-interface {p4, p1, p2, p3}, Landroid/service/notification/INotificationListener;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1c

    :catch_4
    move-exception p1

    .line 12343
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unable to notify assistant (expanded): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method public static synthetic lambda$notifyAssistantLocked$12(Ljava/util/function/BiConsumer;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 3

    .line 12506
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$notifyAssistantNotificationClicked$11(Ljava/lang/String;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 5

    .line 12441
    :try_start_0
    invoke-interface {p2, p1}, Landroid/service/notification/INotificationListener;->onNotificationClicked(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1c

    :catch_4
    move-exception p1

    .line 12443
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to notify assistant (clicked): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method private synthetic lambda$notifyAssistantNotificationDirectReplyLocked$7(Ljava/lang/String;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 5

    .line 12358
    :try_start_0
    invoke-interface {p2, p1}, Landroid/service/notification/INotificationListener;->onNotificationDirectReply(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1c

    :catch_4
    move-exception p1

    .line 12360
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to notify assistant (expanded): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method private synthetic lambda$notifyAssistantSnoozedLocked$10(Ljava/lang/String;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 5

    .line 12424
    :try_start_0
    invoke-interface {p2, p3, p1}, Landroid/service/notification/INotificationListener;->onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1c

    :catch_4
    move-exception p1

    .line 12427
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to notify assistant (snoozed): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method private synthetic lambda$notifyAssistantSuggestedReplySent$8(Ljava/lang/String;Ljava/lang/CharSequence;ZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 6

    if-eqz p3, :cond_4

    const/4 p3, 0x1

    goto :goto_5

    :cond_4
    const/4 p3, 0x0

    .line 12376
    :goto_5
    :try_start_5
    invoke-interface {p4, p1, p2, p3}, Landroid/service/notification/INotificationListener;->onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_8} :catch_9

    goto :goto_21

    :catch_9
    move-exception p1

    .line 12383
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unable to notify assistant (snoozed): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_21
    return-void
.end method

.method private synthetic lambda$notifyAssistantVisibilityChangedLocked$5(Ljava/lang/String;ZLandroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V
    .registers 5

    .line 12321
    :try_start_0
    invoke-interface {p3, p1, p2}, Landroid/service/notification/INotificationListener;->onNotificationVisibilityChanged(Ljava/lang/String;Z)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_1c

    :catch_4
    move-exception p1

    .line 12323
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "unable to notify assistant (visible): "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method private synthetic lambda$onNotificationsSeenLocked$2(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V
    .registers 3

    .line 12211
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifySeen(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$onPanelHidden$4(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 5

    .line 12236
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 12238
    :try_start_4
    invoke-interface {v0}, Landroid/service/notification/INotificationListener;->onPanelHidden()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_20

    :catch_8
    move-exception v0

    .line 12240
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to notify assistant (panel hidden): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-void
.end method

.method private synthetic lambda$onPanelRevealed$3(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .registers 5

    .line 12221
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 12223
    :try_start_4
    invoke-interface {v0, p2}, Landroid/service/notification/INotificationListener;->onPanelRevealed(I)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_20

    :catch_8
    move-exception p2

    .line 12225
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to notify assistant (panel revealed): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-void
.end method


# virtual methods
.method public addApprovedList(Ljava/lang/String;IZLjava/lang/String;)V
    .registers 8

    .line 12043
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, ":"

    .line 12044
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 12045
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1a

    .line 12046
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string v1, "More than one approved assistants"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 12047
    aget-object p1, v0, p1

    .line 12050
    :cond_1a
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ManagedServices;->addApprovedList(Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method public allowAdjustmentType(Ljava/lang/String;)V
    .registers 5

    .line 12167
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12168
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12169
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2d

    .line 12170
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 12171
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    :cond_2c
    return-void

    :catchall_2d
    move-exception p0

    .line 12169
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 12079
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object p0

    return-object p0
.end method

.method public checkType(Landroid/os/IInterface;)Z
    .registers 2

    .line 12084
    instance-of p0, p1, Landroid/service/notification/INotificationListener;

    return p0
.end method

.method public clearApprovedList(Ljava/lang/String;)V
    .registers 3

    .line 12159
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_10

    :catch_c
    move-exception p0

    .line 12161
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_10
    return-void
.end method

.method public clearDefaults()V
    .registers 2

    .line 12535
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 12536
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public disallowAdjustmentType(Ljava/lang/String;)V
    .registers 5

    .line 12176
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12177
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12178
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_2d

    .line 12179
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 12180
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_11

    :cond_2c
    return-void

    :catchall_2d
    move-exception p0

    .line 12178
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public ensureFilters(Landroid/content/pm/ServiceInfo;I)V
    .registers 3

    return-void
.end method

.method public getAllowedAssistantAdjustments()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12185
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12186
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12187
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12188
    monitor-exit v0

    return-object v1

    :catchall_f
    move-exception p0

    .line 12189
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .registers 2

    .line 12066
    new-instance p0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    const-string/jumbo v0, "notification assistant"

    .line 12067
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    const-string v0, "android.service.notification.NotificationAssistantService"

    .line 12068
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    const-string v0, "enabled_assistants"

    .line 12069
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    const-string v0, "enabled_notification_assistant"

    .line 12070
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    const-string v0, "android.permission.BIND_NOTIFICATION_ASSISTANT_SERVICE"

    .line 12071
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    const-string v0, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    .line 12072
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    const v0, 0x1040884

    .line 12073
    iput v0, p0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    return-object p0
.end method

.method public getDefaultFromConfig()Landroid/content/ComponentName;
    .registers 2

    .line 12026
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mDefaultFromConfig:Landroid/content/ComponentName;

    if-nez v0, :cond_8

    const/4 v0, 0x0

    .line 12027
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->loadDefaultsFromConfig(Z)V

    .line 12029
    :cond_8
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mDefaultFromConfig:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getRequiredPermission()Ljava/lang/String;
    .registers 1

    const-string p0, "android.permission.REQUEST_NOTIFICATION_ASSISTANT_SERVICE"

    return-object p0
.end method

.method public hasUserSet(I)Z
    .registers 2

    .line 12247
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_16

    .line 12248
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public isAdjustmentAllowed(Ljava/lang/String;)Z
    .registers 3

    .line 12193
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12194
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 12195
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 12511
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isVerboseLogEnabled()Z
    .registers 2

    const-string/jumbo p0, "notification_assistant"

    const/4 v0, 0x2

    .line 12556
    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public loadDefaultsFromConfig()V
    .registers 2

    const/4 v0, 0x1

    .line 11992
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->loadDefaultsFromConfig(Z)V

    return-void
.end method

.method public loadDefaultsFromConfig(Z)V
    .registers 8

    .line 11996
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 11997
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040314

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    .line 11999
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 11997
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    move v2, v1

    .line 12000
    :goto_21
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_5f

    .line 12002
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 12003
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_3d

    .line 12005
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 12007
    :cond_3d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_44

    goto :goto_5c

    :cond_44
    const/high16 v5, 0xc0000

    .line 12010
    invoke-virtual {p0, v4, v5, v1}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v4

    .line 12012
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    if-eqz p1, :cond_5a

    .line 12016
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/notification/ManagedServices;->addDefaultComponentOrPackage(Ljava/lang/String;)V

    goto :goto_5c

    .line 12019
    :cond_5a
    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mDefaultFromConfig:Landroid/content/ComponentName;

    :cond_5c
    :goto_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_5f
    return-void
.end method

.method public notifyAssistantActionClicked(Lcom/android/server/notification/NotificationRecord;Landroid/app/Notification$Action;Z)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 12392
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 12394
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 12395
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result p1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Landroid/app/Notification$Action;Z)V

    const/4 p2, 0x1

    .line 12393
    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;IZLjava/util/function/BiConsumer;)V

    return-void
.end method

.method public notifyAssistantExpansionChangedLocked(Landroid/service/notification/StatusBarNotification;IZZ)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 12334
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 12335
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, v0, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;ZZ)V

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;IZLjava/util/function/BiConsumer;)V

    return-void
.end method

.method public notifyAssistantFeedbackReceived(Lcom/android/server/notification/NotificationRecord;Landroid/os/Bundle;)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 12450
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 12452
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 12453
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 12454
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v4

    .line 12453
    invoke-virtual {v3, v0, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 12455
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result v3

    if-eqz v3, :cond_30

    const/4 v3, 0x1

    goto :goto_31

    :cond_30
    const/4 v3, 0x0

    :goto_31
    if-eqz v3, :cond_c

    .line 12457
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v3, Landroid/service/notification/INotificationListener;

    .line 12459
    :try_start_37
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mmakeRankingUpdateLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v2

    .line 12460
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2, p2}, Landroid/service/notification/INotificationListener;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/service/notification/NotificationRankingUpdate;Landroid/os/Bundle;)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_44} :catch_45

    goto :goto_c

    :catch_45
    move-exception v2

    .line 12462
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to notify assistant (feedback): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :cond_5e
    return-void
.end method

.method public final notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;IZLjava/util/function/BiConsumer;)V
    .registers 13
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/StatusBarNotification;",
            "IZ",
            "Ljava/util/function/BiConsumer<",
            "Landroid/service/notification/INotificationListener;",
            "Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;",
            ">;)V"
        }
    .end annotation

    .line 12483
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    .line 12487
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isVerboseLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 12489
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyAssistantLocked() called with: sbn = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], sameUserOnly = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "], callback = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12493
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_41
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 12494
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, p1, p2, v3}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v4

    if-eqz v4, :cond_63

    if-eqz p3, :cond_61

    .line 12495
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result v4

    if-eqz v4, :cond_63

    :cond_61
    const/4 v4, 0x1

    goto :goto_64

    :cond_63
    const/4 v4, 0x0

    :goto_64
    if-eqz v1, :cond_85

    .line 12497
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyAssistantLocked info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " snbVisible="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    if-nez v4, :cond_88

    goto :goto_41

    .line 12502
    :cond_88
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v4, Landroid/service/notification/INotificationListener;

    .line 12503
    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 12504
    new-instance v5, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v5, v3}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 12506
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda4;

    invoke-direct {v6, p4, v4, v5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda4;-><init>(Ljava/util/function/BiConsumer;Landroid/service/notification/INotificationListener;Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;)V

    invoke-virtual {v3, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_41

    :cond_a4
    return-void
.end method

.method public notifyAssistantNotificationClicked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 12434
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 12436
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 12437
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result p1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 12435
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;IZLjava/util/function/BiConsumer;)V

    return-void
.end method

.method public notifyAssistantNotificationDirectReplyLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 12351
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 12353
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 12354
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result p1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 12352
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;IZLjava/util/function/BiConsumer;)V

    return-void
.end method

.method public final notifyAssistantSnoozedLocked(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 12419
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 12420
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result p1

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 12418
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;IZLjava/util/function/BiConsumer;)V

    return-void
.end method

.method public notifyAssistantSuggestedReplySent(Landroid/service/notification/StatusBarNotification;ILjava/lang/CharSequence;Z)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 12369
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 12370
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;IZLjava/util/function/BiConsumer;)V

    return-void
.end method

.method public notifyAssistantVisibilityChangedLocked(Lcom/android/server/notification/NotificationRecord;Z)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 12311
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 12312
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_23

    .line 12313
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyAssistantVisibilityChangedLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12316
    :cond_23
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 12317
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result p1

    const/4 v2, 0x1

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda8;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Z)V

    .line 12315
    invoke-virtual {p0, v1, p1, v2, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;IZLjava/util/function/BiConsumer;)V

    return-void
.end method

.method public final notifyCapabilitiesChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 5

    .line 12256
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 12258
    :try_start_4
    invoke-interface {v0}, Landroid/service/notification/INotificationListener;->onAllowedAdjustmentsChanged()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_20

    :catch_8
    move-exception v0

    .line 12260
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to notify assistant (capabilities): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-void
.end method

.method public final notifySeen(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12266
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 12268
    :try_start_4
    invoke-interface {v0, p2}, Landroid/service/notification/INotificationListener;->onNotificationsSeen(Ljava/util/List;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_20

    :catch_8
    move-exception p2

    .line 12270
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to notify assistant (seen): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_20
    return-void
.end method

.method public final onNotificationEnqueuedLocked(Lcom/android/server/notification/NotificationRecord;)V
    .registers 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 12276
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isVerboseLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    .line 12278
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNotificationEnqueuedLocked() called with: r = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12280
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 12282
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2e
    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 12283
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 12284
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v5

    .line 12283
    invoke-virtual {v4, v1, v5, v3}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 12285
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result v4

    if-eqz v4, :cond_52

    const/4 v4, 0x1

    goto :goto_53

    :cond_52
    const/4 v4, 0x0

    :goto_53
    if-eqz v4, :cond_2e

    .line 12287
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v4, v5, v1}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    .line 12288
    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v5, Landroid/service/notification/INotificationListener;

    .line 12289
    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 12290
    new-instance v6, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v6, v4}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    if-eqz v0, :cond_81

    .line 12294
    :try_start_6b
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "calling onNotificationEnqueuedWithChannel "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12297
    :cond_81
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mmakeRankingUpdateLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v3

    .line 12298
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-interface {v5, v6, v4, v3}, Landroid/service/notification/INotificationListener;->onNotificationEnqueuedWithChannel(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_8e
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_8e} :catch_8f

    goto :goto_2e

    :catch_8f
    move-exception v3

    .line 12301
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unable to notify assistant (enqueued): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    :cond_a8
    return-void
.end method

.method public onNotificationsSeenLocked(Ljava/util/ArrayList;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)V"
        }
    .end annotation

    .line 12199
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 12200
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12201
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_21
    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 12202
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 12203
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v7

    .line 12202
    invoke-virtual {v5, v6, v7, v1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 12204
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result v5

    if-eqz v5, :cond_49

    const/4 v5, 0x1

    goto :goto_4a

    :cond_49
    const/4 v5, 0x0

    :goto_4a
    if-eqz v5, :cond_21

    .line 12206
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 12210
    :cond_54
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 12211
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v3

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_69
    return-void
.end method

.method public onPanelHidden()V
    .registers 5

    .line 12234
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 12235
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_23
    return-void
.end method

.method public onPanelRevealed(I)V
    .registers 6

    .line 12219
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 12220
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v2

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    :cond_23
    return-void
.end method

.method public onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 2

    .line 12089
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->registerGuestService(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mNotificationLock"
        }
    .end annotation

    .line 12101
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    iget p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->unregisterService(Landroid/os/IInterface;I)V

    return-void
.end method

.method public onUserUnlocked(I)V
    .registers 5

    .line 12106
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    const/4 v0, 0x1

    .line 12109
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    return-void
.end method

.method public readExtraTag(Ljava/lang/String;Landroid/util/TypedXmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "q_allowed_adjustments"

    .line 12129
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    const-string/jumbo v0, "s_allowed_adjustments"

    .line 12130
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7b

    :cond_12
    const-string/jumbo v0, "types"

    .line 12131
    invoke-static {p2, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 12132
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12133
    :try_start_1c
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 12134
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    .line 12135
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_36
    const-string/jumbo v1, "q_allowed_adjustments"

    .line 12137
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7a

    .line 12138
    iget-boolean p1, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string v1, "Migrate allowed adjustments."

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12139
    :cond_4a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5f

    .line 12140
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6f

    const-string/jumbo p1, "key_contextual_actions"

    .line 12141
    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_5d
    .catchall {:try_start_1c .. :try_end_5d} :catchall_7c

    if-nez p1, :cond_6f

    .line 12143
    :cond_5f
    :try_start_5f
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_5f .. :try_end_6a} :catch_6b
    .catchall {:try_start_5f .. :try_end_6a} :catchall_7c

    goto :goto_6f

    :catch_6b
    move-exception p1

    .line 12145
    :try_start_6c
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 12148
    :cond_6f
    :goto_6f
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    sget-object p1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    .line 12149
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 12148
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 12151
    :cond_7a
    monitor-exit v0

    :cond_7b
    return-void

    :catchall_7c
    move-exception p0

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_6c .. :try_end_7e} :catchall_7c

    throw p0
.end method

.method public resetDefaultAssistantsIfNecessary()V
    .registers 6

    .line 12515
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 12516
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 12517
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 12518
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->hasUserSet(I)Z

    move-result v2

    if-nez v2, :cond_a

    .line 12519
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->isNASMigrationDone(I)Z

    move-result v2

    if-nez v2, :cond_34

    .line 12520
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultFromConfig()V

    .line 12521
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->setNASMigrationDone(I)V

    .line 12523
    :cond_34
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Approving default notification assistant for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12524
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->setDefaultAssistantForUser(I)V

    goto :goto_a

    :cond_50
    return-void
.end method

.method public resetDefaultFromConfig()V
    .registers 1

    .line 12530
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->clearDefaults()V

    .line 12531
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->loadDefaultsFromConfig()V

    return-void
.end method

.method public setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)V
    .registers 9

    if-eqz p4, :cond_23

    .line 12544
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v0

    .line 12545
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    .line 12546
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12547
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    return-void

    .line 12548
    :cond_1d
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p2, v2, p5}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V

    .line 12552
    :cond_23
    invoke-super/range {p0 .. p5}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)V

    return-void
.end method

.method public setUserSet(IZ)V
    .registers 3

    .line 12252
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public upgradeUserSet()V
    .registers 5

    .line 12034
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 12035
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 12036
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v2, :cond_36

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_36

    const/4 v2, 0x1

    goto :goto_37

    :cond_36
    const/4 v2, 0x0

    :goto_37
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_3f
    return-void
.end method

.method public writeExtraXmlTags(Landroid/util/TypedXmlSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12120
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "s_allowed_adjustments"

    const/4 v2, 0x0

    .line 12121
    invoke-interface {p1, v2, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v1, "types"

    const-string v3, ","

    .line 12122
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    invoke-static {v3, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v2, v1, p0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo p0, "s_allowed_adjustments"

    .line 12123
    invoke-interface {p1, v2, p0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12124
    monitor-exit v0

    return-void

    :catchall_20
    move-exception p0

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw p0
.end method
