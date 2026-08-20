.class public Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)V
    .registers 2

    .line 1980
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1983
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->-$$Nest$fgetmHomeDoubleTapPending(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1984
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->-$$Nest$fputmHomeDoubleTapPending(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Z)V

    .line 1985
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->-$$Nest$fgetmDisplayId(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/policy/PhoneWindowManager;->handleShortPressOnHome(I)V

    :cond_19
    return-void
.end method
