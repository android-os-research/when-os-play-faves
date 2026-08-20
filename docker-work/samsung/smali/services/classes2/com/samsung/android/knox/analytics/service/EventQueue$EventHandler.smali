.class public Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;
.super Landroid/os/Handler;
.source "EventQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/service/EventQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/analytics/service/EventQueue;Landroid/os/Looper;)V
    .registers 3

    .line 58
    iput-object p1, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    .line 59
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    if-nez p1, :cond_c

    .line 64
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/EventQueue;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "handleMessage(): msg is null!"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->-$$Nest$mwaitVersioningCompleted(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    .line 69
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "KnoxAnalyticsData"

    if-eq v0, v1, :cond_65

    const/4 v1, 0x2

    if-eq v0, v1, :cond_47

    const/4 v1, 0x3

    if-eq v0, v1, :cond_28

    .line 95
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/EventQueue;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "handleMessage(): invalid msg.what"

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    .line 84
    :cond_28
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/EventQueue;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventQueue.handleMessage() - EVENT_QUEUE_MSG_CLEANED_LOG_API"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 86
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 91
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-static {v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->-$$Nest$msaveCachedLogs(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    .line 92
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->-$$Nest$maddEvent(Lcom/samsung/android/knox/analytics/service/EventQueue;Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;I)V

    goto :goto_7d

    .line 77
    :cond_47
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/EventQueue;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventQueue.handleMessage() - EVENT_QUEUE_MSG_KA_DEACTIVATION"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 79
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-static {v0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->-$$Nest$menqueueEvent(Lcom/samsung/android/knox/analytics/service/EventQueue;Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    .line 81
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-static {p0}, Lcom/samsung/android/knox/analytics/service/EventQueue;->-$$Nest$mstop(Lcom/samsung/android/knox/analytics/service/EventQueue;)V

    goto :goto_7d

    .line 71
    :cond_65
    invoke-static {}, Lcom/samsung/android/knox/analytics/service/EventQueue;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventQueue.handleMessage() - EVENT_QUEUE_MSG_LOG_API"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/analytics/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    .line 73
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    .line 74
    iget-object p0, p0, Lcom/samsung/android/knox/analytics/service/EventQueue$EventHandler;->this$0:Lcom/samsung/android/knox/analytics/service/EventQueue;

    invoke-static {p0, p1}, Lcom/samsung/android/knox/analytics/service/EventQueue;->-$$Nest$menqueueEvent(Lcom/samsung/android/knox/analytics/service/EventQueue;Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    :goto_7d
    return-void
.end method
