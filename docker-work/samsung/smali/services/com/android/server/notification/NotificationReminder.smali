.class public Lcom/android/server/notification/NotificationReminder;
.super Ljava/lang/Object;
.source "NotificationReminder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationReminder$UpdateEnablePackageTask;,
        Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;
    }
.end annotation


# static fields
.field public static final INTENT_NOTIFICATION_ALARM_SERVICE_ACTION:Ljava/lang/String; = "com.samsung.action.Notification_Reminder_Alarm"

.field public static final MIGRATION_DELAY:I = 0x7530

.field public static final NOTIFICATION_REMINDER_TYPE:Ljava/lang/String; = "notification_reminder_type"

.field public static final REMINDER_MIGRATION_FINISHED:Ljava/lang/String; = "reminder_migration_finished"

.field public static final REMINDER_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

.field public static final SEC_CALL_APP:Ljava/lang/String; = "com.samsung.android.dialer"

.field public static final SEC_MESSAGE_APP:Ljava/lang/String; = "com.samsung.android.messaging"

.field public static final SELECT_All:Ljava/lang/String; = "selectAll"

.field public static final TAG:Ljava/lang/String; = "NotificationReminder"

.field public static final TIME_VALUE_DEFAULT:I = 0xb4

.field public static final TYPE_CUSTOM:I = 0x1

.field public static final TYPE_MSG_AND_CALL:I

.field public static final notificationIntent:Landroid/content/Intent;


# instance fields
.field public final mActiveNotiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mAppSettingList:Ljava/lang/String;

.field public mAudioManager:Landroid/media/AudioManager;

.field public mContext:Landroid/content/Context;

.field public mEnableReminder:Z

.field public mEnableVibrate:Z

.field public final mHandler:Landroid/os/Handler;

.field public mInterval:I

.field public mNeedMigration:Z

.field public final mNotificationReminderObserver:Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;

.field public mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

.field public final mRemiderReceiver:Landroid/content/BroadcastReceiver;

.field public mReminderIntent:Landroid/app/PendingIntent;

.field public mReminderType:I

