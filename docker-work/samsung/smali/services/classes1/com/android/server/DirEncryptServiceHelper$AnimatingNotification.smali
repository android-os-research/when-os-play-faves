.class public Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;
.super Ljava/lang/Object;
.source "DirEncryptServiceHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DirEncryptServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AnimatingNotification"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEnctype:I

.field public mProgress:I

.field public mStop:Z

.field public notification_builder:Landroid/app/Notification$Builder;

.field public final synthetic this$0:Lcom/android/server/DirEncryptServiceHelper;


# direct methods
.method public static bridge synthetic -$$Nest$fputmEnctype(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mEnctype:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmProgress(Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mProgress:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/DirEncryptServiceHelper;Landroid/content/Context;)V
    .registers 3

    .line 152
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    .line 148
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mEnctype:I

    .line 149
    iput p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mProgress:I

    const/4 p1, 0x0

    .line 150
    iput-object p1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 153
    iput-object p2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public isInProgress()Z
    .registers 1

    .line 166
    iget-boolean p0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public run()V
    .registers 14

    const-string/jumbo v0, "\u202a"

    .line 176
    iget-object v1, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v1}, Lcom/android/server/DirEncryptServiceHelper;->-$$Nest$fgetmAnimateSync(Lcom/android/server/DirEncryptServiceHelper;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 177
    :try_start_a
    iget v2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mEnctype:I

    const v3, 0x1040c0f

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2d

    const v2, 0x10802f0

    .line 179
    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040c10

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 180
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4a

    :cond_2d
    const v2, 0x108028b

    .line 183
    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040c0c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 184
    iget-object v6, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040c0b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_4a
    move-object v12, v5

    .line 187
    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    if-nez v5, :cond_5b

    .line 188
    iget-object v7, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    const/4 v8, 0x0

    move v9, v2

    move-object v10, v6

    move-object v11, v12

    invoke-static/range {v7 .. v12}, Lcom/android/server/DirEncryptServiceHelper;->-$$Nest$mgetNotification(Lcom/android/server/DirEncryptServiceHelper;Landroid/app/PendingIntent;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 189
    :cond_5b
    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 190
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    .line 191
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    const/16 v4, 0x64

    iget v5, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mProgress:I

    const/4 v7, 0x0

    invoke-virtual {v2, v4, v5, v7}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    .line 192
    iget-object v2, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mProgress:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 194
    iget-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    if-nez v0, :cond_cf

    .line 195
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 196
    new-instance v2, Landroid/app/NotificationChannel;

    invoke-static {}, Lcom/android/server/DirEncryptServiceHelper;->-$$Nest$sfgetmNotificationChannelID()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    invoke-direct {v2, v4, v3, v5}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 197
    sget v2, Lcom/samsung/android/security/SemSdCardEncryption;->SECURITY_POLICY_NOTIFICATION_ID:I

    iget-object v3, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 199
    iget-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->this$0:Lcom/android/server/DirEncryptServiceHelper;

    invoke-static {v0}, Lcom/android/server/DirEncryptServiceHelper;->-$$Nest$fgetmHandler(Lcom/android/server/DirEncryptServiceHelper;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_d2

    :cond_cf
    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    .line 203
    :goto_d2
    monitor-exit v1

    return-void

    :catchall_d4
    move-exception p0

    monitor-exit v1
    :try_end_d6
    .catchall {:try_start_a .. :try_end_d6} :catchall_d4

    throw p0
.end method

.method public start()V
    .registers 2

    const/4 v0, 0x0

    .line 162
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    return-void
.end method

.method public stop()V
    .registers 2

    const/4 v0, 0x1

    .line 157
    iput-boolean v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->mStop:Z

    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/android/server/DirEncryptServiceHelper$AnimatingNotification;->notification_builder:Landroid/app/Notification$Builder;

    return-void
.end method
