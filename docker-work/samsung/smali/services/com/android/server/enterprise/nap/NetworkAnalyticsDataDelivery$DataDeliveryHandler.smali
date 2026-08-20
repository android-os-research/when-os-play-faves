.class public Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;
.super Landroid/os/Handler;
.source "NetworkAnalyticsDataDelivery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DataDeliveryHandler"
.end annotation


# static fields
.field public static final ACTION_ACCUMULATE_DATA:I = 0x1


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;Landroid/os/Looper;)V
    .registers 3

    .line 1361
    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    .line 1363
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 1375
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    goto :goto_50

    .line 1381
    :cond_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_d

    return-void

    .line 1389
    :cond_d
    iget-object v0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-static {v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->-$$Nest$fgetdataEntry(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1391
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->-$$Nest$fgetdataEntry(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0x32

    if-ge p1, v0, :cond_35

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->-$$Nest$fgetstartTimer(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long p1, v0, v2

    if-lez p1, :cond_50

    .line 1393
    :cond_35
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->-$$Nest$fgetdataEntry(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->deliverData(Ljava/util/List;)I

    .line 1395
    iget-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-static {p1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->-$$Nest$fgetdataEntry(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1397
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery$DataDeliveryHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->-$$Nest$fputstartTimer(Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;J)V

    :cond_50
    :goto_50
    return-void
.end method
