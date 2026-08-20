.class public Lcom/android/server/notification/ScheduleConditionProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "ScheduleConditionProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ScheduleConditionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/ScheduleConditionProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/ScheduleConditionProvider;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 361
    sget-boolean p1, Lcom/android/server/notification/ScheduleConditionProvider;->DEBUG:Z

    if-eqz p1, :cond_1f

    const-string p1, "ConditionProviders.SCP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    const-string p1, "android.intent.action.TIMEZONE_CHANGED"

    .line 362
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6b

    .line 363
    iget-object p1, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-static {p1}, Lcom/android/server/notification/ScheduleConditionProvider;->-$$Nest$fgetmSubscriptions(Lcom/android/server/notification/ScheduleConditionProvider;)Landroid/util/ArrayMap;

    move-result-object p1

    monitor-enter p1

    .line 364
    :try_start_32
    iget-object p2, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-static {p2}, Lcom/android/server/notification/ScheduleConditionProvider;->-$$Nest$fgetmSubscriptions(Lcom/android/server/notification/ScheduleConditionProvider;)Landroid/util/ArrayMap;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_40
    :goto_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 365
    iget-object v1, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-static {v1}, Lcom/android/server/notification/ScheduleConditionProvider;->-$$Nest$fgetmSubscriptions(Lcom/android/server/notification/ScheduleConditionProvider;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/ScheduleCalendar;

    if-eqz v0, :cond_40

    .line 367
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/service/notification/ScheduleCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    goto :goto_40

    .line 370
    :cond_66
    monitor-exit p1

    goto :goto_6b

    :catchall_68
    move-exception p0

    monitor-exit p1
    :try_end_6a
    .catchall {:try_start_32 .. :try_end_6a} :catchall_68

    throw p0

    .line 372
    :cond_6b
    :goto_6b
    iget-object p0, p0, Lcom/android/server/notification/ScheduleConditionProvider$1;->this$0:Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-static {p0}, Lcom/android/server/notification/ScheduleConditionProvider;->-$$Nest$mevaluateSubscriptions(Lcom/android/server/notification/ScheduleConditionProvider;)V

    return-void
.end method
