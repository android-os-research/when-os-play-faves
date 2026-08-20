.class public Lcom/android/server/print/RemotePrintService$4;
.super Ljava/lang/Object;
.source "RemotePrintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/RemotePrintService;->handleCreatePrinterDiscoverySession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/RemotePrintService;


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintService;)V
    .registers 2

    .line 272
    iput-object p1, p0, Lcom/android/server/print/RemotePrintService$4;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 275
    iget-object p0, p0, Lcom/android/server/print/RemotePrintService$4;->this$0:Lcom/android/server/print/RemotePrintService;

    invoke-static {p0}, Lcom/android/server/print/RemotePrintService;->-$$Nest$mhandleCreatePrinterDiscoverySession(Lcom/android/server/print/RemotePrintService;)V

    return-void
.end method
