.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;
.super Ljava/lang/Object;
.source "SemFpProtectiveFilmGuide.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;
    }
.end annotation


# static fields
.field public static final BAD_QUALITY_COUNT_GUIDED:I = -0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final BAD_QUALITY_COUNT_THRESHOLDS:I = 0x1e
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final BULLET_POINT:Ljava/lang/String; = "\n\u2022 "

.field public static final NOTIFICATION_ACTION_CLOSE_BUTTON:Ljava/lang/String; = "close"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NOTIFICATION_ACTION_KEY:Ljava/lang/String; = "protective_film_notification_action"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NOTIFICATION_ACTION_SETTINGS_BUTTON:Ljava/lang/String; = "settings"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NOTIFICATION_ACTION_USER:Ljava/lang/String; = "user"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "FingerprintProtectiveFilmNotificationChannel"

.field public static final NOTIFICATION_ID:I = 0x1

.field public static final NOTIFICATION_INTENT_ACTION_NAME:Ljava/lang/String; = "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NOTIFICATION_TAG:Ljava/lang/String; = "FingerprintServiceProtectiveFilm"

.field public static final TAG:Ljava/lang/String; = "SemFpProtectiveFilmGuide"


# instance fields
.field public final mBadQualityCount:Landroid/util/SparseIntArray;

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

.field public mNotificationActionReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;


# direct methods
.method public static bridge synthetic -$$Nest$mcancelNotification(Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->cancelNotification(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleGoToSettingAction(Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->handleGoToSettingAction(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;)V
    .registers 4

    .line 139
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    .line 146
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    .line 147
    iput-object p3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    .line 148
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final cancelNotification(I)V
    .registers 4

    .line 256
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "notification"

    .line 257
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 259
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const-string v0, "FingerprintServiceProtectiveFilm"

    const/4 v1, 0x1

    .line 258
    invoke-virtual {p0, v0, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public final closeNotificationPanel()V
    .registers 4

    .line 275
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sem_statusbar"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/SemStatusBarManager;

    .line 277
    :try_start_b
    invoke-virtual {p0}, Landroid/app/SemStatusBarManager;->collapsePanels()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_2a

    :catch_f
    move-exception p0

    .line 279
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeNotificationPanel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method public getBadQualityCount(I)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 295
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public final handleGoToSettingAction(I)V
    .registers 4

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->cancelNotification(I)V

    .line 264
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->closeNotificationPanel()V

    .line 265
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.FINGERPRINT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 266
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    :try_start_12
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1b} :catch_1c

    goto :goto_38

    :catch_1c
    move-exception p0

    .line 270
    sget-object p1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleGoToSettingAction: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method

.method public final isBadQualityEvent(II)Z
    .registers 5

    const/4 p0, 0x1

    if-eq p1, p0, :cond_e

    const/4 v0, 0x6

    const/4 v1, 0x0

    if-eq p1, v0, :cond_8

    return v1

    :cond_8
    const/16 p1, 0x3eb

    if-ne p2, p1, :cond_d

    goto :goto_e

    :cond_d
    move p0, v1

    :cond_e
    :goto_e
    return p0
.end method

.method public onAcquire(IIII)V
    .registers 8

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    return-void

    .line 160
    :cond_4
    invoke-virtual {p0, p3, p4}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->isBadQualityEvent(II)Z

    move-result p1

    if-eqz p1, :cond_6a

    .line 161
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    .line 162
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_42

    .line 163
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAcquire["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    const/4 p3, -0x1

    if-ne p1, p3, :cond_46

    return-void

    :cond_46
    add-int/lit8 p1, p1, 0x1

    .line 170
    iget-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    invoke-virtual {p4, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 p4, 0x1e

    if-ne p1, p4, :cond_6a

    .line 172
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    iget-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p4, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;->isAlreadyGuided(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_65

    .line 173
    invoke-virtual {p0, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->showNotification(I)V

    .line 174
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    iget-object p4, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p4, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;->setGuideStateToNotificationDoneByAuthentication(Landroid/content/Context;I)V

    .line 176
    :cond_65
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_6a
    return-void
.end method

.method public onEnrollStarted(I)V
    .registers 5

    .line 195
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 196
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnrollStarted["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_20
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->cancelNotification(I)V

    return-void
.end method

.method public onEnrolled(I)V
    .registers 5

    .line 183
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_20

    .line 184
    sget-object v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onEnrolled["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_20
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;->isAlreadyGuided(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 187
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_37

    .line 189
    :cond_31
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    :goto_37
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 2

    .line 152
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public final registerBroadcastForNotificationAction()V
    .registers 5

    .line 228
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_23

    .line 229
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$1;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.samsung.android.server.biometrics.BIOMETRICS_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 250
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 251
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    .line 250
    invoke-static {v1, p0, v0, v2, v3}, Lcom/android/server/biometrics/Utils;->registerBroadcastAsUser(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/UserHandle;Landroid/os/Handler;)V

    :cond_23
    return-void
.end method

.method public final showNotification(I)V
    .registers 7

    .line 212
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->registerBroadcastForNotificationAction()V

    .line 213
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 216
    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    const v3, 0x1040d0e

    .line 217
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "FingerprintProtectiveFilmNotificationChannel"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 220
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 221
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    .line 222
    invoke-virtual {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;->getNotification(Landroid/content/Context;I)Landroid/app/Notification;

    move-result-object p0

    .line 223
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const-string v1, "FingerprintServiceProtectiveFilm"

    const/4 v2, 0x1

    .line 221
    invoke-virtual {v0, v1, v2, p0, p1}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public startMonitoring()V
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mServiceProvider:Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;

    invoke-interface {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/ServiceProvider;->semAddEventConsumer(Lcom/android/server/biometrics/sensors/fingerprint/SemFpEventConsumer;)V

    return-void
.end method

.method public updateGuideStatus(I)V
    .registers 4

    .line 288
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide$Injector;->isAlreadyGuided(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 289
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpProtectiveFilmGuide;->mBadQualityCount:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    :cond_10
    return-void
.end method
