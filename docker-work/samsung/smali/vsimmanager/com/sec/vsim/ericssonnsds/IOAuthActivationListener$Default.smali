.class public Lcom/sec/vsim/ericssonnsds/IOAuthActivationListener$Default;
.super Ljava/lang/Object;
.source "IOAuthActivationListener.java"

# interfaces
.implements Lcom/sec/vsim/ericssonnsds/IOAuthActivationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/IOAuthActivationListener;
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

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public onOAuthActivatedMode()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
