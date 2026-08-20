.class public Lcom/android/server/display/WifiDisplayController$20;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->sendEvent(IILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayController;

.field public final synthetic val$arg:I

.field public final synthetic val$key:Ljava/lang/String;

.field public final synthetic val$value:Z

.field public final synthetic val$what:I


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayController;IILjava/lang/String;Z)V
    .registers 6

    .line 1829
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    iput p2, p0, Lcom/android/server/display/WifiDisplayController$20;->val$what:I

    iput p3, p0, Lcom/android/server/display/WifiDisplayController$20;->val$arg:I

    iput-object p4, p0, Lcom/android/server/display/WifiDisplayController$20;->val$key:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/server/display/WifiDisplayController$20;->val$value:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 1832
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmHandler(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/WifiDisplayController$20;->val$what:I

    iget v2, p0, Lcom/android/server/display/WifiDisplayController$20;->val$arg:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 1833
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1834
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$20;->val$key:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/server/display/WifiDisplayController$20;->val$value:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1835
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1836
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayController$20;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayController;->-$$Nest$fgetmHandler(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
