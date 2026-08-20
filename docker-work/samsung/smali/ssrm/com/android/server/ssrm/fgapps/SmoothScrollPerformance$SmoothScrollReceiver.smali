.class Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;
.super Lcom/android/server/ssrm/common/intent/scroll/ASmoothScrollER;
.source "SmoothScrollPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmoothScrollReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    .line 116
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;->this$0:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/intent/scroll/ASmoothScrollER;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .registers 2

    .line 116
    check-cast p1, Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;)V
    .registers 4
    .param p1, "event"    # Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;

    .line 119
    if-eqz p1, :cond_14

    .line 120
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;->this$0:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    invoke-static {v0, p1}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->-$$Nest$fputsmoothScrollEvent(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;)V

    .line 121
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$SmoothScrollReceiver;->this$0:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->-$$Nest$fgetsmoothScrollEvent(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ssrm/common/intent/scroll/SmoothScrollE;->getSmoothScrollAllValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->execute(Z)V

    .line 123
    :cond_14
    return-void
.end method
