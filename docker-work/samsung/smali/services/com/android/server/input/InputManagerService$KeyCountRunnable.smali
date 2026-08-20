.class public Lcom/android/server/input/InputManagerService$KeyCountRunnable;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyCountRunnable"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2

    .line 480
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$KeyCountRunnable;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$KeyCountRunnable-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$KeyCountRunnable;-><init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 483
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$KeyCountRunnable;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmInputKeyCounter(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/InputKeyCounter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/input/InputManagerService$KeyCountRunnable;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmContext(Lcom/android/server/input/InputManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/input/InputKeyCounter;->sendBroadcastKeyCount(Landroid/content/Context;)V

    return-void
.end method
