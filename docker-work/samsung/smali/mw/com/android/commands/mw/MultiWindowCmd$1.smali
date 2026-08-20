.class Lcom/android/commands/mw/MultiWindowCmd$1;
.super Landroid/os/ResultReceiver;
.source "MultiWindowCmd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/mw/MultiWindowCmd;->onRun()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/mw/MultiWindowCmd;


# direct methods
.method constructor <init>(Lcom/android/commands/mw/MultiWindowCmd;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/commands/mw/MultiWindowCmd;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 60
    iput-object p1, p0, Lcom/android/commands/mw/MultiWindowCmd$1;->this$0:Lcom/android/commands/mw/MultiWindowCmd;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method
