.class public Lcom/android/server/print/RemotePrintService$10;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintService;->handleStopPrinterStateTracking(Landroid/print/PrinterId;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/RemotePrintService;

.field public final synthetic val$printerId:Landroid/print/PrinterId;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V
    .registers 3

    .line 503
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$10;->this$0:Lcom/android/server/print/RemotePrintService;

    iput-object p2, p0, Lcom/android/server/print/RemotePrintService$10;->val$printerId:Landroid/print/PrinterId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 506
    iget-object v0, p0, Lcom/android/server/print/RemotePrintService$10;->this$0:Lcom/android/server/print/RemotePrintService;

    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$10;->val$printerId:Landroid/print/PrinterId;

    invoke-static {v0, p0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mhandleStopPrinterStateTracking(Lcom/android/server/print/RemotePrintService;Landroid/print/PrinterId;)V

    return-void
.end method
