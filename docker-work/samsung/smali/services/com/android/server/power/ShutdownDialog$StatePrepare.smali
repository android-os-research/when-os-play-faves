.class public Lcom/android/server/power/ShutdownDialog$StatePrepare;
.super Ljava/lang/Object;
.source "ShutdownDialog.java"

# interfaces
.implements Lcom/android/server/power/ShutdownDialog$DrawState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StatePrepare"
.end annotation


# instance fields
.field public hasAnim:Z

.field public hasSound:Z

.field public final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method public static bridge synthetic -$$Nest$fgethasSound(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    return p0
.end method

.method public constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 2

    .line 328
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$StatePrepare-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    return-void
.end method


# virtual methods
.method public checkFotaSilent()Z
    .registers 3

    const-string v0, "/efs/sec_efs/auto_reboot/autoinstall.status"

    const-string v1, "AUTO_INSTALL"

    .line 434
    invoke-virtual {p0, v0, v1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->compareFileStr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public checkRunning()Z
    .registers 2

    .line 448
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    if-nez v0, :cond_b

    iget-boolean p0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasAnim:Z

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method public checkStart()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final compareFileStr(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string p0, "Exception"

    const-string v0, "File close error"

    const-string v1, "ShutdownDialog"

    .line 407
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 408
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_62

    const/4 p1, 0x0

    .line 411
    :try_start_12
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 412
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 413
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_21} :catch_44
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_21} :catch_38
    .catchall {:try_start_12 .. :try_end_21} :catchall_36

    .line 414
    :try_start_21
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    .line 415
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_29} :catch_34
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_29} :catch_32
    .catchall {:try_start_21 .. :try_end_29} :catchall_55

    .line 423
    :try_start_29
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception p1

    .line 425
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    return p0

    :catch_32
    move-exception p1

    goto :goto_3b

    :catch_34
    move-exception p1

    goto :goto_47

    :catchall_36
    move-exception p0

    goto :goto_57

    :catch_38
    move-exception p2

    move-object v3, p1

    move-object p1, p2

    .line 419
    :goto_3b
    :try_start_3b
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_55

    if-eqz v3, :cond_62

    .line 423
    :try_start_40
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_50

    goto :goto_62

    :catch_44
    move-exception p2

    move-object v3, p1

    move-object p1, p2

    .line 417
    :goto_47
    :try_start_47
    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_55

    if-eqz v3, :cond_62

    .line 423
    :try_start_4c
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_62

    :catch_50
    move-exception p0

    .line 425
    invoke-static {v1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_62

    :catchall_55
    move-exception p0

    move-object p1, v3

    :goto_57
    if-eqz p1, :cond_61

    .line 423
    :try_start_59
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_61

    :catch_5d
    move-exception p1

    .line 425
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 428
    :cond_61
    :goto_61
    throw p0

    :cond_62
    :goto_62
    const/4 p0, 0x0

    return p0
.end method

.method public final disableWindowRotation(II)V
    .registers 5

    .line 455
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 457
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 458
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 459
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    if-le p1, p2, :cond_1a

    const/4 p1, 0x0

    .line 461
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_1d

    :cond_1a
    const/4 p1, 0x1

    .line 463
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 466
    :goto_1d
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_20
    return-void
.end method

.method public prepare()V
    .registers 10

    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "prepare shutdown dialog image and sound"

    .line 333
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-lez v1, :cond_63

    .line 337
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/LibQmg;

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!@[prepare] "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    invoke-virtual {v1}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v4

    .line 340
    invoke-virtual {v1}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v1

    .line 342
    invoke-virtual {p0, v4, v1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->disableWindowRotation(II)V

    move v5, v3

    :goto_46
    if-ge v5, v2, :cond_69

    .line 344
    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQ(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v6

    aget-object v6, v6, v5

    if-nez v6, :cond_60

    .line 345
    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQ(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    aput-object v7, v6, v5

    :cond_60
    add-int/lit8 v5, v5, 0x1

    goto :goto_46

    :cond_63
    const-string/jumbo v1, "qmglist error"

    .line 349
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_69
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    if-lez v1, :cond_f0

    .line 354
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1, v4}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fputhasSubDisplayDevice(Lcom/android/server/power/ShutdownDialog;Z)V

    .line 355
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubqmgList(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/LibQmg;

    .line 356
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!@[prepare] subdisplay : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/power/LibQmg;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v1}, Lcom/android/server/power/LibQmg;->getWidth()I

    move-result v0

    .line 358
    invoke-virtual {v1}, Lcom/android/server/power/LibQmg;->getHeight()I

    move-result v1

    .line 359
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 360
    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmContext(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "display"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fputsubdisplay(Lcom/android/server/power/ShutdownDialog;Landroid/view/Display;)V

    .line 361
    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubdisplay(Lcom/android/server/power/ShutdownDialog;)Landroid/view/Display;

    move-result-object v6

    if-eqz v6, :cond_f6

    .line 362
    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v6}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubdisplay(Lcom/android/server/power/ShutdownDialog;)Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    move v6, v3

    :goto_d3
    if-ge v6, v2, :cond_f6

    .line 365
    iget-object v7, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubbitmapQ(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v7

    aget-object v7, v7, v6

    if-nez v7, :cond_ed

    .line 366
    iget-object v7, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v7}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubbitmapQ(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v0, v1, v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    aput-object v8, v7, v6

    :cond_ed
    add-int/lit8 v6, v6, 0x1

    goto :goto_d3

    :cond_f0
    const-string/jumbo v1, "no sub_shutdown.qmg"

    .line 371
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_f6
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$mgetSystemVolume(Lcom/android/server/power/ShutdownDialog;)I

    move-result v0

    .line 376
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$mgetShutdownSoundPath(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;

    move-result-object v1

    .line 377
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsilentShutdown(Lcom/android/server/power/ShutdownDialog;)Z

    move-result v2

    if-nez v2, :cond_115

    if-eqz v1, :cond_115

    if-eqz v0, :cond_115

    .line 378
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->checkFotaSilent()Z

    move-result v2

    if-nez v2, :cond_115

    move v3, v4

    :cond_115
    iput-boolean v3, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z

    if-eqz v3, :cond_11f

    .line 380
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$mprepareSound(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V

    goto :goto_12f

    :cond_11f
    if-nez v0, :cond_127

    const-string v0, "g_shutdown_suspend=suspend"

    .line 383
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_12f

    .line 387
    :cond_127
    new-instance v0, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog$StatePrepare$1;-><init>(Lcom/android/server/power/ShutdownDialog$StatePrepare;)V

    .line 398
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 402
    :goto_12f
    new-instance v0, Landroid/content/Intent;

    const-string v1, "POWER_OFF_ANIMATION_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmContext(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public start()V
    .registers 3

    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "start draw"

    .line 438
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmStateDrawing(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/power/ShutdownDialog$StateDrawing;->start()V

    .line 440
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog$StatePrepare;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmStateDrawing(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fputmState(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)V

    return-void
.end method
