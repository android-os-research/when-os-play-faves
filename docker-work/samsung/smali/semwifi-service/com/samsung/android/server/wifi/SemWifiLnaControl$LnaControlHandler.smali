.class Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;
.super Landroid/os/Handler;
.source "SemWifiLnaControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiLnaControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LnaControlHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiLnaControl;Landroid/os/Looper;)V
    .registers 3

    .line 258
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 259
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 14

    .line 263
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0x3b9aca00

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v0, :cond_a5

    const/4 v6, 0x3

    const-wide/16 v7, 0x0

    if-eq v0, v5, :cond_87

    if-eq v0, v4, :cond_70

    if-eq v0, v6, :cond_23

    const/4 p1, 0x4

    if-eq v0, p1, :cond_18

    goto/16 :goto_37a

    .line 355
    :cond_18
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$meLnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fputlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V

    goto/16 :goto_37a

    .line 340
    :cond_23
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    div-long/2addr v5, v1

    invoke-static {p1, v5, v6}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fputconnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;J)V

    .line 341
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetconnectionTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fputlastCheckTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;J)V

    .line 342
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fputcummulativeOffTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;J)V

    .line 344
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$meLnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fputlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V

    .line 345
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_69

    .line 347
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetwifiStandardBound(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v0

    if-lt p1, v0, :cond_69

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    .line 348
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mpolicyComplianceCheck(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 349
    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_37a

    .line 351
    :cond_69
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$meLnaControl(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V

    goto/16 :goto_37a

    .line 334
    :cond_70
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_37a

    .line 335
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/net/wifi/WifiUsabilityStatsEntry;

    .line 336
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mupdateWifiUsabilityStatsEntry(Lcom/samsung/android/server/wifi/SemWifiLnaControl;Landroid/net/wifi/WifiUsabilityStatsEntry;)V

    goto/16 :goto_37a

    .line 327
    :cond_87
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mcheckScpmPolicy(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)V

    .line 328
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_37a

    const/4 p1, 0x0

    .line 329
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 330
    invoke-static {p0, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_37a

    .line 265
    :cond_a5
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->removeMessages(I)V

    .line 266
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetconnected(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_37a

    .line 267
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    div-long/2addr v6, v1

    .line 268
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result p1

    if-eqz p1, :cond_d3

    .line 269
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetcummulativeOffTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastCheckTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J

    move-result-wide v8

    sub-long v8, v6, v8

    add-long/2addr v0, v8

    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fputcummulativeOffTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;J)V

    .line 271
    :cond_d3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1, v6, v7}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fputlastCheckTimeS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;J)V

    .line 273
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetscreenOn(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_330

    .line 274
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mgetWifiInfo(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Landroid/net/wifi/WifiInfo;

    move-result-object p1

    if-eqz p1, :cond_f1

    .line 275
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    goto :goto_f7

    :cond_f1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaControlLowThresholdDbm(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result p1

    .line 276
    :goto_f7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaControlHighThresholdDbm(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v0

    if-ge p1, v0, :cond_2cc

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaControlLowThresholdDbm(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v0

    if-le p1, v0, :cond_2cc

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetwifiStandardBound(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v1

    if-lt v0, v1, :cond_2cc

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMCSIdx(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v0

    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$sfgetMIN_SENSITIVITY_TABLE()[[I

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v2

    sub-int/2addr v2, v5

    aget-object v1, v1, v2

    array-length v1, v1

    if-ge v0, v1, :cond_2cc

    .line 279
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetrxCurrent(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v0

    sub-int/2addr v0, v5

    aget p1, p1, v0

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaCurrent(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v1

    sub-int/2addr v1, v5

    aget v0, v0, v1

    add-int/2addr p1, v0

    .line 280
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetrxCurrent(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)[I

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v1

    sub-int/2addr v1, v5

    aget v0, v0, v1

    .line 287
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v2

    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastBW(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMCSIdx(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v7

    .line 288
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v8

    if-nez v8, :cond_175

    move v8, v3

    goto :goto_176

    :cond_175
    move v8, v5

    .line 287
    :goto_176
    invoke-static {v1, v2, v6, v7, v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mgetExpectedRssi(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)I

    move-result v1

    .line 290
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v2

    if-nez v2, :cond_1d2

    .line 291
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastBW(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaGain(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v8

    sub-int/2addr v1, v8

    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v8

    invoke-static {v2, v6, v7, v1, v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mfindExpectedMCS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)I

    move-result v1

    .line 292
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastBW(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMCSIdx(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v9

    invoke-static {v2, v6, v7, v8, v9}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mgetExpectedRate(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)D

    move-result-wide v6

    .line 293
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastBW(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v10

    invoke-static {v2, v8, v9, v10, v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mgetExpectedRate(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)D

    move-result-wide v1

    goto :goto_221

    .line 295
    :cond_1d2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastBW(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaGain(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v8

    add-int/2addr v1, v8

    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v8

    invoke-static {v2, v6, v7, v1, v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mfindExpectedMCS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)I

    move-result v1

    .line 296
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastBW(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v8

    invoke-static {v2, v6, v7, v8, v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mgetExpectedRate(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)D

    move-result-wide v6

    .line 297
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMode(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v2

    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastBW(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v8

    iget-object v9, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v9}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastNSS(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlastMCSIdx(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v10

    invoke-static {v1, v2, v8, v9, v10}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$mgetExpectedRate(Lcom/samsung/android/server/wifi/SemWifiLnaControl;IIII)D

    move-result-wide v1

    :goto_221
    int-to-double v8, v0

    int-to-double v10, p1

    div-double/2addr v8, v10

    div-double v10, v6, v1

    mul-double/2addr v8, v10

    .line 300
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetrxTimeRatioPercent(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J

    move-result-wide v10

    long-to-double v10, v10

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    .line 301
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Met. "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " | "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetrxTimeRatioPercent(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 303
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result p1

    const-string v0, "Chng. mode: "

    if-eq p1, v5, :cond_299

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaEnableSensitivityRatio(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)D

    move-result-wide v1

    cmpg-double p1, v8, v1

    if-gez p1, :cond_299

    .line 304
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$meLnaControl(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V

    .line 305
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    goto/16 :goto_359

    .line 306
    :cond_299
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result p1

    if-eqz p1, :cond_359

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaEnableSensitivityRatio(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)D

    move-result-wide v1

    cmpl-double p1, v8, v1

    if-lez p1, :cond_359

    .line 307
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$meLnaControl(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V

    .line 308
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    goto/16 :goto_359

    .line 310
    :cond_2cc
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaControlLowThresholdDbm(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v0

    if-gt p1, v0, :cond_2fe

    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v0

    if-eqz v0, :cond_2fe

    .line 311
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$meLnaControl(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V

    .line 312
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RSSI lower bound / mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    goto :goto_359

    .line 313
    :cond_2fe
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetelnaControlHighThresholdDbm(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v0

    if-lt p1, v0, :cond_359

    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result p1

    if-eq p1, v5, :cond_359

    .line 314
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$meLnaControl(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V

    .line 315
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RSSI upper bound / mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    goto :goto_359

    .line 317
    :cond_330
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result p1

    if-eq p1, v4, :cond_359

    .line 318
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$meLnaControl(Lcom/samsung/android/server/wifi/SemWifiLnaControl;I)V

    .line 319
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Scr. off / mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatus(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->addEvent(Ljava/lang/String;I)V

    .line 321
    :cond_359
    :goto_359
    invoke-static {p0, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 322
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatusChanged(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_36c

    const-wide/16 v0, 0x2710

    goto :goto_36e

    :cond_36c
    const-wide/16 v0, 0xbb8

    .line 321
    :goto_36e
    invoke-virtual {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 323
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiLnaControl$LnaControlHandler;->this$0:Lcom/samsung/android/server/wifi/SemWifiLnaControl;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiLnaControl;->-$$Nest$fgetlnaStatusChanged(Lcom/samsung/android/server/wifi/SemWifiLnaControl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_37a
    :goto_37a
    return-void
.end method
