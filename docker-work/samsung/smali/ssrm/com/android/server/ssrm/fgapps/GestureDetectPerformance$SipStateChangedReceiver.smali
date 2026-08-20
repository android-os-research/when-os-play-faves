.class Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$SipStateChangedReceiver;
.super Lcom/android/server/ssrm/common/intent/sip/ASipStateChangedER;
.source "GestureDetectPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SipStateChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    .line 189
    iput-object p1, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$SipStateChangedReceiver;->this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    invoke-direct {p0}, Lcom/android/server/ssrm/common/intent/sip/ASipStateChangedER;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onEventOccurred(Lcom/android/server/ssrm/common/IEvent;)V
    .registers 2

    .line 189
    check-cast p1, Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$SipStateChangedReceiver;->onEventOccurred(Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;)V

    return-void
.end method

.method public onEventOccurred(Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;)V
    .registers 4
    .param p1, "event"    # Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;

    .line 192
    if-eqz p1, :cond_14

    .line 193
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$SipStateChangedReceiver;->this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    invoke-static {v0, p1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->-$$Nest$fputsipStateChangedE(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;)V

    .line 194
    iget-object v0, p0, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance$SipStateChangedReceiver;->this$0:Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->-$$Nest$fgetsipStateChangedE(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;)Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/ssrm/common/intent/sip/SipStateChangedE;->isVisibleWindow()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;->-$$Nest$fputisSipVisible(Lcom/android/server/ssrm/fgapps/GestureDetectPerformance;Z)V

    .line 196
    :cond_14
    return-void
.end method
