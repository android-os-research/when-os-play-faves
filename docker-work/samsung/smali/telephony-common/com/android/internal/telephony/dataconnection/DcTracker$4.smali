.class Lcom/android/internal/telephony/dataconnection/DcTracker$4;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;)V
    .registers 2

    .line 1125
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onDisplayAdded(I)V
    .registers 2

    return-void
.end method

.method public whitelist onDisplayChanged(I)V
    .registers 3

    .line 1134
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$misScreenOn(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 1135
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmIsScreenOn(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result p1

    if-nez p1, :cond_48

    .line 1136
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fputmIsScreenOn(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V

    .line 1137
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 1138
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 1139
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$mrestartDataStallAlarm(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 1141
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$msetupDataForRetryConnection(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    goto :goto_48

    .line 1145
    :cond_2b
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmIsScreenOn(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 1146
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fputmIsScreenOn(Lcom/android/internal/telephony/dataconnection/DcTracker;Z)V

    .line 1147
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->stopNetStatPoll()V

    .line 1148
    iget-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->startNetStatPoll()V

    .line 1149
    iget-object p0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$mrestartDataStallAlarm(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    :cond_48
    :goto_48
    return-void
.end method

.method public whitelist onDisplayRemoved(I)V
    .registers 2

    return-void
.end method
