.class Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;
.super Landroid/os/Handler;
.source "SemNitzStateMachineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 83
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_91

    const/4 v1, 0x2

    if-eq p1, v1, :cond_a

    goto/16 :goto_9d

    .line 90
    :cond_a
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    const-string v2, "EVENT_CHECK_MANUAL_SET_TIME"

    invoke-static {p1, v2}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;Ljava/lang/String;)V

    .line 91
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmCountryIsoCode(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_45

    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmRetryCnt(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)I

    move-result p1

    if-ge p1, v1, :cond_45

    .line 92
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Landroid/os/Handler;

    move-result-object p1

    iget-object v2, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {v2}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 93
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmRetryCnt(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fputmRetryCnt(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;I)V

    goto :goto_9d

    .line 95
    :cond_45
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmCountryIsoCode(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8a

    invoke-static {}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$sfgetmPrevNitzIso()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmCountryIsoCode(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8a

    .line 96
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.samsung.android.intent.action.MANUAL_SET_TIME"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.telephonyui"

    .line 97
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 99
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    const-string v0, "TIMEZONE: send SEM_ACTION_MANUAL_SET_TIME"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;Ljava/lang/String;)V

    .line 101
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fgetmCountryIsoCode(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$sfputmPrevNitzIso(Ljava/lang/String;)V

    .line 103
    :cond_8a
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$fputmRetryCnt(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;I)V

    goto :goto_9d

    .line 85
    :cond_91
    iget-object p1, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    const-string v0, "EVENT_CHECK_MULTI_TIME_ZONE_POPUP"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$mlog(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;Ljava/lang/String;)V

    .line 86
    iget-object p0, p0, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl$1;->this$0:Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;

    invoke-static {p0}, Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;->-$$Nest$mshowMultitimezonePopup(Lcom/android/internal/telephony/nitz/SemNitzStateMachineImpl;)V

    :goto_9d
    return-void
.end method
