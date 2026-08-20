.class public final Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;
.super Landroid/database/ContentObserver;
.source "NotificationReminder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationReminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "NotificationReminderObserver"
.end annotation


# instance fields
.field public final NOTIFICATION_REMINDER_APP_LIST:Landroid/net/Uri;

.field public final NOTIFICATION_REMINDER_SELECTABLE:Landroid/net/Uri;

.field public final NOTIFICATION_REMINDER_VIBRATE:Landroid/net/Uri;

.field public final REMINDER_TYPE:Landroid/net/Uri;

.field public final TIME_KEY:Landroid/net/Uri;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationReminder;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationReminder;Landroid/os/Handler;)V
    .registers 3

    .line 174
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    .line 175
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo p1, "notification_reminder_selectable"

    .line 164
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_SELECTABLE:Landroid/net/Uri;

    const-string/jumbo p1, "notification_reminder_type"

    .line 166
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->REMINDER_TYPE:Landroid/net/Uri;

    const-string/jumbo p1, "notification_reminder_app_list"

    .line 168
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_APP_LIST:Landroid/net/Uri;

    const-string/jumbo p1, "notification_reminder_vibrate"

    .line 170
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_VIBRATE:Landroid/net/Uri;

    const-string/jumbo p1, "time_key"

    .line 172
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->TIME_KEY:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .registers 4

    .line 180
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .registers 9

    .line 184
    iget-object v0, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmContext(Lcom/android/server/notification/NotificationReminder;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationReminder"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x2

    const/4 v3, 0x0

    if-eqz p1, :cond_2d

    .line 186
    iget-object v4, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->REMINDER_TYPE:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_54

    .line 187
    :cond_2d
    iget-object v4, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const-string/jumbo v5, "notification_reminder_type"

    invoke-static {v0, v5, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fputmReminderType(Lcom/android/server/notification/NotificationReminder;I)V

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update mReminderType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v5}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmReminderType(Lcom/android/server/notification/NotificationReminder;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    if-eqz p1, :cond_5e

    .line 190
    iget-object v4, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_APP_LIST:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 191
    :cond_5e
    iget-object v4, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const-string/jumbo v5, "notification_reminder_app_list"

    invoke-static {v0, v5, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fputmAppSettingList(Lcom/android/server/notification/NotificationReminder;Ljava/lang/String;)V

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "update mAppSettingList: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v5}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmAppSettingList(Lcom/android/server/notification/NotificationReminder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_85
    const/4 v4, 0x1

    if-eqz p1, :cond_90

    .line 194
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_VIBRATE:Landroid/net/Uri;

    invoke-virtual {v5, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bc

    .line 195
    :cond_90
    iget-object v5, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const-string/jumbo v6, "notification_reminder_vibrate"

    invoke-static {v0, v6, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eqz v6, :cond_9d

    move v6, v4

    goto :goto_9e

    :cond_9d
    move v6, v3

    :goto_9e
    invoke-static {v5, v6}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fputmEnableVibrate(Lcom/android/server/notification/NotificationReminder;Z)V

    .line 196
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "update mEnableVibrate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v6}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmEnableVibrate(Lcom/android/server/notification/NotificationReminder;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bc
    if-eqz p1, :cond_c6

    .line 198
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->TIME_KEY:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 199
    :cond_c6
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const/16 v5, 0xb4

    const-string/jumbo v6, "time_key"

    invoke-static {v0, v6, v5, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    invoke-static {v2, v5}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fputmInterval(Lcom/android/server/notification/NotificationReminder;I)V

    if-eqz p1, :cond_e3

    .line 200
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v2}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmEnableReminder(Lcom/android/server/notification/NotificationReminder;)Z

    move-result v2

    if-eqz v2, :cond_e3

    .line 201
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v2}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$msetAlarmManagerRepeating(Lcom/android/server/notification/NotificationReminder;)V

    :cond_e3
    if-eqz p1, :cond_ed

    .line 204
    iget-object v2, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->NOTIFICATION_REMINDER_SELECTABLE:Landroid/net/Uri;

    invoke-virtual {v2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10f

    .line 205
    :cond_ed
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    const-string/jumbo v2, "notification_reminder_selectable"

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_f9

    move v3, v4

    :cond_f9
    invoke-static {p1, v3}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fputmEnableReminder(Lcom/android/server/notification/NotificationReminder;Z)V

    .line 206
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {p1}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmEnableReminder(Lcom/android/server/notification/NotificationReminder;)Z

    move-result p1

    if-eqz p1, :cond_10a

    .line 207
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {p0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$msetAlarmManagerRepeating(Lcom/android/server/notification/NotificationReminder;)V

    goto :goto_10f

    .line 209
    :cond_10a
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$NotificationReminderObserver;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {p0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mcancelAlarm(Lcom/android/server/notification/NotificationReminder;)V

    :cond_10f
    :goto_10f
    return-void
.end method
