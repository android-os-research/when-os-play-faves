.class public Lcom/android/server/display/WifiDisplayAdapter$6;
.super Ljava/lang/Object;
.source "WifiDisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayAdapter;->requestResumeLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$6;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayAdapter$6;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmDisplayController(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 264
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$6;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$fgetmDisplayController(Lcom/android/server/display/WifiDisplayAdapter;)Lcom/android/server/display/WifiDisplayController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayController;->requestResume()V

    :cond_11
    return-void
.end method
