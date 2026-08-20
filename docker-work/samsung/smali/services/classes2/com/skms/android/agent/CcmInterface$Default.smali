.class public Lcom/skms/android/agent/CcmInterface$Default;
.super Ljava/lang/Object;
.source "CcmInterface.java"

# interfaces
.implements Lcom/skms/android/agent/CcmInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skms/android/agent/CcmInterface;
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
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public handleCcm([BI)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method
