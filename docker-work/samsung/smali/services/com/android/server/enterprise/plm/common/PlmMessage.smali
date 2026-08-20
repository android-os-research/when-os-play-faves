.class public Lcom/android/server/enterprise/plm/common/PlmMessage;
.super Ljava/lang/Object;
.source "PlmMessage.java"


# instance fields
.field public callback:Ljava/lang/Object;

.field public obj1:Ljava/lang/Object;

.field public obj2:Ljava/lang/Object;

.field public obj3:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
    .registers 4

    .line 13
    new-instance v0, Lcom/android/server/enterprise/plm/common/PlmMessage;

    invoke-direct {v0}, Lcom/android/server/enterprise/plm/common/PlmMessage;-><init>()V

    .line 14
    iput-object p2, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->callback:Ljava/lang/Object;

    .line 16
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    .line 17
    iput p1, p0, Landroid/os/Message;->what:I

    .line 18
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 5

    .line 24
    new-instance v0, Lcom/android/server/enterprise/plm/common/PlmMessage;

    invoke-direct {v0}, Lcom/android/server/enterprise/plm/common/PlmMessage;-><init>()V

    .line 25
    iput-object p2, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 26
    iput-object p3, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->callback:Ljava/lang/Object;

    .line 28
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    .line 29
    iput p1, p0, Landroid/os/Message;->what:I

    .line 30
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 6

    .line 37
    new-instance v0, Lcom/android/server/enterprise/plm/common/PlmMessage;

    invoke-direct {v0}, Lcom/android/server/enterprise/plm/common/PlmMessage;-><init>()V

    .line 38
    iput-object p2, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 39
    iput-object p3, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 40
    iput-object p4, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->callback:Ljava/lang/Object;

    .line 42
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    .line 43
    iput p1, p0, Landroid/os/Message;->what:I

    .line 44
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method

.method public static obtain(Landroid/os/Handler;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .registers 7

    .line 51
    new-instance v0, Lcom/android/server/enterprise/plm/common/PlmMessage;

    invoke-direct {v0}, Lcom/android/server/enterprise/plm/common/PlmMessage;-><init>()V

    .line 52
    iput-object p2, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj1:Ljava/lang/Object;

    .line 53
    iput-object p3, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj2:Ljava/lang/Object;

    .line 54
    iput-object p4, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->obj3:Ljava/lang/Object;

    .line 55
    iput-object p5, v0, Lcom/android/server/enterprise/plm/common/PlmMessage;->callback:Ljava/lang/Object;

    .line 57
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object p0

    .line 58
    iput p1, p0, Landroid/os/Message;->what:I

    .line 59
    iput-object v0, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    return-object p0
.end method
