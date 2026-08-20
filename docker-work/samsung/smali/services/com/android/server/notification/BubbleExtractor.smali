.class public Lcom/android/server/notification/BubbleExtractor;
.super Ljava/lang/Object;
.source "BubbleExtractor.java"

# interfaces
.implements Lcom/android/server/notification/NotificationSignalExtractor;


# static fields
.field public static final DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "BubbleExtractor"


# instance fields
.field public mActivityManager:Landroid/app/ActivityManager;

.field public mConfig:Lcom/android/server/notification/RankingConfig;

.field public mContext:Landroid/content/Context;

.field public mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

.field public mSupportsBubble:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canLaunchInTaskView(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string p0, "BubbleExtractor"

    const/4 v0, 0x0

    if-nez p2, :cond_b

    const-string p1, "Unable to create bubble -- no intent"

    .line 206
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 210
    :cond_b
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_1a

    .line 212
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    const/4 v1, 0x1

    const/16 v2, 0xad

    if-nez p1, :cond_38

    .line 215
    invoke-static {v2, p3, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    .line 218
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to send as bubble -- couldn\'t find activity info for intent: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 222
    :cond_38
    iget p1, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {p1}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result p1

    if-nez p1, :cond_59

    const/4 p1, 0x2

    .line 223
    invoke-static {v2, p3, p1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;I)V

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to send as bubble -- activity is not resizable for intent: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_59
    return v1
.end method

.method public canPresentAsBubble(Lcom/android/server/notification/NotificationRecord;)Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 157
    iget-boolean v0, p0, Lcom/android/server/notification/BubbleExtractor;->mSupportsBubble:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 161
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/app/Notification;->getBubbleMetadata()Landroid/app/Notification$BubbleMetadata;

    move-result-object v0

    .line 163
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_19

    return v1

    .line 168
    :cond_19
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getShortcutId()Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 170
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v4

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x0

    :goto_2d
    const/4 v5, 0x1

    if-eqz v4, :cond_37

    if-eqz v3, :cond_37

    .line 175
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_48

    :cond_37
    if-eqz v3, :cond_47

    .line 177
    iget-object v4, p0, Lcom/android/server/notification/BubbleExtractor;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    .line 178
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v4, v3, v2, v6}, Lcom/android/server/notification/ShortcutHelper;->getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    if-eqz v4, :cond_47

    move v4, v5

    goto :goto_48

    :cond_47
    move v4, v1

    .line 180
    :goto_48
    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v6

    if-nez v6, :cond_69

    if-nez v4, :cond_69

    .line 182
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t find valid shortcut for bubble with shortcutId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/BubbleExtractor;->logBubbleError(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_69
    if-eqz v4, :cond_6c

    return v5

    .line 190
    :cond_6c
    iget-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/app/Notification$BubbleMetadata;->getIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, p1, v0, v2}, Lcom/android/server/notification/BubbleExtractor;->canLaunchInTaskView(Landroid/content/Context;Landroid/app/PendingIntent;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public initialize(Landroid/content/Context;Lcom/android/server/notification/NotificationUsageStats;)V
    .registers 3

    .line 61
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mContext:Landroid/content/Context;

    const-string p2, "activity"

    .line 62
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    .line 64
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x11101d0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/BubbleExtractor;->mSupportsBubble:Z

    return-void
.end method

.method public final logBubbleError(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public process(Lcom/android/server/notification/NotificationRecord;)Lcom/android/server/notification/RankingReconsideration;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_e2

    .line 69
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_e2

    .line 74
    :cond_b
    iget-object v1, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    if-nez v1, :cond_10

    return-object v0

    .line 79
    :cond_10
    iget-object v1, p0, Lcom/android/server/notification/BubbleExtractor;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    if-nez v1, :cond_15

    return-object v0

    .line 84
    :cond_15
    invoke-virtual {p0, p1}, Lcom/android/server/notification/BubbleExtractor;->canPresentAsBubble(Lcom/android/server/notification/NotificationRecord;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    .line 85
    invoke-virtual {v1}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    if-nez v1, :cond_65

    iget-object v1, p0, Lcom/android/server/notification/BubbleExtractor;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {v1}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 88
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isMultiWindowBlockListApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lcom/android/server/notification/BubbleExtractor;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "force_resizable_activities"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_65

    .line 92
    :cond_4d
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isConversation()Z

    move-result v1

    if-eqz v1, :cond_65

    .line 93
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_65

    .line 94
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_65

    move v1, v2

    goto :goto_66

    :cond_65
    move v1, v3

    .line 96
    :goto_66
    iget-object v4, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/server/notification/RankingConfig;->bubblesEnabled(Landroid/os/UserHandle;)Z

    move-result v4

    .line 97
    iget-object p0, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    .line 99
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    .line 98
    invoke-interface {p0, v5, v6}, Lcom/android/server/notification/RankingConfig;->getBubblePreference(Ljava/lang/String;I)I

    move-result p0

    .line 100
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    if-eqz v4, :cond_b1

    if-eqz p0, :cond_b1

    if-nez v1, :cond_91

    goto :goto_b1

    :cond_91
    if-nez v5, :cond_97

    .line 111
    invoke-virtual {p1, v2}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    goto :goto_bd

    :cond_97
    if-ne p0, v2, :cond_a6

    .line 113
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getAllowBubbles()I

    move-result p0

    if-eqz p0, :cond_a1

    move p0, v2

    goto :goto_a2

    :cond_a1
    move p0, v3

    :goto_a2
    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    goto :goto_bd

    :cond_a6
    const/4 v1, 0x2

    if-ne p0, v1, :cond_bd

    .line 115
    invoke-virtual {v5}, Landroid/app/NotificationChannel;->canBubble()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    goto :goto_bd

    .line 104
    :cond_b1
    :goto_b1
    invoke-virtual {p1, v3}, Lcom/android/server/notification/NotificationRecord;->setAllowBubble(Z)V

    if-nez v1, :cond_bd

    .line 107
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Notification;->setBubbleMetadata(Landroid/app/Notification$BubbleMetadata;)V

    .line 125
    :cond_bd
    :goto_bd
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->canBubble()Z

    move-result p0

    if-eqz p0, :cond_ca

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->isFlagBubbleRemoved()Z

    move-result p0

    if-nez p0, :cond_ca

    goto :goto_cb

    :cond_ca
    move v2, v3

    :goto_cb
    if-eqz v2, :cond_d8

    .line 127
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p1, p0, Landroid/app/Notification;->flags:I

    or-int/lit16 p1, p1, 0x1000

    iput p1, p0, Landroid/app/Notification;->flags:I

    goto :goto_e2

    .line 129
    :cond_d8
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p1, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 p1, p1, -0x1001

    iput p1, p0, Landroid/app/Notification;->flags:I

    :cond_e2
    :goto_e2
    return-object v0
.end method

.method public setActivityManager(Landroid/app/ActivityManager;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 149
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mActivityManager:Landroid/app/ActivityManager;

    return-void
.end method

.method public setConfig(Lcom/android/server/notification/RankingConfig;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mConfig:Lcom/android/server/notification/RankingConfig;

    return-void
.end method

.method public setShortcutHelper(Lcom/android/server/notification/ShortcutHelper;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/android/server/notification/BubbleExtractor;->mShortcutHelper:Lcom/android/server/notification/ShortcutHelper;

    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .registers 2

    return-void
.end method
