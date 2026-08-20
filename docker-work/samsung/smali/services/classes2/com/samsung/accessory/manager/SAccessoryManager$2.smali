.class public Lcom/samsung/accessory/manager/SAccessoryManager$2;
.super Ljava/lang/Object;
.source "SAccessoryManager.java"

# interfaces
.implements Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$2;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-eq p1, v0, :cond_11

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    const/4 p1, -0x1

    goto :goto_19

    :cond_e
    const/16 p1, 0xd

    goto :goto_19

    :cond_11
    const/16 p1, 0xc

    goto :goto_19

    :cond_14
    const/16 p1, 0xb

    goto :goto_19

    :cond_17
    const/16 p1, 0xa

    .line 188
    :goto_19
    iget-object p0, p0, Lcom/samsung/accessory/manager/SAccessoryManager$2;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {p0}, Lcom/samsung/accessory/manager/SAccessoryManager;->-$$Nest$fgetmAuthHandler(Lcom/samsung/accessory/manager/SAccessoryManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
