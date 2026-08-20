.class public Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;
.super Ljava/lang/Object;
.source "McfDeviceSyncManager.java"

# interfaces
.implements Lcom/samsung/android/mcfds/lib/AbstractDeviceSyncManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->bindMcf(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public mBindReason:I

.field public final synthetic this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

.field public final synthetic val$bindReason:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;I)V
    .registers 3

    .line 193
    iput-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    iput p2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->val$bindReason:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput p2, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->mBindReason:I

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .registers 4

    const/4 v0, 0x1

    const-string v1, "[MCF_DS_SYS]_McfDsManager"

    if-eq p1, v0, :cond_4f

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2c

    const/4 v0, 0x4

    if-eq p1, v0, :cond_26

    const/4 v0, 0x5

    if-eq p1, v0, :cond_f

    goto :goto_54

    :cond_f
    const-string p1, "bindMcf : SERVICE_STATE_AVAILABLE"

    .line 213
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x8

    .line 214
    invoke-static {p1}, Lcom/samsung/android/server/continuity/AbstractPreconditionObserver;->isSupported(I)Z

    move-result p1

    if-eqz p1, :cond_54

    .line 215
    iget-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-static {p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_54

    :cond_26
    const-string p1, "bindMcf : SERVICE_STATE_UNAVAILABLE"

    .line 209
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_54

    .line 200
    :cond_2c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bindMcf : SERVICE_STATE_CONNECTED (bindReason: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->mBindReason:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->this$0:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    iget v0, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->mBindReason:I

    invoke-static {p1, v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->-$$Nest$minitMcfDeviceSyncMainController(Lcom/samsung/android/server/continuity/McfDeviceSyncManager;I)V

    goto :goto_54

    :cond_4f
    const-string p1, "bindMcf : SERVICE_STATE_DISCONNECTED"

    .line 205
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_54
    :goto_54
    const/4 p1, 0x0

    .line 220
    iput p1, p0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager$3;->mBindReason:I

    return-void
.end method
