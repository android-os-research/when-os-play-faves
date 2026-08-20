.class public Lcom/silead/internal/IFingerServiceReceiver$Default;
.super Ljava/lang/Object;
.source "IFingerServiceReceiver.java"

# interfaces
.implements Lcom/silead/internal/IFingerServiceReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/silead/internal/IFingerServiceReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTestCmd(I[B)I
    .registers 4
    .param p1, "cmdId"    # I
    .param p2, "result"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method
