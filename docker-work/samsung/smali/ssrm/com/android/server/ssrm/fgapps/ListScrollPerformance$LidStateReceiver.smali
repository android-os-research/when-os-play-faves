.class Lcom/android/server/ssrm/fgapps/ListScrollPerformance$LidStateReceiver;
.super Lcom/android/server/ssrm/common/callback/fold/ALidStateER;
.source "ListScrollPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/ListScrollPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LidStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    .line 130
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$LidStateReceiver;->this$0:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/callback/fold/ALidStateER;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .registers 2

    .line 130
    check-cast p1, Lcom/android/server/ssrm/common/callback/fold/LidStateE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$LidStateReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/callback/fold/LidStateE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/callback/fold/LidStateE;)V
    .registers 4
    .param p1, "event"    # Lcom/android/server/ssrm/common/callback/fold/LidStateE;

    .line 133
    if-nez p1, :cond_3

    .line 134
    return-void

    .line 136
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_DISABLE_WHEN_FOLDED:Z

    if-eqz v0, :cond_16

    .line 137
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$LidStateReceiver;->this$0:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    invoke-virtual {p1}, Lcom/android/server/ssrm/common/callback/fold/LidStateE;->isClose()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->-$$Nest$fputisBoostDisabledByFold(Lcom/android/server/ssrm/fgapps/ListScrollPerformance;Z)V

    .line 138
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/ListScrollPerformance$LidStateReceiver;->this$0:Lcom/android/server/ssrm/fgapps/ListScrollPerformance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/ListScrollPerformance;->execute(Z)V

    .line 140
    :cond_16
    return-void
.end method
