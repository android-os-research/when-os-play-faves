.class public Lcom/android/server/am/AppPermissionTracker$MyHandler;
.super Landroid/os/Handler;
.source "AppPermissionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPermissionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_APPOPS_CHANGED:I = 0x3

.field public static final MSG_PERMISSIONS_CHANGED:I = 0x2

.field public static final MSG_PERMISSIONS_DESTROY:I = 0x1

.field public static final MSG_PERMISSIONS_INIT:I


# instance fields
.field public mTracker:Lcom/android/server/am/AppPermissionTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppPermissionTracker;)V
    .registers 3

    .line 410
    iget-object v0, p1, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 411
    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 416
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_2f

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    goto :goto_39

    .line 429
    :cond_e
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, v0, v1, p1}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$mhandleOpChanged(Lcom/android/server/am/AppPermissionTracker;IILjava/lang/String;)V

    goto :goto_39

    .line 426
    :cond_1c
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$mhandlePermissionsChanged(Lcom/android/server/am/AppPermissionTracker;I)V

    goto :goto_39

    .line 422
    :cond_24
    iget-object p1, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    invoke-static {p1}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$mhandlePermissionsDestroy(Lcom/android/server/am/AppPermissionTracker;)V

    .line 423
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    invoke-static {p0}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$mhandleAppOpsDestroy(Lcom/android/server/am/AppPermissionTracker;)V

    goto :goto_39

    .line 418
    :cond_2f
    iget-object p1, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    invoke-static {p1}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$mhandleAppOpsInit(Lcom/android/server/am/AppPermissionTracker;)V

    .line 419
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$MyHandler;->mTracker:Lcom/android/server/am/AppPermissionTracker;

    invoke-static {p0}, Lcom/android/server/am/AppPermissionTracker;->-$$Nest$mhandlePermissionsInit(Lcom/android/server/am/AppPermissionTracker;)V

    :goto_39
    return-void
.end method
