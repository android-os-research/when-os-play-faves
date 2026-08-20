.class public Lcom/android/server/power/PowerManagerUtil$TraceDumper$1;
.super Ljava/lang/Object;
.source "PowerManagerUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerUtil$TraceDumper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerUtil$TraceDumper;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerUtil$TraceDumper;)V
    .registers 2

    .line 558
    iput-object p1, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper$1;->this$0:Lcom/android/server/power/PowerManagerUtil$TraceDumper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 561
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_RESTRICTED_DEBUG_LEVEL:Z

    if-eqz v0, :cond_2e

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Excessive delay : dumping trace after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerUtil$TraceDumper$1;->this$0:Lcom/android/server/power/PowerManagerUtil$TraceDumper;

    invoke-static {p0}, Lcom/android/server/power/PowerManagerUtil$TraceDumper;->-$$Nest$fgetmDelay(Lcom/android/server/power/PowerManagerUtil$TraceDumper;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "ms."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PowerManagerUtil"

    invoke-static {v0, p0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    const/4 v0, 0x3

    invoke-static {p0, v0}, Landroid/os/Process;->sendSignal(II)V

    :cond_2e
    return-void
.end method
