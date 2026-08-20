.class Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$LidStateReceiver;
.super Lcom/android/server/ssrm/common/callback/fold/ALidStateER;
.source "SmoothScrollPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LidStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    .line 136
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$LidStateReceiver;->this$0:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/callback/fold/ALidStateER;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .registers 2

    .line 136
    check-cast p1, Lcom/android/server/ssrm/common/callback/fold/LidStateE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$LidStateReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/callback/fold/LidStateE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/callback/fold/LidStateE;)V
    .registers 4
    .param p1, "event"    # Lcom/android/server/ssrm/common/callback/fold/LidStateE;

    .line 139
    if-nez p1, :cond_3

    .line 140
    return-void

    .line 142
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_DISABLE_WHEN_FOLDED:Z

    if-eqz v0, :cond_16

    .line 143
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$LidStateReceiver;->this$0:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    invoke-virtual {p1}, Lcom/android/server/ssrm/common/callback/fold/LidStateE;->isClose()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->-$$Nest$fputisBoostDisabledByFold(Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;Z)V

    .line 144
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance$LidStateReceiver;->this$0:Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/fgapps/SmoothScrollPerformance;->execute(Z)V

    .line 146
    :cond_16
    return-void
.end method
