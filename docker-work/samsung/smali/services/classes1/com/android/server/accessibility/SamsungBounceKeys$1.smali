.class public Lcom/android/server/accessibility/SamsungBounceKeys$1;
.super Landroid/os/Handler;
.source "SamsungBounceKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungBounceKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungBounceKeys;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungBounceKeys;)V
    .registers 2

    .line 27
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungBounceKeys$1;->this$0:Lcom/android/server/accessibility/SamsungBounceKeys;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 30
    invoke-static {}, Lcom/android/server/accessibility/SamsungBounceKeys;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Touch Blocker is deactivated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungBounceKeys$1;->this$0:Lcom/android/server/accessibility/SamsungBounceKeys;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/accessibility/SamsungBounceKeys;->-$$Nest$fputmIsBlocking(Lcom/android/server/accessibility/SamsungBounceKeys;Z)V

    return-void
.end method
