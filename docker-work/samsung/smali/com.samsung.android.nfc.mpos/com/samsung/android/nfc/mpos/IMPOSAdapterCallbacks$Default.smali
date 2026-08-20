.class public Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks$Default;
.super Ljava/lang/Object;
.source "IMPOSAdapterCallbacks.java"

# interfaces
.implements Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/nfc/mpos/IMPOSAdapterCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 18
    const/4 v0, 0x0

    return-object v0
.end method

.method public onErrorNotified(I)V
    .registers 2
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 15
    return-void
.end method

.method public onTransactionEventDetected(Landroid/content/Intent;)V
    .registers 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 12
    return-void
.end method