.field public mVibratorHelper:Lcom/android/server/notification/VibratorHelper;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAppSettingList(Lcom/android/server/notification/NotificationReminder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mAppSettingList:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/notification/NotificationReminder;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnableReminder(Lcom/android/server/notification/NotificationReminder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmEnableVibrate(Lcom/android/server/notification/NotificationReminder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/notification/NotificationReminder;->mEnableVibrate:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationReminder;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPreferencesHelper(Lcom/android/server/notification/NotificationReminder;)Lcom/android/server/notification/PreferencesHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmReminderType(Lcom/android/server/notification/NotificationReminder;)I
    .registers 1

    iget p0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAppSettingList(Lcom/android/server/notification/NotificationReminder;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mAppSettingList:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEnableReminder(Lcom/android/server/notification/NotificationReminder;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmEnableVibrate(Lcom/android/server/notification/NotificationReminder;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationReminder;->mEnableVibrate:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmInterval(Lcom/android/server/notification/NotificationReminder;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmReminderType(Lcom/android/server/notification/NotificationReminder;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelAlarm(Lcom/android/server/notification/NotificationReminder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationReminder;->cancelAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mfindNotificationByListLocked(Lcom/android/server/notification/NotificationReminder;Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationReminder;->findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCallAndMsgPackage(Lcom/android/server/notification/NotificationReminder;Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationReminder;->getCallAndMsgPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misRemindNeeded(Lcom/android/server/notification/NotificationReminder;Ljava/util/ArrayList;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationReminder;->isRemindNeeded(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mplaySoundVibration(Lcom/android/server/notification/NotificationReminder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationReminder;->playSoundVibration()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetAlarmManagerRepeating(Lcom/android/server/notification/NotificationReminder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationReminder;->setAlarmManagerRepeating()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateEnablePackageList(Lcom/android/server/notification/NotificationReminder;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationReminder;->updateEnablePackageList()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 88
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.action.Notification_Reminder_Alarm"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android"

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationReminder;->notificationIntent:Landroid/content/Intent;

    const/4 v0, 0x7

    .line 92
    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    sget-object v1, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_NOTIFICATION:Landroid/os/VibrationEffect$SemMagnitudeType;

    const/4 v2, -0x1

    .line 91
    invoke-static {v0, v2, v1}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/NotificationReminder;->REMINDER_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/notification/PreferencesHelper;Landroid/app/AlarmManager;Lcom/android/server/notification/VibratorHelper;)V
    .registers 7

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Lcom/android/server/notification/NotificationReminder$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/NotificationReminder$1;-><init>(Lcom/android/server/notification/NotificationReminder;)V

    iput-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mRemiderReceiver:Landroid/content/BroadcastReceiver;

    .line 136
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    .line 137
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Landroid/os/Handler;

    .line 138
    iput-object p3, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 139
    iget-object p2, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    const-string p3, "audio"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    .line 140
    iput-object p5, p0, Lcom/android/server/notification/NotificationReminder;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    .line 141
    iput-object p4, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    .line 142
    new-instance p2, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;

    invoke-direct {p2, p0, p1}, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;-><init>(Lcom/android/server/notification/NotificationReminder;Landroid/os/Handler;)V

    iput-object p2, p0, Lcom/android/server/notification/NotificationReminder;->mNotificationReminderObserver:Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;

    .line 143
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "notification_reminder_selectable"

    .line 144
    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    const/4 p4, 0x0

    const/4 p5, -0x1

    .line 143
    invoke-virtual {p1, p3, p4, p2, p5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 145
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "notification_reminder_type"

    .line 146
    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 145
    invoke-virtual {p1, p3, p4, p2, p5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 147
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "notification_reminder_app_list"

    .line 148
    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 147
    invoke-virtual {p1, p3, p4, p2, p5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 149
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "notification_reminder_vibrate"

    .line 150
    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 149
    invoke-virtual {p1, p3, p4, p2, p5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 151
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p3, "time_key"

    .line 152
    invoke-static {p3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 151
    invoke-virtual {p1, p3, p4, p2, p5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p1, 0x0

    .line 153
    invoke-virtual {p2, p1}, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->update(Landroid/net/Uri;)V

    .line 155
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "com.samsung.action.Notification_Reminder_Alarm"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "android.intent.action.USER_SWITCHED"

    .line 156
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object p2, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationReminder;->startMigrationIfNeeded()V

    return-void
.end method


# virtual methods
.method public addNotificationRecord(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    .line 228
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/notification/NotificationReminder$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/NotificationReminder$3;-><init>(Lcom/android/server/notification/NotificationReminder;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final cancelAlarm()V
    .registers 3

    const-string v0, "NotificationReminder"

    const-string v1, "cancelAlarm"

    .line 294
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_15

    .line 296
    invoke-virtual {v0}, Landroid/app/PendingIntent;->cancel()V

    .line 297
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_15
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 253
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "\n  NotificationReminder :"

    .line 254
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      EnableReminder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      Interval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      EnableVibrate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/notification/NotificationReminder;->mEnableVibrate:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    iget-boolean v1, p0, Lcom/android/server/notification/NotificationReminder;->mEnableReminder:Z

    if-nez v1, :cond_52

    return-void

    .line 259
    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "      mActiveNotiList, size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-lez v0, :cond_93

    const/4 v1, 0x0

    :goto_69
    if-ge v1, v0, :cond_8e

    .line 262
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder;->mActiveNotiList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "      key : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    :cond_8e
    const-string p0, "  "

    .line 265
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_93
    return-void
.end method

.method public final findNotificationByListLocked(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/server/notification/NotificationRecord;"
        }
    .end annotation

    .line 270
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_21

    .line 272
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 273
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/notification/NotificationRecord;

    return-object p0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_21
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCallAndMsgPackage(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    .line 383
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.samsung.android.messaging"

    .line 385
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.samsung.android.dialer"

    .line 386
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-static {p1}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 389
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultSms : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationReminder"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    :try_start_2c
    const-class v0, Landroid/telecom/TelecomManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->getDefaultDialerPackage()Ljava/lang/String;

    move-result-object p1

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultDialer : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_4f} :catch_50

    goto :goto_56

    :catch_50
    move-exception p1

    const-string v0, "Unexpected exception occurred when getting default dialer package."

    .line 396
    invoke-static {v2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 398
    :goto_56
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 399
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_5f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 400
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-eqz v1, :cond_76

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 401
    :cond_76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5f

    .line 403
    :cond_7a
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final isGroupSummaryNotification(Landroid/app/Notification;)Z
    .registers 2

    .line 364
    iget p0, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 p0, p0, 0x200

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isRemindNeeded(Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;)Z"
        }
    .end annotation

    .line 344
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    const-string v0, "NotificationReminder"

    const-string/jumbo v2, "isRemindNeeded start"

    .line 347
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_76

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    .line 350
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 351
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationReminder;->isGroupSummaryNotification(Landroid/app/Notification;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 352
    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationReminder;->isSuppressedBubbleNotification(Landroid/app/Notification;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 353
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->isIntercepted()Z

    move-result v3

    if-nez v3, :cond_14

    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 354
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/notification/PreferencesHelper;->isReminderEnabled(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 355
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Clearable checked item found: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_76
    const-string/jumbo p0, "isRemindNeeded finish"

    .line 359
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public final isSuppressedBubbleNotification(Landroid/app/Notification;)Z
    .registers 3

    .line 368
    iget p0, p1, Landroid/app/Notification;->flags:I

    and-int/lit16 p0, p0, 0x1000

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    .line 369
    invoke-virtual {p1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    if-eqz p0, :cond_16

    .line 372
    invoke-virtual {p1}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification$BubbleMetadata;->isNotificationSuppressed()Z

    move-result p0

    return p0

    :cond_16
    const-string p0, "NotificationReminder"

    const-string p1, "bubbleMetadata is null."

    .line 374
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    return v0
.end method

.method public final playSoundVibration()V
    .registers 9

    .line 302
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const-string v1, "NotificationReminder"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_27

    .line 303
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_f
    const-string/jumbo v0, "playVibration only"

    .line 305
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    sget-object v0, Lcom/android/server/notification/NotificationReminder;->REMINDER_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    sget-object v4, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/notification/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_22

    .line 308
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_22
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 309
    throw p0

    .line 312
    :cond_27
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_87

    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    sget-object v3, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 314
    invoke-static {v3}, Landroid/media/AudioAttributes;->toLegacyStreamType(Landroid/media/AudioAttributes;)I

    move-result v3

    .line 313
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    if-lez v0, :cond_87

    .line 316
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 318
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_51

    .line 321
    :cond_4d
    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 323
    :goto_51
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 325
    :try_start_55
    iget-object v4, p0, Lcom/android/server/notification/NotificationReminder;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v4

    if-eqz v4, :cond_6b

    const-string/jumbo v5, "playSound"

    .line 327
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    sget-object v7, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-interface {v4, v0, v5, v6, v7}, Landroid/media/IRingtonePlayer;->playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V

    .line 331
    :cond_6b
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationReminder;->mEnableVibrate:Z

    if-eqz v0, :cond_84

    const-string/jumbo v0, "playVibration"

    .line 332
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mVibratorHelper:Lcom/android/server/notification/VibratorHelper;

    sget-object v0, Lcom/android/server/notification/NotificationReminder;->REMINDER_VIBRATION_EFFECT:Landroid/os/VibrationEffect;

    sget-object v4, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0, v4, v1}, Lcom/android/server/notification/VibratorHelper;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;Ljava/lang/String;)V
    :try_end_7e
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_7e} :catch_84
    .catchall {:try_start_55 .. :try_end_7e} :catchall_7f

    goto :goto_84

    :catchall_7f
    move-exception p0

    .line 337
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 338
    throw p0

    .line 337
    :catch_84
    :cond_84
    :goto_84
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_87
    return-void
.end method

.method public removeFromNotiList(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    .line 240
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/notification/NotificationReminder$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/notification/NotificationReminder$4;-><init>(Lcom/android/server/notification/NotificationReminder;Lcom/android/server/notification/NotificationRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setAlarmManagerRepeating()V
    .registers 10

    .line 280
    iget v0, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    const/16 v1, 0xb4

    if-ge v0, v1, :cond_17

    .line 282
    iput v1, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    .line 283
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    const/4 v2, -0x2

    const-string/jumbo v3, "time_key"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 285
    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAlarmManagerRepeating SEM_TIME_KEY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationReminder"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/server/notification/NotificationReminder;->notificationIntent:Landroid/content/Intent;

    const/high16 v3, 0x12000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    .line 288
    iget-object v1, p0, Lcom/android/server/notification/NotificationReminder;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    .line 289
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget v0, p0, Lcom/android/server/notification/NotificationReminder;->mInterval:I

    int-to-long v5, v0

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    add-long/2addr v3, v5

    int-to-long v5, v0

    mul-long/2addr v5, v7

    iget-object v7, p0, Lcom/android/server/notification/NotificationReminder;->mReminderIntent:Landroid/app/PendingIntent;

    .line 288
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method

.method public final startMigrationIfNeeded()V
    .registers 5

    .line 216
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "reminder_migration_finished"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_12

    const/4 v2, 0x1

    :cond_12
    iput-boolean v2, p0, Lcom/android/server/notification/NotificationReminder;->mNeedMigration:Z

    if-eqz v2, :cond_22

    .line 218
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/notification/NotificationReminder$2;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationReminder$2;-><init>(Lcom/android/server/notification/NotificationReminder;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_22
    return-void
.end method

.method public final updateEnablePackageList()V
    .registers 9

    .line 418
    iget v0, p0, Lcom/android/server/notification/NotificationReminder;->mReminderType:I

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 419
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationReminder;->getCallAndMsgPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_c
    if-ne v0, v1, :cond_11

    .line 421
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mAppSettingList:Ljava/lang/String;

    goto :goto_13

    :cond_11
    const-string v0, ""

    .line 423
    :goto_13
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 424
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    .line 425
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x0

    .line 426
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    const-string/jumbo v4, "selectAll"

    .line 427
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "NotificationReminder"

    if-eqz v4, :cond_70

    .line 428
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_39
    :cond_39
    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 429
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 430
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 431
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 432
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateEnablePackageList SELECT_All pkg = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_39

    .line 435
    :try_start_62
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4

    .line 436
    iget-object v6, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v6, v3, v4, v1}, Lcom/android/server/notification/PreferencesHelper;->setReminderEnabled(Ljava/lang/String;IZ)V
    :try_end_6f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_62 .. :try_end_6f} :catch_39

    goto :goto_39

    :cond_70
    if-eqz v0, :cond_fc

    .line 444
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 445
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 446
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 447
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    :cond_8f
    const-string v3, ";"

    .line 449
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 450
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 451
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_fc

    .line 452
    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/PreferencesHelper;->removeAllReminderSetting(I)V

    .line 453
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_ac
    :cond_ac
    :goto_ac
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_fc

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 454
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateEnablePackageList : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :try_start_cd
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ac

    .line 457
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "installPackages : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v4, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v4, v3, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4

    .line 459
    iget-object v6, p0, Lcom/android/server/notification/NotificationReminder;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v6, v3, v4, v1}, Lcom/android/server/notification/PreferencesHelper;->setReminderEnabled(Ljava/lang/String;IZ)V
    :try_end_fb
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_cd .. :try_end_fb} :catch_ac

    goto :goto_ac

    .line 468
    :cond_fc
    iget-boolean v0, p0, Lcom/android/server/notification/NotificationReminder;->mNeedMigration:Z

    if-eqz v0, :cond_10d

    .line 469
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v2, "reminder_migration_finished"

    invoke-static {p0, v2, v1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_10d
    return-void
.end method

.method public updatePackageListForRestore()V
    .registers 5

    .line 475
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/notification/NotificationReminder$5;

    invoke-direct {v1, p0}, Lcom/android/server/notification/NotificationReminder$5;-><init>(Lcom/android/server/notification/NotificationReminder;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
