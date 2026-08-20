.class Landroid/mtp/MtpStorageManager$MtpObjectObserver;
.super Landroid/os/FileObserver;
.source "MtpStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/mtp/MtpStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MtpObjectObserver"
.end annotation


# instance fields
.field greylist-max-o mObject:Landroid/mtp/MtpStorageManager$MtpObject;

.field final synthetic blacklist this$0:Landroid/mtp/MtpStorageManager;


# direct methods
.method constructor blacklist <init>(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V
    .registers 4
    .param p2, "object"    # Landroid/mtp/MtpStorageManager$MtpObject;

    .line 65
    iput-object p1, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    .line 66
    invoke-virtual {p2}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object p1

    invoke-interface {p1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object p1

    const v0, 0x10003c8

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 69
    iput-object p2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist test-api finalize()V
    .registers 1

    .line 110
    return-void
.end method

.method public whitelist onEvent(ILjava/lang/String;)V
    .registers 8
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 74
    iget-object v0, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    monitor-enter v0

    .line 75
    and-int/lit16 v1, p1, 0x4000

    if-eqz v1, :cond_10

    .line 77
    :try_start_7
    invoke-static {}, Landroid/mtp/MtpStorageManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received Inotify overflow event!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :cond_10
    iget-object v1, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v1, p2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$mgetChild(Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)Landroid/mtp/MtpStorageManager$MtpObject;

    move-result-object v1

    .line 80
    .local v1, "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    and-int/lit16 v2, p1, 0x80

    if-nez v2, :cond_98

    and-int/lit16 v2, p1, 0x100

    if-eqz v2, :cond_20

    goto/16 :goto_98

    .line 83
    :cond_20
    and-int/lit8 v2, p1, 0x40

    if-nez v2, :cond_80

    and-int/lit16 v2, p1, 0x200

    if-eqz v2, :cond_29

    goto :goto_80

    .line 90
    :cond_29
    const v2, 0x8000

    and-int/2addr v2, p1

    if-eqz v2, :cond_54

    .line 91
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    const-string v3, "Got inotify deleted"

    iget-object v4, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-virtual {v4}, Landroid/mtp/MtpStorageManager$MtpObject;->getPath()Ljava/nio/file/Path;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/mtp/MtpStorageManager;->-$$Nest$msDebugLog(Landroid/mtp/MtpStorageManager;Ljava/lang/String;Ljava/nio/file/Path;)V

    .line 92
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$fgetmObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    if-eqz v2, :cond_4d

    .line 93
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v2}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$fgetmObserver(Landroid/mtp/MtpStorageManager$MtpObject;)Landroid/os/FileObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/FileObserver;->stopWatching()V

    .line 94
    :cond_4d
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/mtp/MtpStorageManager$MtpObject;->-$$Nest$fputmObserver(Landroid/mtp/MtpStorageManager$MtpObject;Landroid/os/FileObserver;)V

    goto :goto_ae

    .line 95
    :cond_54
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_67

    .line 96
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    const-string v3, "Got inotify CLOSE_WRITE event for"

    invoke-static {v2, v3, p2}, Landroid/mtp/MtpStorageManager;->-$$Nest$msDebugLog(Landroid/mtp/MtpStorageManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    iget-object v3, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    invoke-static {v2, v3, p2}, Landroid/mtp/MtpStorageManager;->-$$Nest$mhandleChangedObject(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;)V

    goto :goto_ae

    .line 99
    :cond_67
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got unrecognized event "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/mtp/MtpStorageManager;->-$$Nest$msDebugLog(Landroid/mtp/MtpStorageManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ae

    .line 84
    :cond_80
    :goto_80
    if-nez v1, :cond_8b

    .line 85
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    const-string v3, "Object was null in event"

    invoke-static {v2, v3, p2}, Landroid/mtp/MtpStorageManager;->-$$Nest$msDebugLog(Landroid/mtp/MtpStorageManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    monitor-exit v0

    return-void

    .line 88
    :cond_8b
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    const-string v3, "Got inotify removed event for"

    invoke-static {v2, v3, p2}, Landroid/mtp/MtpStorageManager;->-$$Nest$msDebugLog(Landroid/mtp/MtpStorageManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    invoke-static {v2, v1}, Landroid/mtp/MtpStorageManager;->-$$Nest$mhandleRemovedObject(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;)V

    goto :goto_ae

    .line 81
    :cond_98
    :goto_98
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    const-string v3, "Got inotify added event for"

    invoke-static {v2, v3, p2}, Landroid/mtp/MtpStorageManager;->-$$Nest$msDebugLog(Landroid/mtp/MtpStorageManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v2, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->this$0:Landroid/mtp/MtpStorageManager;

    iget-object v3, p0, Landroid/mtp/MtpStorageManager$MtpObjectObserver;->mObject:Landroid/mtp/MtpStorageManager$MtpObject;

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v4, p1

    if-eqz v4, :cond_aa

    const/4 v4, 0x1

    goto :goto_ab

    :cond_aa
    const/4 v4, 0x0

    :goto_ab
    invoke-static {v2, v3, p2, v4}, Landroid/mtp/MtpStorageManager;->-$$Nest$mhandleAddedObject(Landroid/mtp/MtpStorageManager;Landroid/mtp/MtpStorageManager$MtpObject;Ljava/lang/String;Z)V

    .line 101
    .end local v1    # "obj":Landroid/mtp/MtpStorageManager$MtpObject;
    :goto_ae
    monitor-exit v0

    .line 102
    return-void

    .line 101
    :catchall_b0
    move-exception v1

    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_7 .. :try_end_b2} :catchall_b0

    throw v1
.end method
