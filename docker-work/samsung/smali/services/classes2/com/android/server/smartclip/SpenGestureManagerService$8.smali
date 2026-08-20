.class public Lcom/android/server/smartclip/SpenGestureManagerService$8;
.super Ljava/lang/Object;
.source "SpenGestureManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/smartclip/SpenGestureManagerService;->showTouchPointer(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

.field public final synthetic val$isShow:Z


# direct methods
.method public constructor <init>(Lcom/android/server/smartclip/SpenGestureManagerService;Z)V
    .registers 3

    .line 1601
    iput-object p1, p0, Lcom/android/server/smartclip/SpenGestureManagerService$8;->this$0:Lcom/android/server/smartclip/SpenGestureManagerService;

    iput-boolean p2, p0, Lcom/android/server/smartclip/SpenGestureManagerService$8;->val$isShow:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 1604
    invoke-static {}, Lcom/android/server/smartclip/SpenGestureManagerService;->-$$Nest$sfgetmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1605
    iget-boolean p0, p0, Lcom/android/server/smartclip/SpenGestureManagerService$8;->val$isShow:Z

    const-string/jumbo v1, "show_touches"

    invoke-static {v0, v1, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
