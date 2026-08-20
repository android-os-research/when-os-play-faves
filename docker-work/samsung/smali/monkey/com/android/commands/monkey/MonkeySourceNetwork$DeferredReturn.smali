.class Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;
.super Ljava/lang/Object;
.source "MonkeySourceNetwork.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/monkey/MonkeySourceNetwork;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeferredReturn"
.end annotation


# static fields
.field public static final ON_WINDOW_STATE_CHANGE:I = 0x1


# instance fields
.field private deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

.field private event:I

.field private timeout:J


# direct methods
.method public constructor <init>(ILcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;J)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "deferredReturn"    # Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .param p3, "timeout"    # J

    .line 524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 525
    iput p1, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->event:I

    .line 526
    iput-object p2, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    .line 527
    iput-wide p3, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->timeout:J

    .line 528
    return-void
.end method


# virtual methods
.method public waitForEvent()Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;
    .registers 5

    .line 535
    iget v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->event:I

    packed-switch v0, :pswitch_data_36

    goto :goto_32

    .line 538
    :pswitch_6
    :try_start_6
    const-class v0, Lcom/android/commands/monkey/MonkeySourceNetworkViews;

    monitor-enter v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_9} :catch_15

    .line 539
    :try_start_9
    const-class v1, Lcom/android/commands/monkey/MonkeySourceNetworkViews;

    iget-wide v2, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->timeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 540
    monitor-exit v0

    .line 543
    goto :goto_32

    .line 540
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_12

    .end local p0    # "this":Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;
    :try_start_14
    throw v1
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_15} :catch_15

    .line 541
    .restart local p0    # "this":Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;
    :catch_15
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "MonkeyStub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deferral interrupted: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_32
    iget-object v0, p0, Lcom/android/commands/monkey/MonkeySourceNetwork$DeferredReturn;->deferredReturn:Lcom/android/commands/monkey/MonkeySourceNetwork$MonkeyCommandReturn;

    return-object v0

    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
