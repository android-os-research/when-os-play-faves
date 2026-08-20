.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$6;
.super Ljava/lang/Object;
.source "KnoxCustomManagerService.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->enableTethering()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .registers 2

    .line 10173
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$6;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    .line 10176
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$6;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmTetherHandler(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_c

    .line 10177
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_15

    .line 10179
    :cond_c
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$6;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmTetherHandler(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_15
    return-void
.end method
