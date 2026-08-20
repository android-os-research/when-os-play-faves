.class public Lcom/android/server/media/MediaSessionRecord$MessageHandler;
.super Landroid/os/Handler;
.source "MediaSessionRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageHandler"
.end annotation


# static fields
.field public static final MSG_DESTROYED:I = 0x9

.field public static final MSG_SEND_EVENT:I = 0x6

.field public static final MSG_UPDATE_EXTRAS:I = 0x5

.field public static final MSG_UPDATE_METADATA:I = 0x1

.field public static final MSG_UPDATE_PLAYBACK_STATE:I = 0x2

.field public static final MSG_UPDATE_QUEUE:I = 0x3

.field public static final MSG_UPDATE_QUEUE_TITLE:I = 0x4

.field public static final MSG_UPDATE_SESSION_STATE:I = 0x7

.field public static final MSG_UPDATE_VOLUME:I = 0x8


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaSessionRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionRecord;Landroid/os/Looper;)V
    .registers 3

    .line 1799
    iput-object p1, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    .line 1800
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 1804
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_3e

    :pswitch_5
    goto :goto_3d

    .line 1830
    :pswitch_6
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushSessionDestroyed(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_3d

    .line 1827
    :pswitch_c
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushVolumeUpdate(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_3d

    .line 1821
    :pswitch_12
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushEvent(Lcom/android/server/media/MediaSessionRecord;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_3d

    .line 1818
    :pswitch_20
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushExtrasUpdate(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_3d

    .line 1815
    :pswitch_26
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushQueueTitleUpdate(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_3d

    .line 1812
    :pswitch_2c
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushQueueUpdate(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_3d

    .line 1809
    :pswitch_32
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushPlaybackStateUpdate(Lcom/android/server/media/MediaSessionRecord;)V

    goto :goto_3d

    .line 1806
    :pswitch_38
    iget-object p0, p0, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->this$0:Lcom/android/server/media/MediaSessionRecord;

    invoke-static {p0}, Lcom/android/server/media/MediaSessionRecord;->-$$Nest$mpushMetadataUpdate(Lcom/android/server/media/MediaSessionRecord;)V

    :goto_3d
    return-void

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_38
        :pswitch_32
        :pswitch_2c
        :pswitch_26
        :pswitch_20
        :pswitch_12
        :pswitch_5
        :pswitch_c
        :pswitch_6
    .end packed-switch
.end method

.method public post(I)V
    .registers 3

    const/4 v0, 0x0

    .line 1835
    invoke-virtual {p0, p1, v0}, Lcom/android/server/media/MediaSessionRecord$MessageHandler;->post(ILjava/lang/Object;)V

    return-void
.end method

.method public post(ILjava/lang/Object;)V
    .registers 3

    .line 1839
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public post(ILjava/lang/Object;Landroid/os/Bundle;)V
    .registers 4

    .line 1843
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1844
    invoke-virtual {p0, p3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1845
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
