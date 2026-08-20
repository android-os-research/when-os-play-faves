.class Lcom/android/commands/am/Am$1;
.super Landroid/os/ResultReceiver;
.source "Am.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/commands/am/Am;->runAmCmd([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/am/Am;


# direct methods
.method constructor <init>(Lcom/android/commands/am/Am;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/commands/am/Am;
    .param p2, "arg0"    # Landroid/os/Handler;

    .line 147
    iput-object p1, p0, Lcom/android/commands/am/Am$1;->this$0:Lcom/android/commands/am/Am;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method
