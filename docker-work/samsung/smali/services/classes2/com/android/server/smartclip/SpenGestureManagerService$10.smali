.class public Lcom/android/server/smartclip/SpenGestureManagerService$10;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;->notifyKeyboardClosed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;)V
    .registers 2

    .line 2031
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$10;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    .line 2034
    iget-object p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$10;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    invoke-static {p0}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$mbroastcastKeyboardClosed(Lcom/android/server/smartclip/SpenGestureManagerService;)V

    return-void
.end method
