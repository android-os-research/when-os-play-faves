.class public Lcom/android/server/notification/ZenModeFiltering;
.super Ljava/lang/Object;
.source "ZenModeFiltering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

.field public static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mDefaultPhoneApp:Landroid/content/ComponentName;

.field public final mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 55
    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    .line 57
    new-instance v0, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;-><init>(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers-IA;)V

    sput-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 66
    new-instance v0, Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-direct {v0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/NotificationMessagingUtil;)V
    .registers 3

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    return-void
.end method

.method public static audienceMatches(IF)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p0, :cond_31

    const/4 v1, 0x0

    if-eq p0, v0, :cond_29

    const/4 v2, 0x2

    if-eq p0, v2, :cond_20

    .line 497
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Encountered unknown source: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ZenModeHelper"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_20
    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_27

    goto :goto_28

    :cond_27
    move v0, v1

    :goto_28
    return v0

    :cond_29
    const/high16 p0, 0x3f000000    # 0.5f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_30

    goto :goto_31

    :cond_30
    move v0, v1

    :cond_31
    :goto_31
    return v0
.end method

.method public static extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;
    .registers 2

    if-eqz p0, :cond_1d

    .line 156
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 157
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    goto :goto_1e

    :cond_1d
    const/4 p0, 0x0

    :goto_1e
    return-object p0
.end method

.method public static isAlarm(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    const-string v0, "alarm"

    .line 440
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    const/4 v0, 0x4

    .line 441
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isAudioAttributesUsage(I)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    goto :goto_13

    :cond_12
    :goto_12
    const/4 p0, 0x1

    :goto_13
    return p0
.end method

.method public static isEvent(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    const-string v0, "event"

    .line 445
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isReminder(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    const-string/jumbo v0, "reminder"

    .line 449
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static matchesCallFilter(Landroid/content/Context;ILandroid/app/NotificationManager$Policy;Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IF)Z
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    const-string/jumbo p0, "no interruptions"

    .line 116
    invoke-static {v0, p0}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ZLjava/lang/String;)V

    return v0

    :cond_b
    const/4 v1, 0x3

    if-ne p1, v1, :cond_14

    const-string p0, "alarms only"

    .line 120
    invoke-static {v0, p0}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ZLjava/lang/String;)V

    return v0

    :cond_14
    const/4 v1, 0x1

    if-ne p1, v1, :cond_7d

    .line 125
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_31

    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_31

    if-eqz p5, :cond_31

    .line 127
    invoke-virtual {p5, p3, p4, p1}, Lcom/android/server/notification/ValidateNotificationPeople;->isInExceptionContacts(Landroid/os/UserHandle;Landroid/os/Bundle;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_31

    const-string p0, "contact matched"

    .line 128
    invoke-static {v1, p0}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ZLjava/lang/String;)V

    return v1

    .line 132
    :cond_31
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result p1

    if-eqz p1, :cond_47

    sget-object p1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    const/4 v2, 0x0

    .line 133
    invoke-static {p1, p0, p4, v2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$misRepeat(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z

    move-result p0

    if-eqz p0, :cond_47

    const-string/jumbo p0, "repeat caller"

    .line 134
    invoke-static {v1, p0}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ZLjava/lang/String;)V

    return v1

    .line 137
    :cond_47
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result p0

    if-nez p0, :cond_53

    const-string p0, "calls not allowed"

    .line 138
    invoke-static {v0, p0}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ZLjava/lang/String;)V

    return v0

    :cond_53
    if-eqz p5, :cond_7d

    .line 142
    invoke-virtual {p5, p3, p4, p6, p7}, Lcom/android/server/notification/ValidateNotificationPeople;->getContactAffinity(Landroid/os/UserHandle;Landroid/os/Bundle;IF)F

    move-result p0

    .line 144
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p4, p1}, Lcom/android/server/notification/ZenLog;->traceMatchContactFilter(Landroid/os/Bundle;Ljava/lang/Float;)V

    .line 146
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result p1

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(IF)Z

    move-result p1

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "contact affinity "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ZLjava/lang/String;)V

    return p1

    :cond_7d
    const-string/jumbo p0, "no restrictions"

    .line 151
    invoke-static {v1, p0}, Lcom/android/server/notification/ZenLog;->traceMatchesCallFilter(ZLjava/lang/String;)V

    return v1
.end method

