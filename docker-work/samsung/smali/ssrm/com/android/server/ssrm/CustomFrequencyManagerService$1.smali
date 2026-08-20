.class Lcom/android/server/ssrm/CustomFrequencyManagerService$1;
.super Ljava/lang/Object;
.source "CustomFrequencyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/CustomFrequencyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 528
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 531
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmPerfTuneCheckCount(Lcom/android/server/ssrm/CustomFrequencyManagerService;)I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_2a

    .line 532
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmPerfTuneCheckCount(Lcom/android/server/ssrm/CustomFrequencyManagerService;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fputmPerfTuneCheckCount(Lcom/android/server/ssrm/CustomFrequencyManagerService;I)V

    .line 533
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetmPerfTuneValue(Lcom/android/server/ssrm/CustomFrequencyManagerService;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$macquirePerfTune(Lcom/android/server/ssrm/CustomFrequencyManagerService;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v0, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mCfmsHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$1;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    iget-object v1, v1, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mPerfTuneRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 536
    :cond_2a
    return-void
.end method
