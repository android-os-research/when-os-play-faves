.class public Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;
.super Ljava/lang/Object;
.source "EngmodeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/EngmodeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EngmodeTimeThread"
.end annotation


# static fields
.field public static final EM_TIME_THREAD_TAG:Ljava/lang/String; = "engmode_service_time"


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/EngmodeService;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/EngmodeService;)V
    .registers 2

    .line 285
    iput-object p1, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 289
    iget-object v0, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$misTokenInstalled(Lcom/android/server/sepunion/EngmodeService;)Z

    move-result v0

    const-string v1, "engmode_service_time"

    if-nez v0, :cond_11

    const-string/jumbo p0, "no token, exit"

    .line 290
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_11
    const/4 v0, 0x0

    move v2, v0

    :cond_13
    :goto_13
    const/4 v3, 0x2

    if-ge v2, v3, :cond_145

    .line 294
    iget-object v4, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v4}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmServerDate(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_145

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_41
    const-string v4, "ENGTRS0004"

    .line 297
    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/16 v6, 0xa

    new-array v7, v6, [B

    .line 301
    iget-object v8, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v8}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$mmakeTimeReq(Lcom/android/server/sepunion/EngmodeService;)[B

    move-result-object v8

    if-nez v8, :cond_5a

    const-string/jumbo v3, "makeTimeReq() failed"

    .line 303
    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 307
    :cond_5a
    new-instance v9, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;

    iget-object v10, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {v9, v10}, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    .line 308
    invoke-static {v9, v8}, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->-$$Nest$mpost(Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;[B)[B

    move-result-object v8

    if-nez v8, :cond_6d

    const-string v3, "No valid response from EMS server!)"

    .line 310
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 314
    :cond_6d
    iget-object v9, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v9, v8}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$mupdateTime(Lcom/android/server/sepunion/EngmodeService;[B)[B

    move-result-object v9

    if-nez v9, :cond_7c

    const-string/jumbo v3, "updateTime() failed"

    .line 316
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    .line 320
    :cond_7c
    invoke-static {v8, v0, v7, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 321
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TRS Header : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v7}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {v4, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-eqz v4, :cond_d3

    const/16 v4, 0x8

    new-array v6, v4, [B

    const/16 v7, 0x5a

    new-array v8, v7, [B

    .line 327
    aget-byte v10, v9, v0

    const/4 v11, 0x1

    if-eqz v10, :cond_c5

    if-eq v10, v11, :cond_b5

    if-eq v10, v3, :cond_dd

    const-string v3, "RTD response is invalid"

    .line 340
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dd

    :cond_b5
    const/16 v3, 0x9

    .line 333
    invoke-static {v9, v3, v8, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    new-instance v3, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;

    iget-object v4, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-direct {v3, v4}, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;-><init>(Lcom/android/server/sepunion/EngmodeService;)V

    .line 335
    invoke-static {v3, v8}, Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;->-$$Nest$mpost(Lcom/android/server/sepunion/EngmodeService$EMSConnectionTask;[B)[B

    goto :goto_dd

    .line 329
    :cond_c5
    invoke-static {v9, v11, v6, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 330
    iget-object v3, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3, v4}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fputmServerDate(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/String;)V

    goto :goto_dd

    .line 344
    :cond_d3
    iget-object v3, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v9}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3, v4}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fputmServerDate(Lcom/android/server/sepunion/EngmodeService;Ljava/lang/String;)V

    .line 347
    :cond_dd
    :goto_dd
    iget-object v3, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v3}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmServerDate(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 348
    iget-object v3, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v3, v0}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fputmNeedUpdate(Lcom/android/server/sepunion/EngmodeService;Z)V

    .line 350
    iget-object v3, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    new-instance v4, Ljava/util/Timer;

    invoke-direct {v4}, Ljava/util/Timer;-><init>()V

    invoke-static {v3, v4}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fputmUpdateTimer(Lcom/android/server/sepunion/EngmodeService;Ljava/util/Timer;)V

    .line 351
    iget-object v3, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v3}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmUpdateTimer(Lcom/android/server/sepunion/EngmodeService;)Ljava/util/Timer;

    move-result-object v3

    new-instance v4, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread$1;

    invoke-direct {v4, p0}, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread$1;-><init>(Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;)V

    const-wide/32 v6, 0x112a880

    invoke-virtual {v3, v4, v6, v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EM Server time ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v4}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmServerDate(Lcom/android/server/sepunion/EngmodeService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v3, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v3}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$mgetEmManager(Lcom/android/server/sepunion/EngmodeService;)Z

    move-result v3

    if-eqz v3, :cond_138

    .line 363
    iget-object v3, p0, Lcom/android/server/sepunion/EngmodeService$EngmodeTimeThread;->this$0:Lcom/android/server/sepunion/EngmodeService;

    invoke-static {v3}, Lcom/android/server/sepunion/EngmodeService;->-$$Nest$fgetmManager(Lcom/android/server/sepunion/EngmodeService;)Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;

    move-result-object v3

    const v4, 0xff0f

    invoke-virtual {v3, v4}, Lcom/samsung/android/service/EngineeringMode/EngineeringModeManager;->getStatus(I)I

    goto/16 :goto_13

    :cond_138
    const-string v3, "Failed to get manager, getStatus skip"

    .line 365
    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_13d} :catch_13f

    goto/16 :goto_13

    :catch_13f
    move-exception v3

    .line 369
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_13

    :cond_145
    const-string p0, "end"

    .line 372
    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
