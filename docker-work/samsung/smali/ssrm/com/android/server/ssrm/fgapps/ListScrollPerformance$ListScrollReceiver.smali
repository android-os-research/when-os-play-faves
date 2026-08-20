.class Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;
.super Lcom/android/server/ssrm/common/intent/scroll/AListScrollER;
.source "ListScrollPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/ListScrollPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ListScrollReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    .line 112
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;->this$0:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/intent/scroll/AListScrollER;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .registers 2

    .line 112
    check-cast p1, Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;)V
    .registers 4
    .param p1, "event"    # Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

    .line 115
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;->this$0:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    invoke-static {v0, p1}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->-$$Nest$fputlistScrollEvent(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;)V

    .line 116
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$ListScrollReceiver;->this$0:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->-$$Nest$fgetlistScrollEvent(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;)Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ssrm/common/intent/scroll/ListScrollE;->getListScrollAllValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->execute(Z)V

    .line 117
    return-void
.end method
