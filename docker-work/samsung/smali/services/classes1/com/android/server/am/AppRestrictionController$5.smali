.class public Lcom/android/server/am/AppRestrictionController$5;
.super Landroid/app/IUidObserver$Stub;
.source "AppRestrictionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppRestrictionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppRestrictionController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppRestrictionController;)V
    .registers 2

    .line 1469
    iput-object p1, p0, Lcom/android/server/am/AppRestrictionController$5;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 4

    .line 1491
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$5;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object p0

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onUidGone(IZ)V
    .registers 4

    .line 1485
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$5;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1486
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 4

    .line 1479
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$5;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1480
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onUidProcAdjChanged(I)V
    .registers 2

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 6

    .line 1473
    iget-object p0, p0, Lcom/android/server/am/AppRestrictionController$5;->this$0:Lcom/android/server/am/AppRestrictionController;

    invoke-static {p0}, Lcom/android/server/am/AppRestrictionController;->-$$Nest$fgetmBgHandler(Lcom/android/server/am/AppRestrictionController;)Lcom/android/server/am/AppRestrictionController$BgHandler;

    move-result-object p0

    const/16 p3, 0x8

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1474
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
