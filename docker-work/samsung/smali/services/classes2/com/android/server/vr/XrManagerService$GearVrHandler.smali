.class public final Lcom/android/server/vr/XrManagerService$GearVrHandler;
.super Landroid/os/Handler;
.source "XrManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/vr/XrManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GearVrHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/XrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/XrManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 161
    iput-object p1, p0, Lcom/android/server/vr/XrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/XrManagerService;

    .line 162
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_37

    const/4 v1, 0x2

    if-eq v0, v1, :cond_37

    const/4 v1, 0x3

    if-eq v0, v1, :cond_37

    const/16 v1, 0xb

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x65

    if-eq v0, v1, :cond_14

    goto :goto_40

    .line 188
    :cond_14
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 189
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 190
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/XrManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/vr/XrManagerService;->-$$Nest$mhandleARStateChange(Lcom/android/server/vr/XrManagerService;II)V

    goto :goto_40

    .line 178
    :cond_1e
    :try_start_1e
    iget v7, p1, Landroid/os/Message;->arg1:I

    .line 179
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/XrManagerService;

    invoke-static {p1}, Lcom/android/server/vr/XrManagerService;->-$$Nest$fgetmWindowManager(Lcom/android/server/vr/XrManagerService;)Landroid/view/IWindowManager;

    move-result-object p1

    if-eqz p1, :cond_40

    .line 180
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/XrManagerService;

    invoke-static {p0}, Lcom/android/server/vr/XrManagerService;->-$$Nest$fgetmWindowManager(Lcom/android/server/vr/XrManagerService;)Landroid/view/IWindowManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v7}, Landroid/view/IWindowManager;->setForcedDisplaySizeDensity(IIIIZI)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_36} :catch_40

    goto :goto_40

    .line 171
    :cond_37
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 172
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 173
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService$GearVrHandler;->this$0:Lcom/android/server/vr/XrManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/vr/XrManagerService;->-$$Nest$mhandleVrStateChange(Lcom/android/server/vr/XrManagerService;II)V

    :catch_40
    :cond_40
    :goto_40
    return-void
.end method
