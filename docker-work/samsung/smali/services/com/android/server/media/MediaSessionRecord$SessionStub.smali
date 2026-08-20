.class public final Lcom/android/server/media/MediaSessionRecord$SessionStub;
.super Landroid/media/session/ISession$Stub;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SessionStub"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public static synthetic $r8$lambda$g7c74wN0s85B0GplGOQWhF2EKyk(Lcom/android/server/media/MediaSessionRecord$SessionStub;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionStub;->lambda$getBinderForSetQueue$0(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;)V
    .registers 2

    .line 931
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-direct {p0}, Landroid/media/session/ISession$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaSessionRecord$SessionStub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionStub;-><init>(Lcom/android/server/media/MediaSessionRecord;)V

    return-void
.end method

.method private synthetic lambda$getBinderForSetQueue$0(Ljava/util/List;)V
    .registers 4

    .line 1115
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1116
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmQueue(Lcom/android/server/media/MediaSessionRecord;Ljava/util/List;)V

    .line 1117
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_18

    .line 1118
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_18
    move-exception p0

    .line 1117
    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method


# virtual methods
.method public destroySession()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 934
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 936
    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v2, p0}, Lcom/android/server/media/MediaSessionService;->onSessionDied(Lcom/android/server/media/MediaSessionRecordImpl;)V
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_13

    .line 938
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 939
    throw p0
.end method

.method public getBinderForSetQueue()Landroid/os/IBinder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1114
    new-instance v0, Landroid/media/session/ParcelableListBinder;

    new-instance v1, Lcom/android/server/media/MediaSessionRecord$SessionStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/media/MediaSessionRecord$SessionStub$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/MediaSessionRecord$SessionStub;)V

    invoke-direct {v0, v1}, Landroid/media/session/ParcelableListBinder;-><init>(Ljava/util/function/Consumer;)V

    return-object v0
.end method

.method public getController()Landroid/media/session/ISessionController;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 950
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmController(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$ControllerStub;

    move-result-object p0

    return-object p0
.end method

.method public resetQueue()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1106
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1107
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmQueue(Lcom/android/server/media/MediaSessionRecord;Ljava/util/List;)V

    .line 1108
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_7 .. :try_end_e} :catchall_19

    .line 1109
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_19
    move-exception p0

    .line 1108
    :try_start_1a
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p0
.end method

