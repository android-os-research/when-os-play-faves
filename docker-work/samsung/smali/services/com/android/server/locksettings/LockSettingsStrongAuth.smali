.class public Lcom/android/server/locksettings/LockSettingsStrongAuth;
.super Ljava/lang/Object;
.source "LockSettingsStrongAuth.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;,
        Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;,
        Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;,
        Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEFAULT_NON_STRONG_BIOMETRIC_IDLE_TIMEOUT_MS:J = 0xdbba00L

.field public static final DEFAULT_NON_STRONG_BIOMETRIC_TIMEOUT_MS:J = 0x5265c00L

.field public static final MSG_NO_LONGER_REQUIRE_STRONG_AUTH:I = 0x6

.field public static final MSG_REFRESH_STRONG_AUTH_TIMEOUT:I = 0xa

.field public static final MSG_REGISTER_TRACKER:I = 0x2

.field public static final MSG_REMOVE_USER:I = 0x4

.field public static final MSG_REQUIRE_STRONG_AUTH:I = 0x1

.field public static final MSG_SCHEDULE_NON_STRONG_BIOMETRIC_IDLE_TIMEOUT:I = 0x9

.field public static final MSG_SCHEDULE_NON_STRONG_BIOMETRIC_TIMEOUT:I = 0x7

.field public static final MSG_SCHEDULE_STRONG_AUTH_TIMEOUT:I = 0x5

.field public static final MSG_STRONG_BIOMETRIC_UNLOCK:I = 0x8

.field public static final MSG_UNREGISTER_TRACKER:I = 0x3

.field public static final NON_STRONG_BIOMETRIC_IDLE_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsPrimaryAuth.nonStrongBiometricIdleTimeoutForUser"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NON_STRONG_BIOMETRIC_IDLE_TIMEOUT_TEST:Ljava/lang/String; = "persist.lock.non_strong_biometric_idle_timeout"

.field public static final NON_STRONG_BIOMETRIC_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsPrimaryAuth.nonStrongBiometricTimeoutForUser"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final NON_STRONG_BIOMETRIC_TIMEOUT_TEST:Ljava/lang/String; = "persist.lock.non_strong_biometric_timeout"

.field public static final STRONG_AUTH_TIMEOUT_ALARM_TAG:Ljava/lang/String; = "LockSettingsStrongAuth.timeoutForUser"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final STRONG_AUTH_TIMEOUT_TEST:Ljava/lang/String; = "persist.lock.strong_auth_timeout"

.field public static final TAG:Ljava/lang/String; = "LockSettings"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mDefaultIsNonStrongBiometricAllowed:Z

.field public final mDefaultStrongAuthFlags:I

.field public final mHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

