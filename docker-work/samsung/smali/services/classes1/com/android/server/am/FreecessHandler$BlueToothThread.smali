.class public Lcom/android/server/am/FreecessHandler$BlueToothThread;
.super Ljava/lang/Thread;
.source "FreecessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlueToothThread"
.end annotation


# instance fields
.field public mBtPriority:I

.field public final synthetic this$0:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessHandler;Ljava/lang/String;)V
    .registers 3

    .line 413
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$BlueToothThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 414
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 415
    iput p1, p0, Lcom/android/server/am/FreecessHandler$BlueToothThread;->mBtPriority:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 420
    iget v0, p0, Lcom/android/server/am/FreecessHandler$BlueToothThread;->mBtPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 421
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 422
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$BlueToothThread;->this$0:Lcom/android/server/am/FreecessHandler;

    new-instance v1, Lcom/android/server/am/FreecessHandler$BluetoothHanlder;

    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$BlueToothThread;->this$0:Lcom/android/server/am/FreecessHandler;

    invoke-direct {v1, p0}, Lcom/android/server/am/FreecessHandler$BluetoothHanlder;-><init>(Lcom/android/server/am/FreecessHandler;)V

    invoke-static {v0, v1}, Lcom/android/server/am/FreecessHandler;->-$$Nest$fputmBluetoothHanlder(Lcom/android/server/am/FreecessHandler;Lcom/android/server/am/FreecessHandler$BluetoothHanlder;)V

    .line 423
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
