.class Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$LidStateReceiver;
.super Lcom/android/server/ssrm/common/callback/fold/ALidStateER;
.source "GestureDetectPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LidStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    .line 208
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$LidStateReceiver;->this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/callback/fold/ALidStateER;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .registers 2

    .line 208
    check-cast p1, Lcom/android/server/ssrm/common/callback/fold/LidStateE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$LidStateReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/callback/fold/LidStateE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/callback/fold/LidStateE;)V
    .registers 4
    .param p1, "event"    # Lcom/android/server/ssrm/common/callback/fold/LidStateE;

    .line 211
    if-nez p1, :cond_3

    .line 212
    return-void

    .line 215
    :cond_3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SYSPERF_BOOST_DISABLE_WHEN_FOLDED:Z

    if-eqz v0, :cond_10

    .line 216
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$LidStateReceiver;->this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    invoke-virtual {p1}, Lcom/android/server/ssrm/common/callback/fold/LidStateE;->isClose()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->-$$Nest$fputisBoostDisabledByFold(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;Z)V

    .line 218
    :cond_10
    return-void
.end method
