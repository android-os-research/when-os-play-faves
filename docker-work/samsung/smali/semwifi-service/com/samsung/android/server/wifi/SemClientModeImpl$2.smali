.class Lcom/samsung/android/server/wifi/SemClientModeImpl$2;
.super Ljava/util/TimerTask;
.source "SemClientModeImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemClientModeImpl;->runFwLogTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V
    .registers 2

    .line 473
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$2;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 476
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$2;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$mresetFwLogFolder(Lcom/samsung/android/server/wifi/SemClientModeImpl;)V

    .line 477
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeImpl$2;->this$0:Lcom/samsung/android/server/wifi/SemClientModeImpl;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeImpl;->-$$Nest$fputmFwLogTimer(Lcom/samsung/android/server/wifi/SemClientModeImpl;Ljava/util/Timer;)V

    return-void
.end method
