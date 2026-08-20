.class public Lcom/android/server/statusbar/StatusBarManagerService$7;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->registerStatusBarForCarLife(Lcom/android/internal/carlife/IStatusBarCarLife;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;)V
    .registers 2

    .line 3396
    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 2

    .line 3399
    iget-object p0, p0, Lcom/android/server/statusbar/StatusBarManagerService$7;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/statusbar/StatusBarManagerService;->-$$Nest$fputmCarLifeBar(Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/internal/carlife/IStatusBarCarLife;)V

    return-void
.end method
