.class public Lcom/android/server/input/InputManagerService$12;
.super Landroid/database/ContentObserver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->registerLongPressTimeoutObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Handler;)V
    .registers 3

    .line 3389
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$12;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    .line 3392
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$12;->this$0:Lcom/android/server/input/InputManagerService;

    const-string/jumbo p1, "timeout changed"

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$mupdateDeepPressStatusFromSettings(Lcom/android/server/input/InputManagerService;Ljava/lang/String;)V

    return-void
.end method
