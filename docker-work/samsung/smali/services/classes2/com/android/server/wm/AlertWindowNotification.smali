.class public Lcom/android/server/wm/AlertWindowNotification;
.super Ljava/lang/Object;
.source "AlertWindowNotification.java"


# static fields
.field public static final CHANNEL_PREFIX:Ljava/lang/String; = "com.android.server.wm.AlertWindowNotification - "

.field public static final NOTIFICATION_ID:I

.field public static sChannelGroup:Landroid/app/NotificationChannelGroup;

.field public static sNextRequestCode:I


# instance fields
.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public mNotificationTag:Ljava/lang/String;

.field public final mPackageName:Ljava/lang/String;

.field public mPosted:Z

.field public final mRequestCode:I

.field public final mService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$Ez_XFN5grudOUbMs8nm6tpHJOH4(Lcom/android/server/wm/AlertWindowNotification;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/AlertWindowNotification;->onPostNotification()V

    return-void
.end method

.method public static synthetic $r8$lambda$tbNkRuRKpR49jVR9-Pt-5MBoJgQ(Lcom/android/server/wm/AlertWindowNotification;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/AlertWindowNotification;->lambda$cancel$0(Z)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;)V
    .registers 4

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 60
    iput-object p2, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    .line 61
    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "com.android.server.wm.AlertWindowNotification - "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    .line 64
    sget p1, Lcom/android/server/wm/AlertWindowNotification;->sNextRequestCode:I

    add-int/lit8 p2, p1, 0x1

    sput p2, Lcom/android/server/wm/AlertWindowNotification;->sNextRequestCode:I

    iput p1, p0, Lcom/android/server/wm/AlertWindowNotification;->mRequestCode:I

    return-void
.end method

.method private synthetic lambda$cancel$0(Z)V
    .registers 2

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AlertWindowNotification;->onCancelNotification(Z)V

    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/AlertWindowNotification;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final createNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    .line 147
    sget-object v0, Lcom/android/server/wm/AlertWindowNotification;->sChannelGroup:Landroid/app/NotificationChannelGroup;

    if-nez v0, :cond_1d

    .line 148
    new-instance v0, Landroid/app/NotificationChannelGroup;

    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    const v2, 0x10401a0

    .line 149
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.server.wm.AlertWindowNotification - "

    invoke-direct {v0, v2, v1}, Landroid/app/NotificationChannelGroup;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    sput-object v0, Lcom/android/server/wm/AlertWindowNotification;->sChannelGroup:Landroid/app/NotificationChannelGroup;

    .line 151
    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannelGroup(Landroid/app/NotificationChannelGroup;)V

    :cond_1d
    const v0, 0x10401a1

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    .line 155
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 157
    iget-object p2, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p2

    if-eqz p2, :cond_35

    return-void

    .line 161
    :cond_35
    new-instance p2, Landroid/app/NotificationChannel;

    iget-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-direct {p2, v0, p1, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 162
    invoke-virtual {p2, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 163
    invoke-virtual {p2, v3}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 164
    invoke-virtual {p2, v1}, Landroid/app/NotificationChannel;->setBlockable(Z)V

    .line 165
    sget-object p1, Lcom/android/server/wm/AlertWindowNotification;->sChannelGroup:Landroid/app/NotificationChannelGroup;

    invoke-virtual {p1}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/NotificationChannel;->setGroup(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2, v1}, Landroid/app/NotificationChannel;->setBypassDnd(Z)V

    .line 167
    iget-object p0, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public final getApplicationInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .registers 3

    const/4 p0, 0x0

    .line 173
    :try_start_1
    invoke-virtual {p1, p2, p0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p0

    :catch_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getContentIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .registers 6

    .line 138
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "package"

    const/4 v2, 0x0

    .line 139
    invoke-static {v1, p2, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v1, "android.settings.MANAGE_APP_OVERLAY_PERMISSION"

    invoke-direct {v0, v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const p2, 0x10008000

    .line 140
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 142
    iget p0, p0, Lcom/android/server/wm/AlertWindowNotification;->mRequestCode:I

    const/high16 p2, 0x14000000

    invoke-static {p1, p0, v0, p2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public final onCancelNotification(Z)V
    .registers 5

    .line 82
    iget-boolean v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 86
    iput-boolean v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    .line 87
    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    if-eqz p1, :cond_18

    .line 89
    iget-object p1, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p0, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_18
    return-void
.end method

.method public final onPostNotification()V
    .registers 12

    .line 95
    iget-boolean v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 99
    iput-boolean v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mPosted:Z

    .line 101
    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 102
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/AlertWindowNotification;->getApplicationInfo(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 105
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_23

    :cond_21
    iget-object v4, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    .line 107
    :goto_23
    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/AlertWindowNotification;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x10401a2

    new-array v6, v0, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    .line 109
    invoke-virtual {v1, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 111
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    new-array v8, v0, [Ljava/lang/String;

    .line 112
    iget-object v9, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    aput-object v9, v8, v7

    const-string v9, "android.foregroundApps"

    invoke-virtual {v6, v9, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 113
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-direct {v8, v1, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 114
    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    const v9, 0x10401a3

    new-array v10, v0, [Ljava/lang/Object;

    aput-object v4, v10, v7

    .line 116
    invoke-virtual {v1, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 115
    invoke-virtual {v8, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 117
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const v8, 0x10800d3

    .line 118
    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const v8, 0x106001c

    .line 119
    invoke-virtual {v1, v8}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v8, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v8}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 120
    invoke-virtual {v8, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 121
    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/wm/AlertWindowNotification;->mPackageName:Ljava/lang/String;

    .line 123
    invoke-virtual {p0, v1, v4}, Lcom/android/server/wm/AlertWindowNotification;->getContentIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    if-eqz v3, :cond_aa

    .line 126
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 127
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v3, 0x1050000

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 128
    invoke-static {v2, v1, v1}, Lcom/android/internal/util/ImageUtils;->buildScaledBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_aa

    .line 130
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 134
    :cond_aa
    iget-object v1, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object p0, p0, Lcom/android/server/wm/AlertWindowNotification;->mNotificationTag:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v1, p0, v7, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public post()V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/AlertWindowNotification;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v1, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/AlertWindowNotification$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AlertWindowNotification;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
