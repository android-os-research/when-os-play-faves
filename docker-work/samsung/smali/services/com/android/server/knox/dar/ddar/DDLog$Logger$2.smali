.class public Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;
.super Ljava/lang/Thread;
.source "DDLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/knox/dar/ddar/DDLog$Logger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/ddar/DDLog$Logger;Ljava/lang/String;)V
    .registers 3

    .line 333
    iput-object p1, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const-string v0, "DualDAR:DDLog:Logger"

    const-string v1, "DDAR Logger started running"

    .line 338
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :goto_7
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    invoke-static {v1}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->-$$Nest$fgetloggerRunning(Lcom/android/server/knox/dar/ddar/DDLog$Logger;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 343
    :try_start_f
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    invoke-static {v1}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->-$$Nest$fgetstoreQ(Lcom/android/server/knox/dar/ddar/DDLog$Logger;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-nez v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    invoke-static {v1}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->-$$Nest$fgetfos(Lcom/android/server/knox/dar/ddar/DDLog$Logger;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    invoke-static {v1}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->-$$Nest$fgetfos(Lcom/android/server/knox/dar/ddar/DDLog$Logger;)Ljava/io/OutputStreamWriter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 345
    :cond_2c
    iget-object v1, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    invoke-static {v1}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->-$$Nest$fgetstoreQ(Lcom/android/server/knox/dar/ddar/DDLog$Logger;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 348
    iget-object v2, p0, Lcom/android/server/knox/dar/ddar/DDLog$Logger$2;->this$0:Lcom/android/server/knox/dar/ddar/DDLog$Logger;

    invoke-static {v2, v1}, Lcom/android/server/knox/dar/ddar/DDLog$Logger;->-$$Nest$mrealStore(Lcom/android/server/knox/dar/ddar/DDLog$Logger;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_3d} :catch_3e

    goto :goto_7

    :catch_3e
    move-exception v1

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception in log worker: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    :cond_57
    return-void
.end method
