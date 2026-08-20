.class public Lcom/android/server/am/FreecessHandler$FreecessThread;
.super Ljava/lang/Thread;
.source "FreecessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreecessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FreecessThread"
.end annotation


# instance fields
.field public mPriority:I

.field public final synthetic this$0:Lcom/android/server/am/FreecessHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/FreecessHandler;Ljava/lang/String;)V
    .registers 3

    .line 160
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 161
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 162
    iput p1, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->mPriority:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/FreecessHandler;Ljava/lang/String;I)V
    .registers 4

    .line 171
    iput-object p1, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    .line 172
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 173
    iput p3, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->mPriority:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 178
    iget v0, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 179
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 180
    iget-object v0, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    new-instance v1, Lcom/android/server/am/FreecessHandler$MainHandler;

    iget-object v2, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    invoke-direct {v1, v2}, Lcom/android/server/am/FreecessHandler$MainHandler;-><init>(Lcom/android/server/am/FreecessHandler;)V

    iput-object v1, v0, Lcom/android/server/am/FreecessHandler;->mMainHandler:Lcom/android/server/am/FreecessHandler$MainHandler;

    .line 181
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 184
    iget-object p0, p0, Lcom/android/server/am/FreecessHandler$FreecessThread;->this$0:Lcom/android/server/am/FreecessHandler;

    invoke-virtual {p0}, Lcom/android/server/am/FreecessHandler;->sendSCPMChangedPkgMsgToDBHandler()V

    return-void
.end method
