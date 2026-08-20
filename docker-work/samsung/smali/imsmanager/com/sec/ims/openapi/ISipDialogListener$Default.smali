.class public Lcom/sec/ims/openapi/ISipDialogListener$Default;
.super Ljava/lang/Object;
.source "ISipDialogListener.java"

# interfaces
.implements Lcom/sec/ims/openapi/ISipDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/openapi/ISipDialogListener;
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

    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public onSipReceived(Ljava/lang/String;)V
    .registers 2
    .param p1, "sipMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 17
    return-void
.end method
