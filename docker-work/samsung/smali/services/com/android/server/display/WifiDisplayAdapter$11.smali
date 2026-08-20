.class public Lcom/android/server/display/WifiDisplayAdapter$11;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->sendPresentationDisplayInfo(ZILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;

.field public final synthetic val$displayId:I

.field public final synthetic val$isStart:Z

.field public final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;IZLjava/lang/String;)V
    .registers 5

    .line 660
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    iput p2, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$displayId:I

    iput-boolean p3, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$isStart:Z

    iput-object p4, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 663
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$displayId:I

    iget-boolean v2, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$isStart:Z

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->val$packageName:Ljava/lang/String;

    const/16 v4, 0x15

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 664
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$11;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
