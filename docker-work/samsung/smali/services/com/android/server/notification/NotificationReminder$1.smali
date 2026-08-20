.class public Lcom/android/server/notification/NotificationReminder$1;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReminder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationReminder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationReminder;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationReminder;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    .line 98
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mRemiderReceiver, action = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NotificationReminder"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "com.samsung.action.Notification_Reminder_Alarm"

    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_32

    .line 101
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {p1}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmHandler(Lcom/android/server/notification/NotificationReminder;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/notification/NotificationReminder$1$1;

    invoke-direct {p2, p0}, Lcom/android/server/notification/NotificationReminder$1$1;-><init>(Lcom/android/server/notification/NotificationReminder$1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_a6

    :cond_32
    const-string p2, "android.intent.action.USER_SWITCHED"

    .line 111
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a6

    .line 112
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {p1}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmContext(Lcom/android/server/notification/NotificationReminder;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo p2, "reminder_migration_finished"

    const/4 v0, 0x0

    const/4 v1, -0x2

    invoke-static {p1, p2, v0, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    const/4 v2, 0x1

    if-nez p1, :cond_51

    move v0, v2

    :cond_51
    if-eqz v0, :cond_a6

    .line 114
    iget-object p1, p0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {p1}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmContext(Lcom/android/server/notification/NotificationReminder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$mgetCallAndMsgPackage(Lcom/android/server/notification/NotificationReminder;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ";"

    .line 116
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 118
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_99

    .line 119
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :catch_71
    :goto_71
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_99

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 121
    :try_start_7d
    iget-object v3, p0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v3}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmContext(Lcom/android/server/notification/NotificationReminder;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v3

    .line 122
    iget-object v4, p0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {v4}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmPreferencesHelper(Lcom/android/server/notification/NotificationReminder;)Lcom/android/server/notification/PreferencesHelper;

    move-result-object v4

    invoke-virtual {v4, v0, v3, v2}, Lcom/android/server/notification/PreferencesHelper;->setReminderEnabled(Ljava/lang/String;IZ)V
    :try_end_98
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7d .. :try_end_98} :catch_71

    goto :goto_71

    .line 128
    :cond_99
    iget-object p0, p0, Lcom/android/server/notification/NotificationReminder$1;->this$0:Lcom/android/server/notification/NotificationReminder;

    invoke-static {p0}, Lcom/android/server/notification/NotificationReminder;->-$$Nest$fgetmContext(Lcom/android/server/notification/NotificationReminder;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, v2, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_a6
    :goto_a6
    return-void
.end method
