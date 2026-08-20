.class public Lcom/android/server/print/UserState$1;
.super Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/UserState;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method public constructor <init>(Lcom/android/server/print/UserState;)V
    .registers 2

    .line 464
    iput-object p1, p0, Lcom/android/server/print/UserState$1;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;-><init>(Lcom/android/server/print/UserState;)V

    return-void
.end method


# virtual methods
.method public onDestroyed()V
    .registers 2

    .line 467
    iget-object p0, p0, Lcom/android/server/print/UserState$1;->this$0:Lcom/android/server/print/UserState;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/print/UserState;->-$$Nest$fputmPrinterDiscoverySession(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)V

    return-void
.end method
