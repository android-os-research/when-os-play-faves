.class public Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;
.super Ljava/lang/Object;
.source "AuthenticationSession.java"

# interfaces
.implements Lcom/samsung/accessory/manager/connectivity/Connectivity$StateChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChanged(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    .line 129
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fgetmSessionHandler(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1d

    :cond_f
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1d

    .line 131
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fgetmSessionHandler(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1d
    :goto_1d
    return-void
.end method

.method public onStateChanged(I)V
    .registers 4

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v1, :cond_e

    .line 118
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fgetmSessionHandler(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_28

    :cond_e
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1c

    .line 120
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fgetmSessionHandler(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_28

    :cond_1c
    if-ne p1, v0, :cond_28

    .line 122
    iget-object p0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$1;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-static {p0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->-$$Nest$fgetmSessionHandler(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_28
    :goto_28
    return-void
.end method
