.class public Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;
.super Landroid/hardware/ISensorPrivacyManager$Stub;
.source "SensorPrivacyService.java"

# interfaces
.implements Landroid/app/AppOpsManager$OnOpNotedListener;
.implements Landroid/app/AppOpsManager$OnOpStartedListener;
.implements Landroid/os/IBinder$DeathRecipient;
.implements Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sensorprivacy/SensorPrivacyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SensorPrivacyServiceImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;
    }
.end annotation


# instance fields
.field public final mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

.field public mIsConfirmPopupShowing:Z

.field public final mLock:Ljava/lang/Object;

.field public final mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

.field public mSuppressReminders:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/os/UserHandle;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/os/IBinder;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;


# direct methods
.method public static synthetic $r8$lambda$0UzZREkoVHZ_8z5ovkvwBCohbmA(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;ILandroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialog(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$76mpO0qYuRTkSZn_aWvL6Je-Yvs(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZLjava/lang/Integer;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$setToggleSensorPrivacyForProfileGroup$3(IIIZLjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$AsR1ISuD1QLThnVCnQFgV5CXMFk(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIZJZ)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->logSensorPrivacyToggle(IIZJZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$D7ddsNtmM9WodKG8_dDU0r5FRRU(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showConfirmDialog(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$LlJBpMkF9n63_FBm1gdFKHN2er4(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III[JZI)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$setToggleSensorPrivacyUnchecked$2(III[JZI)V

    return-void
.end method

.method public static synthetic $r8$lambda$ROMb8TgwIiFg4iiX82QitALlWxE(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIILcom/android/server/sensorprivacy/SensorState;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$new$0(IIILcom/android/server/sensorprivacy/SensorState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gzpy2ZZsBbiTDwj31f_GvNqblvU(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorUserReminderDialog(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$je1vfT3TrCGF2z3ncygjZIJTZ5E(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZ[JZ)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$setToggleSensorPrivacyUnchecked$1(IIIZ[JZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$sVQAYQEYut4LUurhe-TTCsBJ5mU(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;[ZI[Z[ZI[Z)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$userSwitching$5([ZI[Z[ZI[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$xC3aayHjz8VAzpJ1mLtVUPQv-ZU(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZLjava/lang/Integer;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$setToggleSensorPrivacyForProfileGroupWithConfirmPopup$4(IIIZLjava/lang/Integer;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yURhOR6pwoJuVkqiRPzebPc8Yyg(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;[ZI[Z[ZI[Z)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->lambda$userSwitching$6([ZI[Z[ZI[Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSensorPrivacyStateController(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)Lcom/android/server/sensorprivacy/SensorPrivacyStateController;
    .registers 1

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmIsConfirmPopupShowing(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mIsConfirmPopupShowing:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$misToggleSensorPrivacyEnabledInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III)Z
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogSensorPrivacyToggle(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIZJZ)V
    .registers 7

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->logSensorPrivacyToggle(IIZJZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveSensorUseReminderNotification(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->removeSensorUseReminderNotification(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveSuppressPackageReminderToken(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Landroid/util/Pair;Landroid/os/IBinder;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msensorStrToId(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Ljava/lang/String;)I
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->sensorStrToId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetGlobalRestriction(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IZ)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setGlobalRestriction(IZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetToggleSensorPrivacyUnchecked(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIIZ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$muserSwitching(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->userSwitching(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;)V
    .registers 11

    .line 295
    iput-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-direct {p0}, Landroid/hardware/ISensorPrivacyManager$Stub;-><init>()V

    .line 248
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    .line 261
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    .line 265
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    .line 296
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService;Landroid/os/Looper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 297
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getInstance()Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    const/4 v1, 0x4

    new-array v1, v1, [I

    .line 299
    fill-array-data v1, :array_92

    .line 301
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 302
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManager;

    move-result-object v2

    invoke-virtual {v2, v1, p0}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 306
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;

    invoke-direct {v4, p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$1;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Lcom/android/server/sensorprivacy/SensorPrivacyService;)V

    new-instance v5, Landroid/content/IntentFilter;

    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetACTION_DISABLE_TOGGLE_SENSOR_PRIVACY()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v6, "android.permission.MANAGE_SENSOR_PRIVACY"

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 317
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$2;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;Lcom/android/server/sensorprivacy/SensorPrivacyService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 331
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/pm/UserManagerInternal;->addUserRestrictionsListener(Lcom/android/server/pm/UserManagerInternal$UserRestrictionsListener;)V

    .line 333
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    .line 334
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;)V

    .line 333
    invoke-virtual {p1, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setAllSensorPrivacyListener(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$AllSensorPrivacyListener;)V

    .line 335
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setSensorPrivacyListener(Landroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SensorPrivacyListener;)V

    return-void

    :array_92
    .array-data 4
        0x1b
        0x64
        0x1a
        0x65
    .end array-data
.end method

.method private synthetic lambda$new$0(IIILcom/android/server/sensorprivacy/SensorState;)V
    .registers 5

    .line 337
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    .line 338
    invoke-virtual {p4}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    move-result p4

    .line 337
    invoke-virtual {p0, p2, p1, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    return-void
.end method

.method private synthetic lambda$setToggleSensorPrivacyForProfileGroup$3(IIIZLjava/lang/Integer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 914
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    if-ne p1, v0, :cond_17

    .line 915
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacy(IIIZ)V

    :cond_17
    return-void
.end method

.method private synthetic lambda$setToggleSensorPrivacyForProfileGroupWithConfirmPopup$4(IIIZLjava/lang/Integer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 938
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v0

    if-ne p1, v0, :cond_17

    .line 939
    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacy(IIIZ)V

    :cond_17
    return-void
.end method

.method private synthetic lambda$setToggleSensorPrivacyUnchecked$1(IIIZ[JZ)V
    .registers 14

    if-eqz p6, :cond_32

    .line 798
    iget-object p6, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object p6

    invoke-virtual {p6, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result p6

    if-ne p1, p6, :cond_32

    .line 799
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda4;-><init>()V

    .line 801
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 p2, 0x0

    aget-wide p2, p5, p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v1, p0

    .line 799
    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_32
    return-void
.end method

.method private synthetic lambda$setToggleSensorPrivacyUnchecked$2(III[JZI)V
    .registers 20

    move-object v1, p0

    .line 791
    iget-object v0, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    move v7, p1

    move v8, p2

    move/from16 v9, p3

    .line 792
    invoke-virtual {v0, p1, p2, v9}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object v0

    .line 793
    invoke-virtual {v0}, Lcom/android/server/sensorprivacy/SensorState;->getLastChange()J

    move-result-wide v2

    const/4 v0, 0x0

    aput-wide v2, p4, v0

    .line 794
    iget-object v10, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    iget-object v11, v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    new-instance v12, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;

    move-object v0, v12

    move v2, p2

    move/from16 v3, p6

    move/from16 v4, p3

    move/from16 v5, p5

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZ[J)V

    move-object v1, v10

    move v2, p1

    move v3, p2

    move-object v6, v11

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setState(IIIZLandroid/os/Handler;Lcom/android/server/sensorprivacy/SensorPrivacyStateController$SetStateResultCallback;)V

    return-void
.end method

.method private synthetic lambda$userSwitching$5([ZI[Z[ZI[Z)V
    .registers 10

    const/4 v0, 0x1

    .line 1202
    invoke-virtual {p0, p2, v0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result v1

    const/4 v2, 0x0

    aput-boolean v1, p1, v2

    const/4 p1, 0x2

    .line 1204
    invoke-virtual {p0, p2, v0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result p2

    aput-boolean p2, p3, v2

    .line 1206
    invoke-virtual {p0, p5, v0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result p2

    aput-boolean p2, p4, v2

    .line 1208
    invoke-virtual {p0, p5, v0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result p0

    aput-boolean p0, p6, v2

    return-void
.end method

.method private synthetic lambda$userSwitching$6([ZI[Z[ZI[Z)V
    .registers 10

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 1213
    invoke-virtual {p0, p2, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result v2

    aput-boolean v2, p1, v1

    .line 1215
    invoke-virtual {p0, p2, v0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result p1

    aput-boolean p1, p3, v1

    .line 1217
    invoke-virtual {p0, p5, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result p1

    aput-boolean p1, p4, v1

    .line 1219
    invoke-virtual {p0, p5, v0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabledInternal(III)Z

    move-result p0

    aput-boolean p0, p6, v1

    return-void
.end method


# virtual methods
.method public addSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 2

    .line 1098
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    if-eqz p1, :cond_b

    .line 1102
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->addListener(Landroid/hardware/ISensorPrivacyListener;)V

    return-void

    .line 1100
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "listener cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 2

    .line 1110
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    if-eqz p1, :cond_b

    .line 1114
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->addToggleListener(Landroid/hardware/ISensorPrivacyListener;)V

    return-void

    .line 1112
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public binderDied()V
    .registers 1

    return-void
.end method

.method public binderDied(Landroid/os/IBinder;)V
    .registers 5

    .line 1299
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1300
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 1301
    invoke-virtual {p0, v2, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V

    goto :goto_d

    .line 1303
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public final canChangeToggleSensorPrivacy(II)Z
    .registers 8

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v1, :cond_7

    if-ne p2, v0, :cond_1d

    .line 822
    :cond_7
    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCallStateHelper(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$CallStateHelper;->isInEmergencyCall()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 825
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Can\'t change mic toggle during an emergency call"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 829
    :cond_1d
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->requiresAuthentication()Z

    move-result v3

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/KeyguardManager;

    move-result-object v3

    if-eqz v3, :cond_41

    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/KeyguardManager;

    move-result-object v3

    .line 830
    invoke-virtual {v3, p1}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 831
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Can\'t change mic/cam toggle while device is locked"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_41
    if-ne p2, v1, :cond_5b

    .line 835
    iget-object v3, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v3

    const-string v4, "disallow_microphone_toggle"

    invoke-virtual {v3, p1, v4}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 837
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Can\'t change mic toggle due to admin restriction"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5b
    if-ne p2, v0, :cond_75

    .line 841
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    const-string p2, "disallow_camera_toggle"

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/UserManagerInternal;->getUserRestriction(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_75

    .line 843
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Can\'t change camera toggle due to admin restriction"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_75
    return v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 1313
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1315
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 1319
    :goto_17
    array-length v3, p3

    if-ge v1, v3, :cond_53

    .line 1320
    aget-object v3, p3, v1

    if-eqz v3, :cond_53

    .line 1321
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_53

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_2d

    goto :goto_53

    :cond_2d
    add-int/lit8 v1, v1, 0x1

    const-string v4, "--proto"

    .line 1325
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    const/4 v2, 0x1

    goto :goto_17

    .line 1328
    :cond_39
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; use -h for help"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_17

    .line 1332
    :cond_53
    :goto_53
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz v2, :cond_69

    .line 1335
    :try_start_59
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance p3, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p3, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p0, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    goto :goto_7f

    :cond_69
    const-string p1, "SENSOR PRIVACY MANAGER STATE (dumpsys sensor_privacy)"

    .line 1338
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance p1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance p3, Landroid/util/IndentingPrintWriter;

    const-string v2, "  "

    invoke-direct {p3, p2, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {p1, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    :try_end_7f
    .catchall {:try_start_59 .. :try_end_7f} :catchall_83

    .line 1345
    :goto_7f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_83
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1346
    throw p0
.end method

.method public final enforceManageSensorPrivacyPermission()V
    .registers 3

    const-string v0, "android.permission.MANAGE_SENSOR_PRIVACY"

    const-string v1, "Changing sensor privacy requires the following permission: android.permission.MANAGE_SENSOR_PRIVACY"

    .line 1004
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforcePermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceObserveSensorPrivacyPermission()V
    .registers 7

    .line 1014
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x104003a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1015
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmPackageManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    const-wide/32 v3, 0x100000

    const/4 v5, 0x0

    .line 1016
    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/content/pm/PackageManagerInternal;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    if-ne v1, v0, :cond_22

    return-void

    :cond_22
    const-string v0, "android.permission.OBSERVE_SENSOR_PRIVACY"

    const-string v1, "Observing sensor privacy changes requires the following permission: android.permission.OBSERVE_SENSOR_PRIVACY"

    .line 1020
    invoke-virtual {p0, v0, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforcePermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforcePermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1026
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_d

    return-void

    .line 1029
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enqueueSensorUseReminderDialog(ILandroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 10

    .line 566
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;ILandroid/os/UserHandle;Ljava/lang/String;)V

    .line 568
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_66

    .line 569
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    const/4 p3, 0x2

    const/4 v1, 0x1

    if-ne p4, v1, :cond_27

    .line 570
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    :cond_27
    if-ne p4, p3, :cond_49

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    .line 572
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_49

    .line 573
    :cond_3a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 574
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_50

    .line 576
    :cond_49
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 578
    :goto_50
    iget-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    new-instance p2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p2, p0, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    const-wide/16 p2, 0x1f4

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 584
    :cond_66
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    .line 585
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 12

    .line 559
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    new-instance v1, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda6;-><init>()V

    .line 560
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 561
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    .line 559
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final getSensorUseActivityName(Landroid/util/ArraySet;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 627
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x2

    .line 628
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 629
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1040396

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 633
    :cond_2d
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x1040395

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isCombinedToggleSensorPrivacyEnabled(I)Z
    .registers 4

    const/4 v0, 0x1

    .line 1059
    invoke-virtual {p0, v0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x2

    .line 1060
    invoke-virtual {p0, v1, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isToggleSensorPrivacyEnabled(II)Z

    move-result p0

    if-eqz p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :cond_10
    :goto_10
    return v0
.end method

.method public isSensorPrivacyEnabled()Z
    .registers 1

    .line 1037
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 1038
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getAllSensorState()Z

    move-result p0

    return p0
.end method

.method public final isTelevision(Landroid/content/Context;)Z
    .registers 2

    .line 748
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0xf

    const/4 p1, 0x4

    if-ne p0, p1, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public isToggleSensorPrivacyEnabled(II)Z
    .registers 4

    .line 1051
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 1053
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p0

    invoke-virtual {v0, p1, p0, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object p0

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public final isToggleSensorPrivacyEnabledInternal(III)Z
    .registers 4

    .line 1066
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->getState(III)Lcom/android/server/sensorprivacy/SensorState;

    move-result-object p0

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorState;->isEnabled()Z

    move-result p0

    return p0
.end method

.method public final logSensorPrivacyToggle(IIZJZ)V
    .registers 15

    .line 851
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->getCurrentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p4

    const-wide/32 p4, 0xea60

    div-long/2addr v0, p4

    const-wide/16 p4, 0x0

    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const/4 p0, 0x0

    const/4 p4, 0x2

    const/4 p5, 0x1

    if-eqz p6, :cond_16

    move v4, p0

    goto :goto_1b

    :cond_16
    if-eqz p3, :cond_1a

    move v4, p4

    goto :goto_1b

    :cond_1a
    move v4, p5

    :goto_1b
    if-eq p2, p5, :cond_23

    if-eq p2, p4, :cond_21

    move v3, p0

    goto :goto_24

    :cond_21
    move v3, p4

    goto :goto_24

    :cond_23
    move v3, p5

    :goto_24
    const/4 p2, 0x3

    if-eq p1, p5, :cond_31

    if-eq p1, p4, :cond_2f

    if-eq p1, p2, :cond_2d

    move v5, p0

    goto :goto_32

    :cond_2d
    move v5, p5

    goto :goto_32

    :cond_2f
    move v5, p4

    goto :goto_32

    :cond_31
    move v5, p2

    :goto_32
    const/16 v2, 0x17d

    .line 901
    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIJ)V

    return-void
.end method

.method public onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 7

    and-int/lit8 p4, p5, 0xd

    if-nez p4, :cond_5

    return-void

    :cond_5
    const/4 p4, 0x1

    if-ne p6, p4, :cond_2c

    const/16 p5, 0x1b

    if-eq p1, p5, :cond_1c

    const/16 p5, 0x64

    if-ne p1, p5, :cond_11

    goto :goto_1c

    :cond_11
    const/16 p4, 0x1a

    if-eq p1, p4, :cond_1b

    const/16 p4, 0x65

    if-ne p1, p4, :cond_1a

    goto :goto_1b

    :cond_1a
    return-void

    :cond_1b
    :goto_1b
    const/4 p4, 0x2

    .line 383
    :cond_1c
    :goto_1c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p5

    .line 385
    :try_start_20
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->onSensorUseStarted(ILjava/lang/String;I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    .line 387
    invoke-static {p5, p6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {p5, p6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 388
    throw p0

    :cond_2c
    return-void
.end method

.method public onOpStarted(IILjava/lang/String;Ljava/lang/String;II)V
    .registers 7

    .line 359
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->onOpNoted(IILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public final onSensorUseStarted(ILjava/lang/String;I)V
    .registers 16

    .line 399
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 400
    invoke-virtual {p0, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isCombinedToggleSensorPrivacyEnabled(I)Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    :cond_11
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_16

    return-void

    .line 410
    :cond_16
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 411
    :try_start_19
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 412
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Suppressed sensor privacy reminder for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    monitor-exit v1

    return-void

    .line 417
    :cond_4c
    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_19 .. :try_end_4d} :catchall_236

    .line 427
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 429
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmActivityTaskManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/ActivityTaskManager;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/app/ActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v2

    .line 430
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_65
    const/4 v7, 0x1

    if-ge v6, v4, :cond_df

    .line 432
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 434
    iget-boolean v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v9, :cond_dc

    .line 435
    iget-object v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b2

    .line 437
    iget-object v9, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v9}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmIsFlipModel(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Z

    move-result v9

    if-eqz v9, :cond_a4

    iget v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-ne v9, v7, :cond_a4

    .line 438
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "popup will not be displayed at subscreen at flip model : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dc

    .line 442
    :cond_a4
    iget-boolean v7, v8, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v7, :cond_ae

    .line 444
    iget p1, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    .line 449
    :cond_ae
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_dc

    .line 450
    :cond_b2
    iget-object v9, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Landroid/util/ArraySet;

    new-array v7, v7, [Ljava/lang/Integer;

    .line 451
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v5

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v10, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v10}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->getSensorUseActivityName(Landroid/util/ArraySet;)Ljava/lang/String;

    move-result-object v7

    .line 450
    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_dc

    iget-boolean v7, v8, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v7, :cond_dc

    .line 453
    iget v7, v8, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v7, v0, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    :cond_dc
    :goto_dc
    add-int/lit8 v6, v6, 0x1

    goto :goto_65

    .line 461
    :cond_df
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v7, :cond_f1

    .line 462
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    .line 465
    :cond_f1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v7, :cond_fb

    .line 466
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorUseReminderNotification(Landroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    :cond_fb
    if-ne p3, v7, :cond_179

    const-string v1, "com.sec.android.app.voicenote"

    .line 471
    invoke-static {p2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_179

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/KeyguardManager;

    move-result-object v1

    if-eqz v1, :cond_179

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmKeyguardManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/KeyguardManager;

    move-result-object v1

    .line 472
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_179

    .line 473
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "display toast for voicenote in lock state "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :try_start_122
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 476
    invoke-virtual {v1, p2, v5, v0}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v2

    .line 477
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 478
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v4

    const v6, 0x1040c31

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v1, v8, v5

    invoke-virtual {v4, v6, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 482
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V
    :try_end_160
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_122 .. :try_end_160} :catch_161

    goto :goto_179

    .line 484
    :catch_161
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot show sensor use toast for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_179
    :goto_179
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmActivityManager(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/ActivityManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    .line 493
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :goto_187
    if-ge v5, v2, :cond_1a6

    .line 495
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 497
    iget-boolean v4, v3, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v4, :cond_1a3

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a3

    .line 498
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->showSensorUseReminderNotification(Landroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    :cond_1a3
    add-int/lit8 v5, v5, 0x1

    goto :goto_187

    .line 503
    :cond_1a6
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v1

    .line 504
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    .line 505
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 503
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1c5

    .line 508
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 509
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 514
    :cond_1c5
    :try_start_1c5
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmActivityManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/ActivityManagerInternal;->getUidCapability(I)I

    move-result v1
    :try_end_1cf
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c5 .. :try_end_1cf} :catch_22d

    const/4 v3, -0x1

    if-ne p3, v7, :cond_1f4

    .line 521
    const-class v4, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 522
    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/voice/VoiceInteractionManagerInternal;

    if-eqz v4, :cond_1e6

    .line 524
    invoke-virtual {v4, p2}, Landroid/service/voice/VoiceInteractionManagerInternal;->hasActiveSession(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1e6

    .line 525
    invoke-virtual {p0, v3, v0, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    .line 529
    :cond_1e6
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1f4

    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_1f4

    .line 531
    invoke-virtual {p0, v3, v0, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    :cond_1f4
    const/4 v4, 0x2

    if-ne p3, v4, :cond_204

    .line 536
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_204

    and-int/2addr v1, v4

    if-eqz v1, :cond_204

    .line 538
    invoke-virtual {p0, v3, v0, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    .line 542
    :cond_204
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " started using sensor "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " but no activity or foreground service was running. The user will not be informed. System components should check if sensor privacy is enabled for the sensor before accessing it."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_22d
    move-exception p0

    .line 516
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :catchall_236
    move-exception p0

    .line 417
    :try_start_237
    monitor-exit v1
    :try_end_238
    .catchall {:try_start_237 .. :try_end_238} :catchall_236

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 1376
    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$6;

    invoke-direct {v0, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$6;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1430
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onUserRestrictionsChanged(ILandroid/os/Bundle;Landroid/os/Bundle;)V
    .registers 11

    const-string v0, "disallow_camera_toggle"

    .line 345
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 346
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v2, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    .line 347
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    :cond_17
    const-string v0, "disallow_microphone_toggle"

    .line 349
    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_2e

    .line 350
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2e

    const/4 v1, 0x1

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    .line 351
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    :cond_2e
    return-void
.end method

.method public removeSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 2

    .line 1122
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    if-eqz p1, :cond_b

    .line 1126
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->removeListener(Landroid/hardware/ISensorPrivacyListener;)V

    return-void

    .line 1124
    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "listener cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeSensorUseReminderNotification(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    const/16 p1, 0x41

    goto :goto_8

    :cond_6
    const/16 p1, 0x42

    .line 741
    :goto_8
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/app/NotificationManager;

    .line 742
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 743
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public final removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Landroid/os/UserHandle;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 1270
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1271
    :try_start_3
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    .line 1272
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_27

    .line 1274
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No tokens for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    monitor-exit v0

    return-void

    .line 1278
    :cond_27
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3d

    const/4 v2, 0x0

    .line 1280
    invoke-interface {p2, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1282
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_5d

    .line 1283
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    .line 1286
    :cond_3d
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not remove sensor use reminder suppression token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    :cond_5d
    :goto_5d
    monitor-exit v0

    return-void

    :catchall_5f
    move-exception p0

    monitor-exit v0
    :try_end_61
    .catchall {:try_start_3 .. :try_end_61} :catchall_5f

    throw p0
.end method

.method public removeToggleSensorPrivacyListener(Landroid/hardware/ISensorPrivacyListener;)V
    .registers 2

    .line 1134
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    if-eqz p1, :cond_b

    .line 1138
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->removeToggleListener(Landroid/hardware/ISensorPrivacyListener;)V

    return-void

    .line 1136
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "listener cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requiresAuthentication()Z
    .registers 2

    .line 1176
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceObserveSensorPrivacyPermission()V

    .line 1177
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101ab

    .line 1178
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method public final sensorStrToId(Ljava/lang/String;)I
    .registers 3

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    :cond_4
    const-string v0, "camera"

    .line 1361
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string/jumbo v0, "microphone"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    return p0

    :cond_16
    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x2

    return p0
.end method

.method public final setGlobalRestriction(IZ)V
    .registers 5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    goto :goto_5d

    .line 1254
    :cond_7
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object p1

    const/16 v0, 0x1a

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 1256
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object p1

    const/16 v0, 0x65

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, v0, p2, p0}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    goto :goto_5d

    .line 1244
    :cond_2a
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object p1

    const/16 v0, 0x1b

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 1246
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object p1

    const/16 v0, 0x64

    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    .line 1250
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/app/AppOpsManagerInternal;

    move-result-object p1

    const/16 v0, 0x78

    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmAppOpsRestrictionToken(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, v0, p2, p0}, Landroid/app/AppOpsManagerInternal;->setGlobalRestriction(IZLandroid/os/IBinder;)V

    :goto_5d
    return-void
.end method

.method public setSensorPrivacy(Z)V
    .registers 2

    .line 759
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    .line 760
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->setAllSensorState(Z)V

    return-void
.end method

.method public setToggleSensorPrivacy(IIIZ)V
    .registers 11

    .line 776
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_c

    .line 778
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p1

    :cond_c
    move v2, p1

    .line 780
    invoke-virtual {p0, v2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->canChangeToggleSensorPrivacy(II)Z

    move-result p1

    if-nez p1, :cond_14

    return-void

    :cond_14
    const/4 v1, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v5, p4

    .line 784
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setToggleSensorPrivacyUnchecked(IIIIZ)V

    return-void
.end method

.method public setToggleSensorPrivacyForProfileGroup(IIIZ)V
    .registers 12

    .line 908
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_c

    .line 910
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p1

    .line 912
    :cond_c
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    .line 913
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda7;

    move-object v1, v0

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZ)V

    invoke-static {p1, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$mforAllUsers(Lcom/android/server/sensorprivacy/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    return-void
.end method

.method public setToggleSensorPrivacyForProfileGroupWithConfirmPopup(IIIZ)V
    .registers 12

    .line 924
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    if-eqz p4, :cond_27

    .line 926
    iget-boolean p4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mIsConfirmPopupShowing:Z

    if-nez p4, :cond_7a

    const/4 p4, 0x1

    .line 927
    iput-boolean p4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mIsConfirmPopupShowing:Z

    .line 928
    iget-object p4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    .line 929
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 928
    invoke-static {v0, p0, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_7a

    :cond_27
    const/4 v0, -0x2

    if-ne p1, v0, :cond_30

    .line 933
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p1

    .line 935
    :cond_30
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmUserManagerInternal(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/pm/UserManagerInternal;->getProfileParentId(I)I

    move-result v3

    .line 936
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setToggleSensorPrivacyForProfileGroupWithConfirmPopup parentId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " sensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    new-instance v0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda11;

    move-object v1, v0

    move-object v2, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;IIIZ)V

    invoke-static {p1, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$mforAllUsers(Lcom/android/server/sensorprivacy/SensorPrivacyService;Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;)V

    :cond_7a
    :goto_7a
    return-void
.end method

.method public final setToggleSensorPrivacyUnchecked(IIIIZ)V
    .registers 16

    const/4 v0, 0x1

    new-array v6, v0, [J

    .line 790
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance v9, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p4

    move v7, p5

    move v8, p3

    invoke-direct/range {v1 .. v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III[JZI)V

    invoke-virtual {v0, v9}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->atomic(Ljava/lang/Runnable;)V

    if-nez p5, :cond_26

    .line 808
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 811
    :try_start_1a
    invoke-virtual {p0, p4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->removeSensorUseReminderNotification(I)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_21

    .line 813
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_26

    :catchall_21
    move-exception p0

    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 814
    throw p0

    :cond_26
    :goto_26
    return-void
.end method

.method public final showConfirmDialog(III)V
    .registers 11

    .line 947
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "showConfirmDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p3, v2, :cond_2b

    .line 951
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x1040e2a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 952
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040e29

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    :cond_2b
    if-ne p3, v1, :cond_48

    .line 954
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x1040e2c

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 955
    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040e2b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_49

    :cond_48
    move-object v2, v0

    .line 957
    :goto_49
    new-instance v3, Landroid/app/AlertDialog$Builder;

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v5, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v5}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x1030223

    invoke-direct {v4, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 958
    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 959
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x1040e2d

    new-instance v3, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$4;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;III)V

    .line 960
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 p2, 0x1040000

    new-instance p3, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;

    invoke-direct {p3, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$3;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    .line 978
    invoke-virtual {p1, p2, p3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 983
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 984
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 985
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/16 p3, 0x8e8

    invoke-virtual {p2, p3}, Landroid/view/Window;->setType(I)V

    .line 986
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 987
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 p3, p3, 0x10

    iput p3, p2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 989
    new-instance p2, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$5;

    invoke-direct {p2, p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$5;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 995
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public showSensorUseDialog(I)V
    .registers 5

    .line 1183
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_20

    .line 1186
    invoke-virtual {p0, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isCombinedToggleSensorPrivacyEnabled(I)Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    const/4 v0, -0x1

    .line 1189
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result v1

    .line 1190
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const-string v2, "android"

    .line 1189
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enqueueSensorUseReminderDialogAsync(ILandroid/os/UserHandle;Ljava/lang/String;I)V

    return-void

    .line 1184
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only be called by the system uid"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final showSensorUseReminderNotification(Landroid/os/UserHandle;Ljava/lang/String;I)V
    .registers 16

    .line 655
    :try_start_0
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    .line 656
    invoke-virtual {v0, p2, v1, p1}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v2

    .line 657
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2
    :try_end_1d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1d} :catch_134

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2c

    const v2, 0x108052a

    const v3, 0x1040d2a

    const v4, 0x1040c31

    const/16 v5, 0x41

    goto :goto_37

    :cond_2c
    const v2, 0x1080385

    const v3, 0x1040d28

    const v4, 0x1040c30

    const/16 v5, 0x42

    .line 679
    :goto_37
    iget-object v6, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v6}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/app/NotificationManager;

    .line 680
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 681
    new-instance v7, Landroid/app/NotificationChannel;

    iget-object v8, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    .line 683
    invoke-virtual {v8}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x1040d27

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    const-string/jumbo v10, "sensor_privacy"

    invoke-direct {v7, v10, v8, v9}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v8, 0x0

    .line 685
    invoke-virtual {v7, v8, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 686
    invoke-virtual {v7, v0}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 687
    invoke-virtual {v7, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 688
    invoke-virtual {v7, v1}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 690
    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 692
    iget-object v7, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v7}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {v7, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    .line 694
    iget-object v7, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v7}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 695
    iget-object v7, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v7}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v7

    new-array v8, v0, [Ljava/lang/Object;

    aput-object p2, v8, v1

    invoke-virtual {v7, v4, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p2

    .line 701
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v1

    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.settings.PRIVACY_SETTINGS"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v7, 0xc000000

    invoke-static {v1, p3, v4, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 706
    iget-object v4, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-virtual {v4}, Lcom/android/server/SystemService;->getUiContext()Landroid/content/Context;

    move-result-object v4

    const v8, 0x1040d29

    invoke-virtual {v4, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 708
    iget-object v8, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v8}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetACTION_DISABLE_TOGGLE_SENSOR_PRIVACY()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v11, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v11}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v11

    .line 710
    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    sget-object v11, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    .line 711
    invoke-virtual {v9, v11, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    const-string v11, "android.intent.extra.USER"

    .line 712
    invoke-virtual {v9, v11, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    .line 708
    invoke-static {v8, p3, p1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 715
    new-instance p3, Landroid/app/Notification$Builder;

    iget-object v7, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {v7}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object v7

    invoke-direct {p3, v7, v10}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 717
    invoke-virtual {p3, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 718
    invoke-virtual {p3, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 719
    invoke-virtual {p2, v2}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    move-result-object p2

    new-instance p3, Landroid/app/Notification$Action$Builder;

    invoke-direct {p3, v2, v4, p1}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 721
    invoke-virtual {p3}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p1

    .line 720
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 722
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    new-instance p2, Landroid/app/Notification$TvExtender;

    invoke-direct {p2}, Landroid/app/Notification$TvExtender;-><init>()V

    .line 723
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 724
    iget-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->isTelevision(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_122

    const-wide/16 p2, 0x1

    goto :goto_124

    :cond_122
    const-wide/16 p2, 0x0

    :goto_124
    invoke-virtual {p1, p2, p3}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 728
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 730
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 715
    invoke-virtual {v6, v5, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .line 659
    :catch_134
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot show sensor use notification for "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final showSensorUserReminderDialog(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)V
    .registers 7

    .line 589
    iget-object v0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 590
    iget-object v1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mQueuedSensorUseReminderDialogs:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_19

    .line 592
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Unable to show sensor use dialog because sensor set is null. Was the dialog queue modified from outside the handler thread?"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 596
    :cond_19
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 598
    invoke-virtual {p0, v0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->getSensorUseActivityName(Landroid/util/ArraySet;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    .line 597
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 600
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 601
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->-$$Nest$fgetmTaskId(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    const/4 v3, 0x1

    .line 602
    invoke-virtual {v2, v3, v3}, Landroid/app/ActivityOptions;->setTaskOverlay(ZZ)V

    const/high16 v4, 0x840000

    .line 604
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 607
    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;->-$$Nest$fgetmPackageName(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$SensorUseReminderDialogInfo;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-ne p1, v3, :cond_59

    .line 609
    sget-object p1, Landroid/hardware/SensorPrivacyManager;->EXTRA_SENSOR:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_65

    .line 610
    :cond_59
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v4, 0x2

    if-ne p1, v4, :cond_75

    .line 611
    sget-object p1, Landroid/hardware/SensorPrivacyManager;->EXTRA_ALL_SENSORS:Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 618
    :goto_65
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void

    .line 614
    :cond_75
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to show sensor use dialog for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sensors"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public supportsSensorToggle(II)Z
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_25

    if-ne p2, v1, :cond_18

    .line 1074
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x11101d6

    .line 1075
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_18
    if-ne p2, v0, :cond_4f

    .line 1077
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string p1, "SEC_FLOATING_FEATURE_CAMERA_SUPPORT_PRIVACY_TOGGLE"

    .line 1078
    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_25
    if-ne p1, v0, :cond_4f

    if-ne p2, v1, :cond_3b

    .line 1082
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x11101d4

    .line 1083
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    :cond_3b
    if-ne p2, v0, :cond_4f

    .line 1085
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmContext(Lcom/android/server/sensorprivacy/SensorPrivacyService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x11101d3

    .line 1086
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0

    .line 1089
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid arguments. toggleType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sensor="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public suppressToggleSensorPrivacyReminders(IILandroid/os/IBinder;Z)V
    .registers 6

    .line 1144
    invoke-virtual {p0}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->enforceManageSensorPrivacyPermission()V

    const/4 v0, -0x2

    if-ne p1, v0, :cond_c

    .line 1146
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->this$0:Lcom/android/server/sensorprivacy/SensorPrivacyService;

    invoke-static {p1}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/sensorprivacy/SensorPrivacyService;)I

    move-result p1

    .line 1148
    :cond_c
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1152
    iget-object p1, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mLock:Ljava/lang/Object;

    monitor-enter p1

    if-eqz p4, :cond_4a

    const/4 p2, 0x0

    .line 1155
    :try_start_22
    invoke-interface {p3, p0, p2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_25} :catch_3e
    .catchall {:try_start_22 .. :try_end_25} :catchall_51

    .line 1161
    :try_start_25
    iget-object p2, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    if-nez p2, :cond_3a

    .line 1163
    new-instance p2, Ljava/util/ArrayList;

    const/4 p4, 0x1

    invoke-direct {p2, p4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1164
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSuppressReminders:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    :cond_3a
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4f

    :catch_3e
    move-exception p0

    .line 1157
    invoke-static {}, Lcom/android/server/sensorprivacy/SensorPrivacyService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Could not suppress sensor use reminder"

    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1158
    monitor-exit p1

    return-void

    .line 1169
    :cond_4a
    iget-object p0, p0, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    invoke-virtual {p0, v0, p3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->removeSuppressPackageReminderToken(Landroid/util/Pair;Landroid/os/IBinder;)V

    .line 1171
    :goto_4f
    monitor-exit p1

    return-void

    :catchall_51
    move-exception p0

    monitor-exit p1
    :try_end_53
    .catchall {:try_start_25 .. :try_end_53} :catchall_51

    throw p0
.end method

.method public final userSwitching(II)V
    .registers 19

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    const/4 v11, 0x2

    new-array v12, v11, [Z

    new-array v13, v11, [Z

    new-array v14, v11, [Z

    new-array v15, v11, [Z

    .line 1201
    iget-object v7, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance v6, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v14

    move/from16 v3, p1

    move-object v4, v15

    move-object v5, v12

    move-object v11, v6

    move/from16 v6, p2

    move-object v10, v7

    move-object v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;[ZI[Z[ZI[Z)V

    invoke-virtual {v10, v11}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->atomic(Ljava/lang/Runnable;)V

    .line 1212
    iget-object v10, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mSensorPrivacyStateController:Lcom/android/server/sensorprivacy/SensorPrivacyStateController;

    new-instance v11, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda9;

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;[ZI[Z[ZI[Z)V

    invoke-virtual {v10, v11}, Lcom/android/server/sensorprivacy/SensorPrivacyStateController;->atomic(Ljava/lang/Runnable;)V

    const/16 v0, -0x2710

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v9, v0, :cond_47

    aget-boolean v3, v14, v1

    aget-boolean v4, v12, v1

    if-ne v3, v4, :cond_47

    aget-boolean v3, v14, v2

    aget-boolean v4, v12, v2

    if-eq v3, v4, :cond_44

    goto :goto_47

    :cond_44
    move/from16 v5, p2

    goto :goto_67

    .line 1225
    :cond_47
    :goto_47
    iget-object v3, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    aget-boolean v4, v12, v1

    move/from16 v5, p2

    invoke-virtual {v3, v5, v2, v2, v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    .line 1227
    iget-object v3, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    aget-boolean v4, v12, v2

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6, v2, v4}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    aget-boolean v3, v12, v1

    if-nez v3, :cond_63

    aget-boolean v3, v12, v2

    if-eqz v3, :cond_61

    goto :goto_63

    :cond_61
    move v3, v1

    goto :goto_64

    :cond_63
    :goto_63
    move v3, v2

    .line 1229
    :goto_64
    invoke-virtual {v8, v2, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setGlobalRestriction(IZ)V

    :goto_67
    if-eq v9, v0, :cond_75

    aget-boolean v0, v15, v1

    aget-boolean v3, v13, v1

    if-ne v0, v3, :cond_75

    aget-boolean v0, v15, v2

    aget-boolean v3, v13, v2

    if-eq v0, v3, :cond_90

    .line 1233
    :cond_75
    iget-object v0, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    aget-boolean v3, v13, v1

    const/4 v4, 0x2

    invoke-virtual {v0, v5, v2, v4, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    .line 1235
    iget-object v0, v8, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->mHandler:Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;

    aget-boolean v3, v13, v2

    invoke-virtual {v0, v5, v4, v4, v3}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyHandler;->handleSensorPrivacyChanged(IIIZ)V

    aget-boolean v0, v13, v1

    if-nez v0, :cond_8c

    aget-boolean v0, v13, v2

    if-eqz v0, :cond_8d

    :cond_8c
    move v1, v2

    .line 1237
    :cond_8d
    invoke-virtual {v8, v4, v1}, Lcom/android/server/sensorprivacy/SensorPrivacyService$SensorPrivacyServiceImpl;->setGlobalRestriction(IZ)V

    :cond_90
    return-void
.end method
