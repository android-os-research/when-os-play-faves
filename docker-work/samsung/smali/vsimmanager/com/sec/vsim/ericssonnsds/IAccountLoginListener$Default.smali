.class public Lcom/sec/vsim/ericssonnsds/IAccountLoginListener$Default;
.super Ljava/lang/Object;
.source "IAccountLoginListener.java"

# interfaces
.implements Lcom/sec/vsim/ericssonnsds/IAccountLoginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/IAccountLoginListener;
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

.method public onAccountLoggedIn(Ljava/lang/String;)V
    .registers 2
    .param p1, "tmobileId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    return-void
.end method
