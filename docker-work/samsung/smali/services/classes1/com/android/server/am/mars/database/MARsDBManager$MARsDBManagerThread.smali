.class public Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;
.super Ljava/lang/Thread;
.source "MARsDBManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/mars/database/MARsDBManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MARsDBManagerThread"
.end annotation


# instance fields
.field public mPriority:I

.field public final synthetic this$0:Lcom/android/server/am/mars/database/MARsDBManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager;Ljava/lang/String;)V
    .registers 3

    .line 113
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 114
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 115
    iput p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->mPriority:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/mars/database/MARsDBManager;Ljava/lang/String;I)V
    .registers 4

    .line 124
    iput-object p1, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    .line 125
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 126
    iput p3, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->mPriority:I

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 131
    iget v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->mPriority:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 132
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 133
    iget-object v0, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    new-instance v1, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;

    iget-object p0, p0, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerThread;->this$0:Lcom/android/server/am/mars/database/MARsDBManager;

    invoke-direct {v1, p0}, Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;-><init>(Lcom/android/server/am/mars/database/MARsDBManager;)V

    invoke-static {v0, v1}, Lcom/android/server/am/mars/database/MARsDBManager;->-$$Nest$fputmMARsDBManagerHandler(Lcom/android/server/am/mars/database/MARsDBManager;Lcom/android/server/am/mars/database/MARsDBManager$MARsDBManagerHandler;)V

    .line 134
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
