.class public Lcom/android/server/job/controllers/QuotaController$QcUidObserver;
.super Landroid/app/IUidObserver$Stub;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QcUidObserver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .registers 2

    .line 385
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Landroid/app/IUidObserver$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/job/controllers/QuotaController;Lcom/android/server/job/controllers/QuotaController$QcUidObserver-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;-><init>(Lcom/android/server/job/controllers/QuotaController;)V

    return-void
.end method


# virtual methods
.method public onUidActive(I)V
    .registers 2

    return-void
.end method

.method public onUidCachedChanged(IZ)V
    .registers 3

    return-void
.end method

.method public onUidGone(IZ)V
    .registers 3

    return-void
.end method

.method public onUidIdle(IZ)V
    .registers 3

    return-void
.end method

.method public onUidProcAdjChanged(I)V
    .registers 2

    return-void
.end method

.method public onUidStateChanged(IIJI)V
    .registers 6

    .line 388
    iget-object p0, p0, Lcom/android/server/job/controllers/QuotaController$QcUidObserver;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {p0}, Lcom/android/server/job/controllers/QuotaController;->-$$Nest$fgetmHandler(Lcom/android/server/job/controllers/QuotaController;)Lcom/android/server/job/controllers/QuotaController$QcHandler;

    move-result-object p0

    const/4 p3, 0x3

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
