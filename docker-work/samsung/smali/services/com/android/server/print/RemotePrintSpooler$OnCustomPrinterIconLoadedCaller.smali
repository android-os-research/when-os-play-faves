.class public final Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;
.super Landroid/util/TimedRemoteCaller;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OnCustomPrinterIconLoadedCaller"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/TimedRemoteCaller<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final mCallback:Landroid/print/IPrintSpoolerCallbacks;


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x1388

    .line 809
    invoke-direct {p0, v0, v1}, Landroid/util/TimedRemoteCaller;-><init>(J)V

    .line 810
    new-instance v0, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller$1;

    invoke-direct {v0, p0}, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller$1;-><init>(Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    return-void
.end method

.method public static synthetic access$400(Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;Ljava/lang/Object;I)V
    .registers 3

    .line 805
    invoke-virtual {p0, p1, p2}, Landroid/util/TimedRemoteCaller;->onRemoteMethodResult(Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public onCustomPrinterIconLoaded(Landroid/print/IPrintSpooler;Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;)Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 820
    invoke-virtual {p0}, Landroid/util/TimedRemoteCaller;->onBeforeRemoteCall()I

    move-result v0

    .line 821
    iget-object v1, p0, Lcom/android/server/print/RemotePrintSpooler$OnCustomPrinterIconLoadedCaller;->mCallback:Landroid/print/IPrintSpoolerCallbacks;

    invoke-interface {p1, p2, p3, v1, v0}, Landroid/print/IPrintSpooler;->onCustomPrinterIconLoaded(Landroid/print/PrinterId;Landroid/graphics/drawable/Icon;Landroid/print/IPrintSpoolerCallbacks;I)V

    .line 822
    invoke-virtual {p0, v0}, Landroid/util/TimedRemoteCaller;->getResultTimed(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Void;

    return-object p0
.end method
