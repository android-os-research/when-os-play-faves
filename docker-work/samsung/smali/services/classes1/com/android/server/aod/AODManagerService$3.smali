.class public Lcom/android/server/aod/AODManagerService$3;
.super Landroid/os/Handler;
.source "AODManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/aod/AODManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 213
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_7

    goto :goto_17

    .line 217
    :cond_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "logs"

    .line 218
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 219
    iget-object p0, p0, Lcom/android/server/aod/AODManagerService$3;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {p0, p1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$maddAODAppLog(Lcom/android/server/aod/AODManagerService;Ljava/util/List;)V

    :goto_17
    return-void
.end method
