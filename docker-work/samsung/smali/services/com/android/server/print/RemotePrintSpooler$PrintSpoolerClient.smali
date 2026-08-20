.class public final Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;
.super Landroid/print/IPrintSpoolerClient$Stub;
.source "RemotePrintSpooler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/RemotePrintSpooler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrintSpoolerClient"
.end annotation


# instance fields
.field public final mWeakSpooler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/print/RemotePrintSpooler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/print/RemotePrintSpooler;)V
    .registers 3

    .line 915
    invoke-direct {p0}, Landroid/print/IPrintSpoolerClient$Stub;-><init>()V

    .line 916
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    .registers 4

    .line 934
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/print/RemotePrintSpooler;

    if-eqz p0, :cond_1e

    .line 936
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 938
    :try_start_e
    invoke-static {p0}, Lcom/android/server/print/RemotePrintSpooler;->-$$Nest$fgetmCallbacks(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onAllPrintJobsForServiceHandled(Landroid/content/ComponentName;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 940
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 941
    throw p0

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onAllPrintJobsHandled()V
    .registers 3

    .line 947
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/print/RemotePrintSpooler;

    if-eqz p0, :cond_1a

    .line 949
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 951
    :try_start_e
    invoke-static {p0}, Lcom/android/server/print/RemotePrintSpooler;->-$$Nest$monAllPrintJobsHandled(Lcom/android/server/print/RemotePrintSpooler;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    .line 953
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1a

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 954
    throw p0

    :cond_1a
    :goto_1a
    return-void
.end method

.method public onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    .registers 4

    .line 921
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/print/RemotePrintSpooler;

    if-eqz p0, :cond_1e

    .line 923
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 925
    :try_start_e
    invoke-static {p0}, Lcom/android/server/print/RemotePrintSpooler;->-$$Nest$fgetmCallbacks(Lcom/android/server/print/RemotePrintSpooler;)Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerCallbacks;->onPrintJobQueued(Landroid/print/PrintJobInfo;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_19

    .line 927
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1e

    :catchall_19
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 928
    throw p0

    :cond_1e
    :goto_1e
    return-void
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .registers 4

    .line 960
    iget-object p0, p0, Lcom/android/server/print/RemotePrintSpooler$PrintSpoolerClient;->mWeakSpooler:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/print/RemotePrintSpooler;

    if-eqz p0, :cond_1a

    .line 962
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 964
    :try_start_e
    invoke-static {p0, p1}, Lcom/android/server/print/RemotePrintSpooler;->-$$Nest$monPrintJobStateChanged(Lcom/android/server/print/RemotePrintSpooler;Landroid/print/PrintJobInfo;)V
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_15

    .line 966
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1a

    :catchall_15
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 967
    throw p0

    :cond_1a
    :goto_1a
    return-void
.end method
