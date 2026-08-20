.class public Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener$Default;
.super Ljava/lang/Object;
.source "INSDSServiceEventListener.java"

# interfaces
.implements Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/vsim/ericssonnsds/INSDSServiceEventListener;
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

.method public onNsdsServiceResponse(IZLjava/util/List;)V
    .registers 4
    .param p1, "eventType"    # I
    .param p2, "success"    # Z
    .param p3, "errorCodes"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 14
    return-void
.end method
