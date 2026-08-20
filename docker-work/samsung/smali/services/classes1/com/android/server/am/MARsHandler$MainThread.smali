.class public Lcom/android/server/am/MARsHandler$MainThread;
.super Ljava/lang/Thread;
.source "MARsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MainThread"
.end annotation


# instance fields
.field public mPriority:I

.field public final synthetic this$0:Lcom/android/server/am/MARsHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/MARsHandler;Ljava/lang/String;)V
    .registers 3

    .line 86
    iput-object p1, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    .line 87
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 88
    iput p1, p0, Lcom/android/server/am/MARsHandler$MainThread;->mPriority:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/MARsHandler;Ljava/lang/String;I)V
    .registers 4

    .line 97
    iput-object p1, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    .line 98
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 99
    iput p3, p0, Lcom/android/server/am/MARsHandler$MainThread;->mPriority:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 104
    iget v0, p0, Lcom/android/server/am/MARsHandler$MainThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 105
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 106
    iget-object v0, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    new-instance v1, Lcom/android/server/am/MARsHandler$MainHandler;

    iget-object p0, p0, Lcom/android/server/am/MARsHandler$MainThread;->this$0:Lcom/android/server/am/MARsHandler;

    invoke-direct {v1, p0}, Lcom/android/server/am/MARsHandler$MainHandler;-><init>(Lcom/android/server/am/MARsHandler;)V

    iput-object v1, v0, Lcom/android/server/am/MARsHandler;->mMainHandler:Lcom/android/server/am/MARsHandler$MainHandler;

    .line 107
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
