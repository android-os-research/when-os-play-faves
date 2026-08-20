.class public Lcom/samsung/android/game/AlarmController;
.super Ljava/lang/Object;
.source "AlarmController.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final REQUEST_CODE_EVERY_HOUR_ALARM:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-class v0, Lcom/samsung/android/game/AlarmController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/game/AlarmController;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cancelEveryHourAlarm(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .line 44
    if-nez p1, :cond_3

    return-void

    .line 45
    :cond_3
    sget-object v0, Lcom/samsung/android/game/AlarmController;->LOG_TAG:Ljava/lang/String;

    const-string v1, "cancelEveryHourAlarm() begin"

    invoke-static {v0, v1}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 48
    .local v1, "alarmManager":Landroid/app/AlarmManager;
    if-nez v1, :cond_1a

    .line 49
    const-string v2, "cancelEveryHourAlarm() failed, AlarmManager is null!"

    invoke-static {v0, v2}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void

    .line 53
    :cond_1a
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.game.MANAGER_ALARM"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    .local v2, "broadcastIntent":Landroid/content/Intent;
    sget-object v3, Lcom/samsung/android/game/Const$IntentType;->EVERY_HOUR_ALARM:Lcom/samsung/android/game/Const$IntentType;

    invoke-virtual {v3}, Lcom/samsung/android/game/Const$IntentType;->ordinal()I

    move-result v3

    const-string v4, "typeId"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    const/4 v3, 0x0

    const/high16 v4, 0x24000000

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 59
    .local v3, "operation":Landroid/app/PendingIntent;
    if-nez v3, :cond_3b

    .line 60
    const-string v4, "cancelEveryHourAlarm() failed, operation is null!"

    invoke-static {v0, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void

    .line 63
    :cond_3b
    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 65
    const-string v4, "cancelEveryHourAlarm() succeeded"

    invoke-static {v0, v4}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method startEveryHourAlarm(Landroid/content/Context;)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;

    .line 15
    move-object/from16 v0, p1

    if-nez v0, :cond_5

    return-void

    .line 16
    :cond_5
    sget-object v1, Lcom/samsung/android/game/AlarmController;->LOG_TAG:Ljava/lang/String;

    const-string v2, "startEveryHourAlarm() begin"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    const-string v2, "alarm"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 19
    .local v2, "alarmManager":Landroid/app/AlarmManager;
    if-nez v2, :cond_1c

    .line 20
    const-string v3, "startEveryHourAlarm() failed, AlarmManager is null!"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void

    .line 24
    :cond_1c
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.samsung.android.game.MANAGER_ALARM"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v3

    .line 25
    .local v10, "broadcastIntent":Landroid/content/Intent;
    sget-object v3, Lcom/samsung/android/game/Const$IntentType;->EVERY_HOUR_ALARM:Lcom/samsung/android/game/Const$IntentType;

    invoke-virtual {v3}, Lcom/samsung/android/game/Const$IntentType;->ordinal()I

    move-result v3

    const-string v4, "typeId"

    invoke-virtual {v10, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 27
    const/4 v3, 0x0

    const/high16 v4, 0xc000000

    invoke-static {v0, v3, v10, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 30
    .local v11, "operation":Landroid/app/PendingIntent;
    if-nez v11, :cond_3e

    .line 31
    const-string v3, "startEveryHourAlarm() failed, operation is null!"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    return-void

    .line 35
    :cond_3e
    const-wide/32 v12, 0xdbba0

    .line 36
    .local v12, "triggerDelayMillis":J
    const-wide/32 v14, 0x36ee80

    .line 38
    .local v14, "intervalMillis":J
    const/4 v4, 0x3

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    add-long/2addr v5, v12

    .line 38
    move-object v3, v2

    move-wide v7, v14

    move-object v9, v11

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    .line 40
    const-string v3, "startEveryHourAlarm() succeeded"

    invoke-static {v1, v3}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method
