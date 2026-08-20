.class public Lcom/sec/vsim/app/jansky/ITRNReceivedListener$Default;
.super Ljava/lang/Object;
.source "ITRNReceivedListener.java"

# interfaces
.implements Lcom/sec/vsim/app/jansky/ITRNReceivedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/app/jansky/ITRNReceivedListener;
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

.method public onTRNReceived(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .param p1, "fromMsisdn"    # Ljava/lang/String;
    .param p3, "trn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 13
    .local p2, "toMsisdns":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method
