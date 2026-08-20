.class public Lcom/silead/internal/IFingerService$Default;
.super Ljava/lang/Object;
.source "IFingerService.java"

# interfaces
.implements Lcom/silead/internal/IFingerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/silead/internal/IFingerService;
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

.method public testCmd(Landroid/os/IBinder;I[BLcom/silead/internal/IFingerServiceReceiver;)I
    .registers 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "cmdId"    # I
    .param p3, "param"    # [B
    .param p4, "receiver"    # Lcom/silead/internal/IFingerServiceReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    const/4 v0, 0x0

    return v0
.end method
