.class Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;
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
    name = "GpisHintRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/CustomFrequencyManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/CustomFrequencyManagerService;

    .line 1592
    iput-object p1, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1595
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->mGpisHintEndTime:J

    .line 1596
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetsfTid(Lcom/android/server/ssrm/CustomFrequencyManagerService;)I

    move-result v0

    if-gtz v0, :cond_16

    .line 1597
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "GPIS::GpisHintRunnable SF it not set"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    return-void

    .line 1600
    :cond_16
    iget-object v0, p0, Lcom/android/server/ssrm/CustomFrequencyManagerService$GpisHintRunnable;->this$0:Lcom/android/server/ssrm/CustomFrequencyManagerService;

    invoke-static {v0}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->-$$Nest$fgetsfTid(Lcom/android/server/ssrm/CustomFrequencyManagerService;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/ssrm/CustomFrequencyManagerService;->nativeSetProfile(IZ)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1601
    sget-object v0, Lcom/android/server/ssrm/CustomFrequencyManagerService;->TAG:Ljava/lang/String;

    const-string v1, "GPIS::SetProfile default Fail"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    :cond_2a
    return-void
.end method
