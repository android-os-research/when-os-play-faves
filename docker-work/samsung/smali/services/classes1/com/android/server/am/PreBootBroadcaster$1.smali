.class public Lcom/android/server/am/PreBootBroadcaster$1;
.super Landroid/os/Handler;
.source "PreBootBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/PreBootBroadcaster;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/PreBootBroadcaster;


# direct methods
.method public constructor <init>(Lcom/android/server/am/PreBootBroadcaster;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5

    .line 142
    iput-object p1, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 145
    iget-object v0, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    invoke-static {v0}, Lcom/android/server/am/PreBootBroadcaster;->-$$Nest$fgetmService(Lcom/android/server/am/PreBootBroadcaster;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 146
    const-class v1, Landroid/app/NotificationManager;

    .line 147
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 148
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 149
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 151
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v4, 0xd

    const-string v5, "PreBootBroadcaster"

    const/4 v6, 0x1

    if-eq p1, v6, :cond_31

    const/4 v0, 0x2

    if-eq p1, v0, :cond_22

    goto/16 :goto_af

    .line 188
    :cond_22
    iget-object p0, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    invoke-static {p0}, Lcom/android/server/am/PreBootBroadcaster;->-$$Nest$fgetmUserId(Lcom/android/server/am/PreBootBroadcaster;)I

    move-result p0

    .line 189
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 188
    invoke-virtual {v1, v5, v4, p0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto/16 :goto_af

    :cond_31
    const p1, 0x10401af

    .line 154
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 156
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "com.android.settings"

    const-string v9, "com.android.settings.HelpTrampoline"

    .line 157
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "android.intent.extra.TEXT"

    const-string/jumbo v9, "help_url_upgrading"

    .line 159
    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v7, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    if-eqz v8, :cond_5e

    const/high16 v8, 0x4000000

    .line 163
    invoke-static {v0, v9, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    goto :goto_5f

    :cond_5e
    const/4 v7, 0x0

    .line 169
    :goto_5f
    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    invoke-static {v10}, Lcom/android/server/am/PreBootBroadcaster;->-$$Nest$fgetmService(Lcom/android/server/am/PreBootBroadcaster;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v11, Lcom/android/internal/notification/SystemNotificationChannels;->UPDATES:Ljava/lang/String;

    invoke-direct {v8, v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v10, 0x1080a85

    .line 172
    invoke-virtual {v8, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    const-wide/16 v10, 0x0

    .line 173
    invoke-virtual {v8, v10, v11}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 174
    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    .line 175
    invoke-virtual {v8, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    const v10, 0x106001c

    .line 176
    invoke-virtual {v0, v10}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 179
    invoke-virtual {p1, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 180
    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 181
    invoke-virtual {p1, v2, v3, v9}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 182
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 183
    iget-object p0, p0, Lcom/android/server/am/PreBootBroadcaster$1;->this$0:Lcom/android/server/am/PreBootBroadcaster;

    invoke-static {p0}, Lcom/android/server/am/PreBootBroadcaster;->-$$Nest$fgetmUserId(Lcom/android/server/am/PreBootBroadcaster;)I

    move-result p0

    .line 184
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 183
    invoke-virtual {v1, v5, v4, p1, p0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :goto_af
    return-void
.end method
