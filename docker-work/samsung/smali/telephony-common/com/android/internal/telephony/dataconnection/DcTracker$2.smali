.class Lcom/android/internal/telephony/dataconnection/DcTracker$2;
.super Ljava/lang/Object;
.source "DcTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 708
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 713
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$mupdateDataActivityBundle(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 715
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$mupdateDataActivity(Lcom/android/internal/telephony/dataconnection/DcTracker;)V

    .line 717
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmIsScreenOn(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 718
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmResolver(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/content/ContentResolver;

    move-result-object v1

    const/16 v2, 0x3e8

    const-string v3, "pdp_watchdog_poll_interval_ms"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fputmNetStatPollPeriod(Lcom/android/internal/telephony/dataconnection/DcTracker;I)V

    goto :goto_36

    .line 721
    :cond_24
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmResolver(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/content/ContentResolver;

    move-result-object v1

    const v2, 0x927c0

    const-string v3, "pdp_watchdog_long_poll_interval_ms"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fputmNetStatPollPeriod(Lcom/android/internal/telephony/dataconnection/DcTracker;I)V

    .line 726
    :goto_36
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmNetStatPollEnabled(Lcom/android/internal/telephony/dataconnection/DcTracker;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 727
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmDataConnectionTracker(Lcom/android/internal/telephony/dataconnection/DcTracker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$2;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->-$$Nest$fgetmNetStatPollPeriod(Lcom/android/internal/telephony/dataconnection/DcTracker;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4e
    return-void
.end method