.field public final mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mStrongAuthForUser:Landroid/util/SparseIntArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mTrackers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/trust/IStrongAuthTracker;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$mhandleAddStrongAuthTracker(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleNoLongerRequireStrongAuth(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleNoLongerRequireStrongAuth(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRefreshStrongAuthTimeout(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRefreshStrongAuthTimeout(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRemoveStrongAuthTracker(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/app/trust/IStrongAuthTracker;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRemoveUser(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRemoveUser(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleRequireStrongAuth(Lcom/android/server/locksettings/LockSettingsStrongAuth;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuth(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleScheduleNonStrongBiometricIdleTimeout(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleNonStrongBiometricIdleTimeout(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleScheduleNonStrongBiometricTimeout(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleNonStrongBiometricTimeout(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleScheduleStrongAuthTimeout(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleScheduleStrongAuthTimeout(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStrongBiometricUnlock(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleStrongBiometricUnlock(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 122
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    invoke-direct {v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    .line 93
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    .line 95
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    .line 98
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    .line 102
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 106
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultIsNonStrongBiometricAllowed:Z

    .line 647
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;

    .line 648
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$1;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    .line 127
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    .line 128
    iput-object p2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    .line 129
    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getDefaultStrongAuthFlags(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    .line 130
    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    .line 133
    invoke-virtual {p2, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-void
.end method


# virtual methods
.method public final cancelNonStrongBiometricAlarmListener(I)V
    .registers 6

    .line 363
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 364
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;

    if-eqz v0, :cond_24

    const-wide/16 v1, 0x0

    const-string/jumbo v3, "lockscreen.non_strong_bio_timeout"

    .line 369
    invoke-virtual {p0, v3, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->updateStrongAuthTimeoutInfo(Ljava/lang/String;JI)V

    .line 372
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 374
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_24
    return-void
.end method

.method public final cancelNonStrongBiometricIdleAlarmListener(I)V
    .registers 6

    .line 382
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 383
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;

    if-eqz v0, :cond_1b

    const-wide/16 v1, 0x0

    const-string/jumbo v3, "lockscreen.non_strong_bio_idle_timeout"

    .line 388
    invoke-virtual {p0, v3, v1, v2, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->updateStrongAuthTimeoutInfo(Ljava/lang/String;JI)V

    .line 391
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    :cond_1b
    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 10

    const-string v0, "PrimaryAuthFlags state:"

    .line 687
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 688
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 689
    :goto_a
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const-string/jumbo v3, "userId="

    if-ge v1, v2, :cond_42

    .line 690
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 691
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 692
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", primaryAuthFlags="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 694
    :cond_42
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 695
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "NonStrongBiometricAllowed state:"

    .line 697
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 698
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    move v1, v0

    .line 699
    :goto_51
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_82

    .line 700
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    .line 701
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 702
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", allowed="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_51

    .line 704
    :cond_82
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 705
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v1, "strong auth timeout state:"

    .line 708
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 710
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy/MM/dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 711
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v3, "lockscreen.strong_bio_timeout"

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricStrongAuthTimeout(Ljava/lang/String;I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_c6

    .line 713
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "strong biometric timeout:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 715
    :cond_c6
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v3, "lockscreen.non_strong_bio_timeout"

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricStrongAuthTimeout(Ljava/lang/String;I)J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-eqz v6, :cond_f1

    .line 717
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "non strong biometric timeout:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 719
    :cond_f1
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string/jumbo v2, "lockscreen.non_strong_bio_idle_timeout"

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricStrongAuthTimeout(Ljava/lang/String;I)J

    move-result-wide v2

    cmp-long p0, v2, v4

    if-eqz p0, :cond_11c

    .line 721
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "non strong biometric idle timeout:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 723
    :cond_11c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 724
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final getRequiredNonStrongBiometricIdleTimeout()J
    .registers 7

    const-string/jumbo v0, "persist.lock.non_strong_biometric_idle_timeout"

    const-wide/16 v1, 0x0

    .line 750
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 751
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    const-string/jumbo v0, "ro.build.tags"

    const-string v5, ""

    .line 752
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "test-keys"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    cmp-long v0, v3, v1

    if-eqz v0, :cond_22

    goto :goto_25

    :cond_22
    const-wide/32 v3, 0xdbba00

    .line 751
    :goto_25
    invoke-virtual {p0, v3, v4}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getNextAlarmTimeMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRequiredNonStrongBiometricTimeout()J
    .registers 7

    const-string/jumbo v0, "persist.lock.non_strong_biometric_timeout"

    const-wide/16 v1, 0x0

    .line 740
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 741
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    const-string/jumbo v0, "ro.build.tags"

    const-string v5, ""

    .line 742
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "test-keys"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    cmp-long v0, v3, v1

    if-eqz v0, :cond_22

    goto :goto_25

    :cond_22
    const-wide/32 v3, 0x5265c00

    .line 741
    :goto_25
    invoke-virtual {p0, v3, v4}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getNextAlarmTimeMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getRequiredStrongAuthTimeout(I)J
    .registers 8

    .line 730
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    .line 731
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const-string/jumbo v0, "persist.lock.strong_auth_timeout"

    const-wide/16 v1, 0x0

    .line 732
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-string/jumbo v0, "ro.build.tags"

    const-string v5, ""

    .line 733
    invoke-static {v0, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "test-keys"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2a

    goto :goto_2f

    :cond_2a
    const/4 v0, 0x0

    .line 735
    invoke-virtual {p0, v0, p1}, Landroid/app/admin/DevicePolicyManager;->getRequiredStrongAuthTimeout(Landroid/content/ComponentName;I)J

    move-result-wide v3

    :goto_2f
    return-wide v3
.end method

.method public final handleAddStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 7

    .line 185
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    const/4 v0, 0x0

    move v1, v0

    .line 187
    :goto_7
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const-string v3, "LockSettings"

    if-ge v1, v2, :cond_2a

    .line 188
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 189
    iget-object v4, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 191
    :try_start_1d
    invoke-interface {p1, v4, v2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_27

    :catch_21
    move-exception v2

    const-string v4, "Exception while adding StrongAuthTracker."

    .line 193
    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 197
    :cond_2a
    :goto_2a
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4b

    .line 198
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 199
    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    .line 201
    :try_start_3e
    invoke-interface {p1, v2, v1}, Landroid/app/trust/IStrongAuthTracker;->onIsNonStrongBiometricAllowedChanged(ZI)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_48

    :catch_42
    move-exception v1

    const-string v2, "Exception while adding StrongAuthTracker: IsNonStrongBiometricAllowedChanged."

    .line 203
    invoke-static {v3, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_48
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    :cond_4b
    return-void
.end method

.method public final handleNoLongerRequireStrongAuth(II)V
    .registers 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_18

    const/4 p2, 0x0

    .line 237
    :goto_4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_1b

    .line 238
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 239
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleNoLongerRequireStrongAuthOneUser(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 242
    :cond_18
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleNoLongerRequireStrongAuthOneUser(II)V

    :cond_1b
    return-void
.end method

.method public final handleNoLongerRequireStrongAuthOneUser(II)V
    .registers 5

    .line 247
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    if-eq v0, p1, :cond_14

    .line 250
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 251
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    :cond_14
    return-void
.end method

.method public final handleRefreshStrongAuthTimeout(I)V
    .registers 4

    .line 311
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    if-eqz v0, :cond_15

    .line 313
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->getLatestStrongAuthTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->rescheduleStrongAuthTimeoutAlarm(JI)V

    :cond_15
    return-void
.end method

.method public final handleRemoveStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 2

    .line 210
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public final handleRemoveUser(I)V
    .registers 4

    .line 256
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_12

    .line 258
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 259
    iget v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    .line 262
    :cond_12
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_23

    .line 264
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->removeAt(I)V

    const/4 v0, 0x1

    .line 265
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackersForIsNonStrongBiometricAllowed(ZI)V

    :cond_23
    return-void
.end method

.method public final handleRequireStrongAuth(II)V
    .registers 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_18

    const/4 p2, 0x0

    .line 215
    :goto_4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_1b

    .line 216
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 217
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 220
    :cond_18
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->handleRequireStrongAuthOneUser(II)V

    :cond_1b
    return-void
.end method

.method public final handleRequireStrongAuthOneUser(II)V
    .registers 5

    .line 225
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mDefaultStrongAuthFlags:I

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-nez p1, :cond_c

    const/4 p1, 0x0

    goto :goto_d

    :cond_c
    or-int/2addr p1, v0

    :goto_d
    if-eq v0, p1, :cond_17

    .line 230
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 231
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackers(II)V

    :cond_17
    return-void
.end method

.method public final handleScheduleNonStrongBiometricIdleTimeout(I)V
    .registers 9

    .line 431
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->getRequiredNonStrongBiometricIdleTimeout()J

    move-result-wide v2

    .line 434
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 435
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;

    if-eqz v0, :cond_18

    .line 438
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    goto :goto_26

    .line 440
    :cond_18
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricIdleTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 441
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricIdleTimeoutAlarmListener:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_26
    move-object v5, v0

    const-string/jumbo v0, "lockscreen.non_strong_bio_idle_timeout"

    .line 447
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->updateStrongAuthTimeoutInfo(Ljava/lang/String;JI)V

    .line 450
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const-string v4, "LockSettingsPrimaryAuth.nonStrongBiometricIdleTimeoutForUser"

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public final handleScheduleNonStrongBiometricTimeout(I)V
    .registers 9

    .line 320
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->getRequiredNonStrongBiometricTimeout()J

    move-result-wide v2

    .line 322
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    .line 323
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;

    if-eqz v0, :cond_13

    goto :goto_31

    .line 335
    :cond_13
    new-instance v5, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;

    invoke-direct {v5, p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth$NonStrongBiometricTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;I)V

    .line 336
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mNonStrongBiometricTimeoutAlarmListener:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "lockscreen.non_strong_bio_timeout"

    .line 339
    invoke-virtual {p0, v0, v2, v3, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->updateStrongAuthTimeoutInfo(Ljava/lang/String;JI)V

    .line 343
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-object v6, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const-string v4, "LockSettingsPrimaryAuth.nonStrongBiometricTimeoutForUser"

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 348
    :goto_31
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricIdleAlarmListener(I)V

    return-void
.end method

.method public final handleScheduleStrongAuthTimeout(I)V
    .registers 4

    .line 300
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mInjector:Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;

    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth$Injector;->getElapsedRealtimeMs()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->rescheduleStrongAuthTimeoutAlarm(JI)V

    .line 303
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricAlarmListener(I)V

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricIdleAlarmListener(I)V

    const/4 v0, 0x1

    .line 307
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowed(ZI)V

    return-void
.end method

.method public final handleStrongBiometricUnlock(I)V
    .registers 3

    .line 354
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricAlarmListener(I)V

    .line 356
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->cancelNonStrongBiometricIdleAlarmListener(I)V

    const/4 v0, 0x1

    .line 358
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowed(ZI)V

    return-void
.end method

.method public noLongerRequireStrongAuth(II)V
    .registers 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_f

    if-ltz p2, :cond_6

    goto :goto_f

    .line 522
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "userId must be an explicit user id or USER_ALL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 519
    :cond_f
    :goto_f
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 520
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifyStrongAuthTrackers(II)V
    .registers 7

    .line 455
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_6
    if-lez v0, :cond_27

    add-int/lit8 v0, v0, -0x1

    .line 460
    :try_start_a
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v1, p1, p2}, Landroid/app/trust/IStrongAuthTracker;->onStrongAuthRequiredChanged(II)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_18
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_6

    :catchall_16
    move-exception p1

    goto :goto_21

    :catch_18
    move-exception v1

    :try_start_19
    const-string v2, "LockSettings"

    const-string v3, "Exception while notifying StrongAuthTracker."

    .line 463
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    goto :goto_6

    .line 467
    :goto_21
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 468
    throw p1

    .line 467
    :cond_27
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final notifyStrongAuthTrackersForIsNonStrongBiometricAllowed(ZI)V
    .registers 7

    .line 477
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    :goto_6
    if-lez v0, :cond_27

    add-int/lit8 v0, v0, -0x1

    .line 482
    :try_start_a
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/trust/IStrongAuthTracker;

    invoke-interface {v1, p1, p2}, Landroid/app/trust/IStrongAuthTracker;->onIsNonStrongBiometricAllowedChanged(ZI)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_15} :catch_18
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_6

    :catchall_16
    move-exception p1

    goto :goto_21

    :catch_18
    move-exception v1

    :try_start_19
    const-string v2, "LockSettings"

    const-string v3, "Exception while notifying StrongAuthTracker: IsNonStrongBiometricAllowedChanged."

    .line 485
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_16

    goto :goto_6

    .line 490
    :goto_21
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 491
    throw p1

    .line 490
    :cond_27
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mTrackers:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public refreshStrongAuthTimeout(I)V
    .registers 4

    .line 543
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/16 v0, 0xa

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3

    .line 495
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public removeUser(I)V
    .registers 4

    .line 504
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportSuccessfulBiometricUnlock(ZI)V
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    .line 556
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x8

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 557
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_19

    .line 559
    :cond_f
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, p2, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 560
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_19
    return-void
.end method

.method public reportSuccessfulStrongAuthUnlock(I)V
    .registers 4

    .line 536
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public reportUnlock(I)V
    .registers 3

    const/4 v0, 0x0

    .line 528
    invoke-virtual {p0, v0, p1}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->requireStrongAuth(II)V

    return-void
.end method

.method public requireStrongAuth(II)V
    .registers 4

    const/4 v0, -0x1

    if-eq p2, v0, :cond_f

    if-ltz p2, :cond_6

    goto :goto_f

    .line 512
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "userId must be an explicit user id or USER_ALL"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 509
    :cond_f
    :goto_f
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 510
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final rescheduleStrongAuthTimeoutAlarm(JI)V
    .registers 14

    .line 276
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    if-eqz v0, :cond_17

    .line 278
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 279
    invoke-virtual {v0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;->setLatestStrongAuthTime(J)V

    goto :goto_25

    .line 281
    :cond_17
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/locksettings/LockSettingsStrongAuth$StrongAuthTimeoutAlarmListener;-><init>(Lcom/android/server/locksettings/LockSettingsStrongAuth;JI)V

    .line 282
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mStrongAuthTimeoutAlarmListenerForUser:Landroid/util/ArrayMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_25
    move-object v8, v0

    .line 287
    invoke-virtual {p0, p3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->getRequiredStrongAuthTimeout(I)J

    move-result-wide v0

    add-long v5, p1, v0

    const-string/jumbo p1, "lockscreen.strong_bio_timeout"

    .line 291
    invoke-virtual {p0, p1, v5, v6, p3}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->updateStrongAuthTimeoutInfo(Ljava/lang/String;JI)V

    .line 295
    iget-object v3, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    iget-object v9, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const-string v7, "LockSettingsStrongAuth.timeoutForUser"

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public scheduleNonStrongBiometricIdleTimeout(I)V
    .registers 4

    .line 570
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 571
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setIsNonStrongBiometricAllowed(ZI)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_18

    const/4 p2, 0x0

    .line 402
    :goto_4
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_1b

    .line 403
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v0

    .line 404
    invoke-virtual {p0, p1, v0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowedOneUser(ZI)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    .line 407
    :cond_18
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->setIsNonStrongBiometricAllowedOneUser(ZI)V

    :cond_1b
    return-void
.end method

.method public final setIsNonStrongBiometricAllowedOneUser(ZI)V
    .registers 5

    .line 416
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eq p1, v0, :cond_11

    .line 423
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mIsNonStrongBiometricAllowedForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 424
    invoke-virtual {p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsStrongAuth;->notifyStrongAuthTrackersForIsNonStrongBiometricAllowed(ZI)V

    :cond_11
    return-void
.end method

.method public unregisterStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V
    .registers 3

    .line 499
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final updateStrongAuthTimeoutInfo(Ljava/lang/String;JI)V
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-eqz v2, :cond_10

    .line 763
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long/2addr v0, p2

    .line 765
    :cond_10
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStrongAuth;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricStrongAuthTimeout(Ljava/lang/String;JI)V

    return-void
.end method