.method public final sanitizeMediaMetadata(Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .registers 16

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 1054
    :cond_4
    new-instance v1, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v1, p1}, Landroid/media/MediaMetadata$Builder;-><init>(Landroid/media/MediaMetadata;)V

    .line 1055
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$sfgetART_URIS()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_5a

    aget-object v5, v2, v4

    .line 1056
    invoke-virtual {p1, v5}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1057
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1e

    goto :goto_57

    .line 1060
    :cond_1e
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1061
    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    const-string v8, "content"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2f

    goto :goto_57

    .line 1065
    :cond_2f
    :try_start_2f
    iget-object v7, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v7}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmUgmInternal(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/uri/UriGrantsManagerInternal;

    move-result-object v8

    iget-object v7, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {v7}, Lcom/android/server/media/MediaSessionRecord;->getUid()I

    move-result v9

    iget-object v7, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 1066
    invoke-virtual {v7}, Lcom/android/server/media/MediaSessionRecord;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1067
    invoke-static {v6}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x1

    iget-object v7, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 1069
    invoke-virtual {v7}, Lcom/android/server/media/MediaSessionRecord;->getUserId()I

    move-result v7

    invoke-static {v6, v7}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v13

    .line 1065
    invoke-interface/range {v8 .. v13}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    :try_end_53
    .catch Ljava/lang/SecurityException; {:try_start_2f .. :try_end_53} :catch_54

    goto :goto_57

    .line 1071
    :catch_54
    invoke-virtual {v1, v5, v0}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    :goto_57
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 1074
    :cond_5a
    invoke-virtual {v1}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object p0

    .line 1078
    invoke-virtual {p0}, Landroid/media/MediaMetadata;->size()I

    return-object p0
.end method

.method public sendEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 944
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p0

    if-nez p2, :cond_a

    const/4 p2, 0x0

    goto :goto_10

    .line 945
    :cond_a
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p2, v0

    :goto_10
    const/4 v0, 0x6

    .line 944
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(ILjava/lang/Object;Landroid/os/Bundle;)V

    return-void
.end method

.method public setActive(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 955
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmIsActive(Lcom/android/server/media/MediaSessionRecord;Z)V

    .line 956
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 958
    :try_start_9
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p1, v2}, Lcom/android/server/media/MediaSessionService;->onSessionActiveStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_22

    .line 960
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 962
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_22
    move-exception p0

    .line 960
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 961
    throw p0
.end method

.method public setCurrentVolume(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmCurrentVolume(Lcom/android/server/media/MediaSessionRecord;I)V

    .line 1144
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void
.end method

.method public setExtras(Landroid/os/Bundle;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1130
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1131
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    if-nez p1, :cond_d

    const/4 p1, 0x0

    goto :goto_13

    :cond_d
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p1, v2

    :goto_13
    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmExtras(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Bundle;)V

    .line 1132
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_22

    .line 1133
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_22
    move-exception p0

    .line 1132
    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public setFlags(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/high16 v0, 0x10000

    and-int/2addr v0, p1

    if-eqz v0, :cond_16

    .line 968
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 969
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 970
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/media/MediaSessionService;->enforcePhoneStatePermission(II)V

    .line 972
    :cond_16
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    int-to-long v2, p1

    invoke-static {v1, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmFlags(Lcom/android/server/media/MediaSessionRecord;J)V

    if-eqz v0, :cond_36

    .line 974
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 976
    :try_start_22
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p1, v2}, Lcom/android/server/media/MediaSessionService;->setGlobalPrioritySession(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_31

    .line 978
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_36

    :catchall_31
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 979
    throw p0

    .line 981
    :cond_36
    :goto_36
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p0

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void
.end method

.method public setLaunchPendingIntent(Landroid/app/PendingIntent;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1036
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmLaunchIntent(Lcom/android/server/media/MediaSessionRecord;Landroid/app/PendingIntent;)V

    return-void
.end method

.method public setMediaButtonBroadcastReceiver(Landroid/content/ComponentName;)V
    .registers 9
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.INTERACT_ACROSS_USERS"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1003
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    if-eqz p1, :cond_5c

    .line 1006
    :try_start_7
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmPackageName(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object v3

    .line 1007
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1006
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_18

    goto :goto_5c

    :cond_18
    const v3, 0x534e4554

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "238177121"

    aput-object v6, v4, v5

    const/4 v5, -0x1

    .line 1008
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v2, 0x2

    const-string v5, ""

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1009
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "receiver does not belong to package name provided to MediaSessionRecord. Pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmPackageName(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", Receiver Pkg = "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1013
    :cond_5c
    :goto_5c
    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmPolicies(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v3
    :try_end_62
    .catchall {:try_start_7 .. :try_end_62} :catchall_b2

    and-int/2addr v2, v3

    if-eqz v2, :cond_69

    .line 1030
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1018
    :cond_69
    :try_start_69
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmContext(Lcom/android/server/media/MediaSessionRecord;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmUserId(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v3

    invoke-static {p1, v2, v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$smcomponentNameExists(Landroid/content/ComponentName;Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_96

    const-string p0, "MediaSessionRecord"

    .line 1019
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMediaButtonBroadcastReceiver(): Ignoring invalid component name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_92
    .catchall {:try_start_69 .. :try_end_92} :catchall_b2

    .line 1030
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1027
    :cond_96
    :try_start_96
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmUserId(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v3

    invoke-static {v3, p1}, Lcom/android/server/media/MediaButtonReceiverHolder;->create(ILandroid/content/ComponentName;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmMediaButtonReceiverHolder(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaButtonReceiverHolder;)V

    .line 1028
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaSessionService;->onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    :try_end_ae
    .catchall {:try_start_96 .. :try_end_ae} :catchall_b2

    .line 1030
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_b2
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1031
    throw p0
.end method

.method public setMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 986
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 988
    :try_start_4
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmPolicies(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v2
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_34

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_12

    .line 996
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 992
    :cond_12
    :try_start_12
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmUserId(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v4}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmPackageName(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/String;

    move-result-object v4

    .line 993
    invoke-static {v3, p1, v4}, Lcom/android/server/media/MediaButtonReceiverHolder;->create(ILandroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/server/media/MediaButtonReceiverHolder;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmMediaButtonReceiverHolder(Lcom/android/server/media/MediaSessionRecord;Lcom/android/server/media/MediaButtonReceiverHolder;)V

    .line 994
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p1, p0}, Lcom/android/server/media/MediaSessionService;->onMediaButtonReceiverChanged(Lcom/android/server/media/MediaSessionRecordImpl;)V
    :try_end_30
    .catchall {:try_start_12 .. :try_end_30} :catchall_34

    .line 996
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_34
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 997
    throw p0
.end method

.method public setMetadata(Landroid/media/MediaMetadata;JLjava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1042
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1043
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, p2, p3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmDuration(Lcom/android/server/media/MediaSessionRecord;J)V

    .line 1044
    iget-object p2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p2, p4}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmMetadataDescription(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V

    .line 1045
    iget-object p2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$SessionStub;->sanitizeMediaMetadata(Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmMetadata(Lcom/android/server/media/MediaSessionRecord;Landroid/media/MediaMetadata;)V

    .line 1046
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_7 .. :try_end_1b} :catchall_26

    .line 1047
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_26
    move-exception p0

    .line 1046
    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw p0
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1084
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmPlaybackState(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    move v0, v1

    goto :goto_15

    .line 1085
    :cond_b
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmPlaybackState(Lcom/android/server/media/MediaSessionRecord;)Landroid/media/session/PlaybackState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    :goto_15
    if-nez p1, :cond_19

    move v2, v1

    goto :goto_1d

    .line 1087
    :cond_19
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    .line 1088
    :goto_1d
    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$sfgetALWAYS_PRIORITY_STATES()Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_47

    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$sfgetTRANSITION_PRIORITY_STATES()Ljava/util/List;

    move-result-object v3

    .line 1089
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    invoke-static {}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$sfgetTRANSITION_PRIORITY_STATES()Ljava/util/List;

    move-result-object v0

    .line 1090
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    :cond_47
    const/4 v1, 0x1

    .line 1091
    :cond_48
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1092
    :try_start_4f
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmPlaybackState(Lcom/android/server/media/MediaSessionRecord;Landroid/media/session/PlaybackState;)V

    .line 1093
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_77

    .line 1094
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1096
    :try_start_59
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p1, v0, v1}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackStateChanged(Lcom/android/server/media/MediaSessionRecordImpl;Z)V
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_72

    .line 1099
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1101
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void

    :catchall_72
    move-exception p0

    .line 1099
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1100
    throw p0

    :catchall_77
    move-exception p0

    .line 1093
    :try_start_78
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    throw p0
.end method

.method public setPlaybackToLocal(Landroid/media/AudioAttributes;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1150
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1151
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmVolumeType(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_13

    move v1, v3

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    .line 1152
    :goto_14
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2, v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmVolumeType(Lcom/android/server/media/MediaSessionRecord;I)V

    .line 1153
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmVolumeControlId(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V

    if-eqz p1, :cond_27

    .line 1155
    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v2, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmAudioAttrs(Lcom/android/server/media/MediaSessionRecord;Landroid/media/AudioAttributes;)V

    goto :goto_2e

    :cond_27
    const-string p1, "MediaSessionRecord"

    const-string v2, "Received null audio attributes, using existing attributes"

    .line 1157
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_55

    if-eqz v1, :cond_54

    .line 1161
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1163
    :try_start_35
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object p1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p1, v2}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_40
    .catchall {:try_start_35 .. :try_end_40} :catchall_4f

    .line 1165
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1167
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    goto :goto_54

    :catchall_4f
    move-exception p0

    .line 1165
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1166
    throw p0

    :cond_54
    :goto_54
    return-void

    :catchall_55
    move-exception p0

    .line 1159
    :try_start_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    throw p0
.end method

.method public setPlaybackToRemote(IILjava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1175
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaSessionRecord;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1176
    :try_start_7
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmVolumeType(Lcom/android/server/media/MediaSessionRecord;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_11

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    .line 1177
    :goto_12
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmVolumeType(Lcom/android/server/media/MediaSessionRecord;I)V

    .line 1178
    iget-object v1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v1, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmVolumeControlType(Lcom/android/server/media/MediaSessionRecord;I)V

    .line 1179
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1, p2}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmMaxVolume(Lcom/android/server/media/MediaSessionRecord;I)V

    .line 1180
    iget-object p1, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p1, p3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmVolumeControlId(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;)V

    .line 1181
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_4e

    if-eqz v2, :cond_4d

    .line 1183
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 1185
    :try_start_2e
    iget-object p3, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p3}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmService(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionService;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-virtual {p3, v0}, Lcom/android/server/media/MediaSessionService;->onSessionPlaybackTypeChanged(Lcom/android/server/media/MediaSessionRecord;)V
    :try_end_39
    .catchall {:try_start_2e .. :try_end_39} :catchall_48

    .line 1187
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1189
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    goto :goto_4d

    :catchall_48
    move-exception p0

    .line 1187
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1188
    throw p0

    :cond_4d
    :goto_4d
    return-void

    :catchall_4e
    move-exception p0

    .line 1181
    :try_start_4f
    monitor-exit v0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    throw p0
.end method

.method public setQueueTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1124
    iget-object v0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmQueueTitle(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/CharSequence;)V

    .line 1125
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fgetmHandler(Lcom/android/server/media/MediaSessionRecord;)Lcom/android/server/media/MediaSessionRecord$MessageHandler;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(I)V

    return-void
.end method

.method public setRatingType(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1138
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$SessionStub;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$fputmRatingType(Lcom/android/server/media/MediaSessionRecord;I)V

    return-void
.end method
