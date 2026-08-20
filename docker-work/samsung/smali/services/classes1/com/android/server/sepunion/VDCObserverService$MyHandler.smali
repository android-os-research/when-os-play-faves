.class public Lcom/android/server/sepunion/VDCObserverService$MyHandler;
.super Landroid/os/Handler;
.source "VDCObserverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/VDCObserverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/VDCObserverService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Looper;)V
    .registers 3

    .line 290
    iput-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    .line 291
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VDC thread msg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VDCObserverService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x14

    if-eq v0, v1, :cond_32

    const/16 p1, 0x1e

    if-eq v0, p1, :cond_27

    goto :goto_45

    .line 305
    :cond_27
    iget-object p1, p0, Lcom/android/server/sepunion/VDCObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-static {p1}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$munregisterUsageStatsWatcher(Lcom/android/server/sepunion/VDCObserverService;)V

    .line 306
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-static {p0}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$mregisterUsageStatsWatcher(Lcom/android/server/sepunion/VDCObserverService;)V

    goto :goto_45

    .line 302
    :cond_32
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$monUsageStatsChanged(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Bundle;)V

    goto :goto_45

    .line 299
    :cond_3c
    iget-object p0, p0, Lcom/android/server/sepunion/VDCObserverService$MyHandler;->this$0:Lcom/android/server/sepunion/VDCObserverService;

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/sepunion/VDCObserverService;->-$$Nest$monFgServiceStateChanged(Lcom/android/server/sepunion/VDCObserverService;Landroid/os/Bundle;)V

    :goto_45
    return-void
.end method
