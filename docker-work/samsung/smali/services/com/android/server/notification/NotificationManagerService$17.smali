.class public Lcom/android/server/notification/NotificationManagerService$17;
.super Ljava/lang/Thread;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->playInCallNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .registers 2

    .line 9976
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 9979
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 9981
    :try_start_4
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v3

    if-eqz v3, :cond_4b

    .line 9983
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 9984
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V

    .line 9986
    :cond_1f
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-static {v2, v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fputmCallNotificationToken(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Binder;)V

    .line 9987
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmCallNotificationToken(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmInCallNotificationUri(Lcom/android/server/notification/NotificationManagerService;)Landroid/net/Uri;

    move-result-object v5

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmInCallNotificationAudioAttributes(Lcom/android/server/notification/NotificationManagerService;)Landroid/media/AudioAttributes;

    move-result-object v6

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmInCallNotificationVolume(Lcom/android/server/notification/NotificationManagerService;)F

    move-result v7

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_45} :catch_4b
    .catchall {:try_start_4 .. :try_end_45} :catchall_46

    goto :goto_4b

    :catchall_46
    move-exception p0

    .line 9993
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 9994
    throw p0

    .line 9993
    :catch_4b
    :cond_4b
    :goto_4b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method
