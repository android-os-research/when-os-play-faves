.class public Lcom/android/server/job/controllers/PrefetchController$1;
.super Ljava/lang/Object;
.source "PrefetchController.java"

# interfaces
.implements Landroid/app/usage/UsageStatsManagerInternal$EstimatedLaunchTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/PrefetchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/PrefetchController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/PrefetchController;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/android/server/job/controllers/PrefetchController$1;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEstimatedLaunchTimeChanged(ILjava/lang/String;J)V
    .registers 6

    .line 108
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 109
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 110
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 111
    iput-wide p3, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 112
    iget-object p0, p0, Lcom/android/server/job/controllers/PrefetchController$1;->this$0:Lcom/android/server/job/controllers/PrefetchController;

    invoke-static {p0}, Lcom/android/server/job/controllers/PrefetchController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/PrefetchController;)Lcom/android/server/job/controllers/PrefetchController$PcHandler;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 113
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