.method public static shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    .line 432
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    invoke-static {p0, v0}, Lcom/android/server/notification/ZenModeFiltering;->audienceMatches(IF)Z

    move-result p0

    if-nez p0, :cond_11

    const-string p0, "!audienceMatches"

    .line 433
    invoke-static {p1, p0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public static ts(J)Ljava/lang/String;
    .registers 4

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cleanUpCallersAfter(J)V
    .registers 3

    .line 503
    sget-object p0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {p0, p1, p2}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$mcleanUpCallsAfter(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;J)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    .line 75
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDefaultPhoneApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p0, "RepeatCallers.mThresholdMinutes="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 77
    sget-object p0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    invoke-static {p0}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$fgetmThresholdMinutes(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public final encryptContactInformation(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 368
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    if-nez p1, :cond_12

    const-string/jumbo p1, "null"

    .line 371
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 372
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_12
    const/4 v0, 0x0

    .line 375
    :goto_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_69

    .line 376
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_61

    packed-switch v1, :pswitch_data_6e

    goto :goto_66

    :pswitch_25
    const/16 v1, 0x69

    .line 402
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_66

    :pswitch_2b
    const/16 v1, 0x68

    .line 399
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_66

    :pswitch_31
    const/16 v1, 0x67

    .line 396
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_66

    :pswitch_37
    const/16 v1, 0x66

    .line 393
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_66

    :pswitch_3d
    const/16 v1, 0x65

    .line 390
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_66

    :pswitch_43
    const/16 v1, 0x64

    .line 387
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_66

    :pswitch_49
    const/16 v1, 0x63

    .line 384
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_66

    :pswitch_4f
    const/16 v1, 0x62

    .line 381
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_66

    :pswitch_55
    const/16 v1, 0x61

    .line 378
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_66

    :pswitch_5b
    const/16 v1, 0x6f

    .line 405
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_66

    :cond_61
    const/16 v1, 0x2b

    .line 408
    invoke-virtual {p0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_66
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 414
    :cond_69
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_6e
    .packed-switch 0x30
        :pswitch_5b
        :pswitch_55
        :pswitch_4f
        :pswitch_49
        :pswitch_43
        :pswitch_3d
        :pswitch_37
        :pswitch_31
        :pswitch_2b
        :pswitch_25
    .end packed-switch
.end method

.method public isCall(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 3

    if-eqz p1, :cond_1a

    .line 453
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ZenModeFiltering;->isDefaultPhoneApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_18

    const-string p0, "call"

    .line 454
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->isCategory(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1a

    :cond_18
    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public isConversation(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 485
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result p0

    return p0
.end method

.method public final isCritical(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 428
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getCriticality()I

    move-result p0

    const/4 p1, 0x2

    if-ge p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public final isDefaultPhoneApp(Ljava/lang/String;)Z
    .registers 4

    .line 470
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-nez v0, :cond_35

    .line 471
    iget-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "telecom"

    .line 472
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    if-eqz v0, :cond_16

    .line 473
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-object v0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    .line 474
    sget-boolean v0, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    if-eqz v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Default phone app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeHelper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    if-eqz p1, :cond_47

    .line 476
    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mDefaultPhoneApp:Landroid/content/ComponentName;

    if-eqz p0, :cond_47

    .line 477
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_47

    const/4 p0, 0x1

    goto :goto_48

    :cond_47
    const/4 p0, 0x0

    :goto_48
    return p0
.end method

.method public isMedia(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 458
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 459
    sget-object p1, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public isMessage(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 481
    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mMessagingUtil:Lcom/android/internal/util/NotificationMessagingUtil;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/NotificationMessagingUtil;->isMessaging(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    return p0
.end method

.method public isSystem(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 2

    .line 464
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getAudioAttributes()Landroid/media/AudioAttributes;

    move-result-object p0

    if-eqz p0, :cond_15

    .line 465
    sget-object p1, Landroid/media/AudioAttributes;->SUPPRESSIBLE_USAGES:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    const/4 p1, 0x6

    if-ne p0, p1, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method public final matchesExceptionContacts(Landroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 13

    const/4 v0, 0x0

    if-eqz p2, :cond_17c

    .line 285
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    if-eqz v1, :cond_17c

    .line 286
    iget-object v1, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    .line 287
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const-string v2, "ZenModeHelper"

    if-eqz v1, :cond_2d

    .line 290
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3a

    .line 292
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3a

    .line 294
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    goto :goto_3a

    :cond_2d
    const-string v1, "cannot get a TelephonyManager."

    .line 298
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 302
    :cond_3a
    :goto_3a
    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->getExceptionContacts()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_41

    return v0

    .line 304
    :cond_41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 305
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 306
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4f
    :goto_4f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_7e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 307
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_63

    goto :goto_4f

    :cond_63
    const-string v7, ";"

    .line 308
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    move v7, v0

    .line 309
    :goto_6a
    array-length v8, v5

    if-ge v7, v8, :cond_4f

    if-nez v7, :cond_74

    .line 310
    aget-object v8, v5, v0

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_74
    if-ne v7, v6, :cond_7b

    .line 311
    aget-object v8, v5, v6

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7b
    add-int/lit8 v7, v7, 0x1

    goto :goto_6a

    .line 314
    :cond_7e
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPhoneNumbers()Landroid/util/ArraySet;

    move-result-object p1

    if-eqz p1, :cond_b9

    .line 315
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getPhoneNumbers()Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8c
    :goto_8c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_b9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_9b

    goto :goto_8c

    :cond_9b
    move v7, v0

    .line 317
    :goto_9c
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8c

    .line 318
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_a9

    goto :goto_b6

    .line 319
    :cond_a9
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v5, v8, v3}, Landroid/telephony/PhoneNumberUtils;->areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b6

    return v6

    :cond_b6
    :goto_b6
    add-int/lit8 v7, v7, 0x1

    goto :goto_9c

    .line 326
    :cond_b9
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-static {p1}, Lcom/android/server/notification/ValidateNotificationPeople;->getExtraPeople(Landroid/os/Bundle;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_17c

    move p2, v0

    .line 328
    :goto_c6
    array-length v5, p1

    if-ge p2, v5, :cond_17c

    .line 329
    aget-object v5, p1, p2

    if-nez v5, :cond_cf

    goto/16 :goto_178

    :cond_cf
    const-string v7, ":"

    .line 331
    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_d9

    goto/16 :goto_178

    .line 333
    :cond_d9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received contact type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    array-length v7, v5

    const/4 v8, 0x2

    if-ge v7, v8, :cond_fb

    const-string v5, "The contact info doesn\'t have a number."

    .line 335
    invoke-static {v2, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_178

    :cond_fb
    const/4 v7, 0x0

    .line 340
    aget-object v8, v5, v0

    const-string/jumbo v9, "tel"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_149

    .line 342
    :try_start_107
    aget-object v5, v5, v6

    const-string v8, "UTF-8"

    invoke-static {v5, v8}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_10f
    .catch Ljava/lang/Exception; {:try_start_107 .. :try_end_10f} :catch_110

    goto :goto_119

    :catch_110
    move-exception v5

    const-string v8, "URLDecoder.decode error"

    .line 344
    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 347
    :goto_119
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received contact number="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lcom/android/server/notification/ZenModeFiltering;->encryptContactInformation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v0

    .line 348
    :goto_133
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_178

    .line 349
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v7, v8, v3}, Landroid/telephony/PhoneNumberUtils;->areSamePhoneNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_146

    return v6

    :cond_146
    add-int/lit8 v5, v5, 0x1

    goto :goto_133

    .line 353
    :cond_149
    aget-object v8, v5, v0

    const-string v9, "contactId"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_161

    .line 354
    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_178

    .line 355
    sget-boolean p0, Lcom/android/server/notification/ZenModeFiltering;->DEBUG:Z

    if-eqz p0, :cond_160

    invoke-static {v2, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_160
    return v6

    .line 359
    :cond_161
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "received contact specificUri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v5, v6

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_178
    :goto_178
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_c6

    :cond_17c
    return v0
.end method

.method public recordCall(Lcom/android/server/notification/NotificationRecord;)V
    .registers 4

    .line 161
    sget-object v0, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/server/notification/ZenModeFiltering;->extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getPhoneNumbers()Landroid/util/ArraySet;

    move-result-object p1

    invoke-static {v0, p0, v1, p1}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$mrecordCall(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)V

    return-void
.end method

.method public shouldIntercept(ILandroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p1, :cond_14f

    .line 170
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isCritical(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    if-eqz v1, :cond_b

    goto/16 :goto_14f

    .line 174
    :cond_b
    iget v1, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-static {v1}, Landroid/app/NotificationManager$Policy;->areAllVisualEffectsSuppressed(I)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 175
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    const/16 v1, 0x30

    .line 176
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    if-ne v1, v2, :cond_36

    const-string/jumbo p0, "systemDndChangedNotification"

    .line 177
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v0

    :cond_36
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_54

    if-eq p1, v1, :cond_4d

    const/4 p0, 0x3

    if-eq p1, p0, :cond_40

    return v0

    .line 186
    :cond_40
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    if-eqz p0, :cond_47

    return v0

    :cond_47
    const-string p0, "alarmsOnly"

    .line 190
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v2

    :cond_4d
    const-string/jumbo p0, "none"

    .line 183
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v2

    .line 194
    :cond_54
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getPackagePriority()I

    move-result p1

    if-ne p1, v1, :cond_61

    const-string/jumbo p0, "priorityApp"

    .line 195
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v0

    .line 199
    :cond_61
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isAlarm(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_74

    .line 200
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowAlarms()Z

    move-result p0

    if-nez p0, :cond_73

    const-string p0, "!allowAlarms"

    .line 201
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v2

    :cond_73
    return v0

    .line 206
    :cond_74
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isEvent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_87

    .line 207
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowEvents()Z

    move-result p0

    if-nez p0, :cond_86

    const-string p0, "!allowEvents"

    .line 208
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v2

    :cond_86
    return v0

    .line 213
    :cond_87
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->isReminder(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 214
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowReminders()Z

    move-result p0

    if-nez p0, :cond_99

    const-string p0, "!allowReminders"

    .line 215
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v2

    :cond_99
    return v0

    .line 220
    :cond_9a
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isMedia(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_ad

    .line 221
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMedia()Z

    move-result p0

    if-nez p0, :cond_ac

    const-string p0, "!allowMedia"

    .line 222
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v2

    :cond_ac
    return v0

    .line 227
    :cond_ad
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isSystem(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_c0

    .line 228
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowSystem()Z

    move-result p0

    if-nez p0, :cond_bf

    const-string p0, "!allowSystem"

    .line 229
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v2

    :cond_bf
    return v0

    .line 235
    :cond_c0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/ZenModeFiltering;->matchesExceptionContacts(Landroid/app/NotificationManager$Policy;Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_cc

    const-string p0, "exceptionContactsMatches"

    .line 236
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v0

    .line 240
    :cond_cc
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isConversation(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_f4

    .line 241
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowConversations()Z

    move-result p1

    if-eqz p1, :cond_f4

    .line 242
    iget p1, p2, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    if-ne p1, v2, :cond_e2

    const-string p0, "conversationAnyone"

    .line 243
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v0

    :cond_e2
    if-ne p1, v1, :cond_f4

    .line 247
    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result p1

    if-eqz p1, :cond_f4

    const-string p0, "conversationMatches"

    .line 248
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v0

    .line 255
    :cond_f4
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isCall(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_12e

    .line 256
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowRepeatCallers()Z

    move-result p1

    if-eqz p1, :cond_119

    sget-object p1, Lcom/android/server/notification/ZenModeFiltering;->REPEAT_CALLERS:Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;

    iget-object p0, p0, Lcom/android/server/notification/ZenModeFiltering;->mContext:Landroid/content/Context;

    .line 258
    invoke-static {p3}, Lcom/android/server/notification/ZenModeFiltering;->extras(Lcom/android/server/notification/NotificationRecord;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getPhoneNumbers()Landroid/util/ArraySet;

    move-result-object v3

    .line 257
    invoke-static {p1, p0, v1, v3}, Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;->-$$Nest$misRepeat(Lcom/android/server/notification/ZenModeFiltering$RepeatCallers;Landroid/content/Context;Landroid/os/Bundle;Landroid/util/ArraySet;)Z

    move-result p0

    if-eqz p0, :cond_119

    const-string/jumbo p0, "repeatCaller"

    .line 259
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceNotIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v0

    .line 262
    :cond_119
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCalls()Z

    move-result p0

    if-nez p0, :cond_125

    const-string p0, "!allowCalls"

    .line 263
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v2

    .line 266
    :cond_125
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowCallsFrom()I

    move-result p0

    invoke-static {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0

    .line 268
    :cond_12e
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->isMessage(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    if-eqz p0, :cond_149

    .line 269
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result p0

    if-nez p0, :cond_140

    const-string p0, "!allowMessages"

    .line 270
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v2

    .line 273
    :cond_140
    invoke-virtual {p2}, Landroid/app/NotificationManager$Policy;->allowMessagesFrom()I

    move-result p0

    invoke-static {p0, p3}, Lcom/android/server/notification/ZenModeFiltering;->shouldInterceptAudience(ILcom/android/server/notification/NotificationRecord;)Z

    move-result p0

    return p0

    :cond_149
    const-string p0, "!priority"

    .line 276
    invoke-static {p3, p0}, Lcom/android/server/notification/ZenLog;->traceIntercepted(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return v2

    :cond_14f
    :goto_14f
    return v0
.end method
