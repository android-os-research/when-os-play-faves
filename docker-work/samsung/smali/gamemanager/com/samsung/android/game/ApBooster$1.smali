.class Lcom/samsung/android/game/ApBooster$1;
.super Landroid/os/Handler;
.source "ApBooster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/ApBooster;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/ApBooster;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/ApBooster;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/game/ApBooster;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/game/ApBooster$1;->this$0:Lcom/samsung/android/game/ApBooster;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    goto :goto_20

    .line 43
    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/game/ApBooster$1;->this$0:Lcom/samsung/android/game/ApBooster;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/game/ApBooster;->setDvfsValue(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/game/ApBooster;->access$200(Lcom/samsung/android/game/ApBooster;II)V

    goto :goto_20

    .line 40
    :pswitch_10
    iget-object v0, p0, Lcom/samsung/android/game/ApBooster$1;->this$0:Lcom/samsung/android/game/ApBooster;

    # invokes: Lcom/samsung/android/game/ApBooster;->release()V
    invoke-static {v0}, Lcom/samsung/android/game/ApBooster;->access$100(Lcom/samsung/android/game/ApBooster;)V

    .line 41
    goto :goto_20

    .line 37
    :pswitch_16
    iget-object v0, p0, Lcom/samsung/android/game/ApBooster$1;->this$0:Lcom/samsung/android/game/ApBooster;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/samsung/android/game/ApBooster;->acquire(II)V
    invoke-static {v0, v1, v2}, Lcom/samsung/android/game/ApBooster;->access$000(Lcom/samsung/android/game/ApBooster;II)V

    .line 38
    nop

    .line 46
    :goto_20
    return-void

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_16
        :pswitch_10
        :pswitch_6
    .end packed-switch
.end method
