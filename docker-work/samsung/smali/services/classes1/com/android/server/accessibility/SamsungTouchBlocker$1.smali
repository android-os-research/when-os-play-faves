.class public Lcom/android/server/accessibility/SamsungTouchBlocker$1;
.super Landroid/os/Handler;
.source "SamsungTouchBlocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungTouchBlocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungTouchBlocker;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$1;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 105
    invoke-static {}, Lcom/android/server/accessibility/SamsungTouchBlocker;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Touch Blocker is deactivated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungTouchBlocker$1;->this$0:Lcom/android/server/accessibility/SamsungTouchBlocker;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/accessibility/SamsungTouchBlocker;->-$$Nest$fputmIsBlocking(Lcom/android/server/accessibility/SamsungTouchBlocker;Z)V

    return-void
.end method
