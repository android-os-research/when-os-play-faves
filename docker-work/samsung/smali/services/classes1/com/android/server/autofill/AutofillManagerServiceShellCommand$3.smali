.class public Lcom/android/server/autofill/AutofillManagerServiceShellCommand$3;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "AutofillManagerServiceShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestList(Ljava/io/PrintWriter;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic val$pw:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V
    .registers 4

    .line 393
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$3;->this$0:Lcom/android/server/autofill/AutofillManagerServiceShellCommand;

    iput-object p2, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$3;->val$pw:Ljava/io/PrintWriter;

    iput-object p3, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .registers 4

    const-string/jumbo p1, "sessions"

    .line 397
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 398
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 399
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$3;->val$pw:Ljava/io/PrintWriter;

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 401
    :cond_1d
    iget-object p0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
