.class public Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;
.super Landroid/content/BroadcastReceiver;
.source "PolicyWarningUIController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/PolicyWarningUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationController"
.end annotation


# static fields
.field public static final RECORD_SEPARATOR:C = ':'


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mNotifiedA11yServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public mSendNotification:Z

.field public final mSentA11yServiceNotification:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$z8x2T_a-FCue63nBDAjjsqHtSYg(Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;Landroid/content/ComponentName;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->lambda$cancelSentNotifications$0(Landroid/content/ComponentName;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 221
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 212
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mSentA11yServiceNotification:Ljava/util/List;

    .line 222
    iput-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 223
    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private synthetic lambda$cancelSentNotifications$0(Landroid/content/ComponentName;)V
    .registers 3

    .line 423
    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 424
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3ed

    .line 423
    invoke-virtual {p0, p1, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final cancelSentNotifications()V
    .registers 3

    .line 423
    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mSentA11yServiceNotification:Ljava/util/List;

    new-instance v1, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 425
    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mSentA11yServiceNotification:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getEnabledServiceInfos()Ljava/util/List;
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 416
    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    const/4 v0, -0x1

    .line 418
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onNotificationCanceled(ILandroid/content/ComponentName;)V
    .registers 4

    .line 325
    iget v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mCurrentUserId:I

    if-eq p1, v0, :cond_5

    return-void

    .line 329
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_12

    .line 330
    iget-object p2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->writeNotifiedServiceList(ILandroid/util/ArraySet;)V

    :cond_12
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 228
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.extra.COMPONENT_NAME"

    .line 229
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 231
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_81

    if-nez v0, :cond_15

    goto :goto_81

    :cond_15
    const-string v1, "android.intent.extra.TIME"

    const-wide/16 v2, 0x0

    .line 234
    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_27

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v2, v1, v4

    :cond_27
    const/4 v1, 0x0

    const-string v4, "android.intent.extra.USER_ID"

    .line 237
    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 238
    sget-object v1, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_SEND_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 239
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->trySendNotification(ILandroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_81

    .line 241
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_SHOWN:I

    .line 240
    invoke-static {p0, p1, v2, v3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logNonA11yToolServiceWarningReported(Ljava/lang/String;IJ)V

    goto :goto_81

    .line 245
    :cond_46
    sget-object v1, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_A11Y_SETTINGS:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 246
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->tryLaunchSettings(ILandroid/content/ComponentName;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 248
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    sget v1, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->ACCESSIBILITY_PRIVACY_WARNING_STATUS_CLICKED:I

    .line 247
    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/accessibility/util/AccessibilityStatsLogUtils;->logNonA11yToolServiceWarningReported(Ljava/lang/String;IJ)V

    .line 252
    :cond_5d
    iget-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3ed

    invoke-virtual {p1, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 254
    iget-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mSentA11yServiceNotification:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 255
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->onNotificationCanceled(ILandroid/content/ComponentName;)V

    goto :goto_81

    .line 256
    :cond_71
    sget-object v1, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_DISMISS_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_81

    .line 257
    iget-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mSentA11yServiceNotification:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 258
    invoke-virtual {p0, p2, v0}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->onNotificationCanceled(ILandroid/content/ComponentName;)V

    :cond_81
    :goto_81
    return-void
.end method

.method public onServicesDisabled(ILandroid/util/ArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->removeAll(Landroid/util/ArraySet;)Z

    move-result p2

    if-eqz p2, :cond_d

    .line 272
    iget-object p2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->writeNotifiedServiceList(ILandroid/util/ArraySet;)V

    :cond_d
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3

    .line 263
    invoke-virtual {p0}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->cancelSentNotifications()V

    .line 264
    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 265
    iput p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mCurrentUserId:I

    .line 266
    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->readNotifiedServiceList(I)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    return-void
.end method

.method public final readNotifiedServiceList(I)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 375
    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "notified_non_accessibility_category_services"

    .line 375
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    .line 379
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 380
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    return-object p0

    .line 383
    :cond_19
    new-instance p1, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v0, 0x3a

    invoke-direct {p1, v0}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 385
    invoke-interface {p1, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 387
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 388
    invoke-interface {p1}, Landroid/text/TextUtils$StringSplitter;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 389
    :cond_2c
    :goto_2c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 390
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 391
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2c

    .line 394
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2c

    :cond_42
    return-object p0
.end method

.method public final sendNotification(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;)V
    .registers 14

    .line 337
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->ACCESSIBILITY_SECURITY_POLICY:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x1080342

    .line 339
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v2, 0x10807aa

    .line 342
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 343
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1060081

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string/jumbo v2, "recommendation"

    .line 345
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    const v3, 0x1040ed4

    .line 348
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p3, v5, v6

    const v7, 0x1040ed3

    .line 350
    invoke-virtual {v2, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 349
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v5, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object p3, v8, v6

    .line 354
    invoke-virtual {v5, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 353
    invoke-virtual {v2, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p3

    .line 352
    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object p3

    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 357
    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p3

    .line 358
    invoke-virtual {p3, v4}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p3

    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_DISMISS_NOTIFICATION:Ljava/lang/String;

    .line 360
    invoke-static {v1, p1, v2, p2}, Lcom/android/server/accessibility/PolicyWarningUIController;->createPendingIntent(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 359
    invoke-virtual {p3, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p3

    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/accessibility/PolicyWarningUIController;->ACTION_A11Y_SETTINGS:Ljava/lang/String;

    .line 363
    invoke-static {v1, p1, v2, p2}, Lcom/android/server/accessibility/PolicyWarningUIController;->createPendingIntent(Landroid/content/Context;ILjava/lang/String;Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object p1

    .line 362
    invoke-virtual {p3, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    if-eqz p4, :cond_90

    .line 366
    invoke-virtual {v0, p4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 368
    :cond_90
    iget-object p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x3ed

    .line 370
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 368
    invoke-virtual {p1, p3, p4, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 371
    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mSentA11yServiceNotification:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setSendingNotification(Z)V
    .registers 2

    .line 429
    iput-boolean p1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mSendNotification:Z

    return-void
.end method

.method public final tryLaunchSettings(ILandroid/content/ComponentName;)Z
    .registers 6

    .line 310
    iget v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mCurrentUserId:I

    if-eq p1, v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 313
    :cond_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ACCESSIBILITY_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v1, 0x10008000

    .line 314
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 315
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "android.intent.extra.COMPONENT_NAME"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-string/jumbo p2, "start_time_to_log_a11y_tool"

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 317
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p2

    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 318
    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    .line 317
    invoke-virtual {p2, v1}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    move-result-object p2

    .line 318
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    .line 319
    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {v1, v0, p2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 320
    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    const-class p1, Landroid/app/StatusBarManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    invoke-virtual {p0}, Landroid/app/StatusBarManager;->collapsePanels()V

    const/4 p0, 0x1

    return p0
.end method

.method public final trySendNotification(ILandroid/content/ComponentName;)Z
    .registers 9

    .line 277
    iget v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mCurrentUserId:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    return v1

    .line 281
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mSendNotification:Z

    if-nez v0, :cond_b

    return v1

    .line 285
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->getEnabledServiceInfos()Ljava/util/List;

    move-result-object v0

    move v2, v1

    .line 286
    :goto_10
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_72

    .line 287
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 288
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    .line 289
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    .line 288
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6f

    .line 290
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isAccessibilityTool()Z

    move-result v0

    if-nez v0, :cond_72

    iget-object v0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mNotifiedA11yServices:Landroid/util/ArraySet;

    .line 291
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_72

    .line 293
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 294
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 293
    invoke-virtual {v0, v1}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 295
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    .line 296
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 295
    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 297
    iget-object v2, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x1050000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 300
    invoke-static {v1, v2, v2}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 299
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->sendNotification(ILandroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/Bitmap;)V

    const/4 p0, 0x1

    return p0

    :cond_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_72
    return v1
.end method

.method public final writeNotifiedServiceList(ILandroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 402
    :goto_6
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_23

    if-lez v1, :cond_13

    const/16 v2, 0x3a

    .line 404
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 406
    :cond_13
    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 407
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 409
    :cond_23
    iget-object p0, p0, Lcom/android/server/accessibility/PolicyWarningUIController$NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 411
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "notified_non_accessibility_category_services"

    .line 409
    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method
