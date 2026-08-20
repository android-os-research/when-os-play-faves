.class public Lcom/android/server/wm/TaskSnapshotLoader;
.super Ljava/lang/Object;
.source "TaskSnapshotLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field public final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;)V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    return-void
.end method


# virtual methods
.method public getLegacySnapshotConfig(IFZZ)Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;
    .registers 9

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_6

    move p1, v0

    goto :goto_7

    :cond_6
    move p1, p0

    :goto_7
    if-nez p1, :cond_b

    const/4 p0, 0x0

    return-object p0

    :cond_b
    const/4 v1, 0x0

    if-eqz p1, :cond_16

    .line 100
    invoke-static {p2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-nez v2, :cond_16

    move v2, v0

    goto :goto_17

    :cond_16
    move v2, p0

    :goto_17
    const/high16 v3, 0x3f000000    # 0.5f

    if-eqz v2, :cond_2f

    .line 104
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p1

    if-eqz p1, :cond_27

    if-nez p3, :cond_27

    const p2, 0x3f19999a    # 0.6f

    goto :goto_37

    :cond_27
    if-eqz p4, :cond_2b

    move p2, v3

    goto :goto_3e

    :cond_2b
    const/high16 p1, 0x3f800000    # 1.0f

    move p2, p1

    goto :goto_3e

    :cond_2f
    if-eqz p1, :cond_3d

    .line 115
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result p1

    if-eqz p1, :cond_39

    :goto_37
    move p0, v0

    goto :goto_3e

    :cond_39
    if-eqz p4, :cond_3e

    mul-float/2addr p2, v3

    goto :goto_3e

    :cond_3d
    move p2, v1

    .line 124
    :cond_3e
    :goto_3e
    new-instance p1, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;

    invoke-direct {p1, p2, p0}, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;-><init>(FZ)V

    return-object p1
.end method

.method public loadTask(IIZ)Landroid/window/TaskSnapshot;
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v13, p3

    const-string v15, "WindowManager"

    .line 140
    iget-object v3, v0, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v3, v1, v2}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v3

    .line 141
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const/16 v20, 0x0

    if-nez v4, :cond_19

    return-object v20

    .line 145
    :cond_19
    :try_start_19
    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v3}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v3

    .line 146
    invoke-static {v3}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    move-result-object v3

    .line 147
    iget-object v4, v0, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/wm/TaskSnapshotPersister;->getHighResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v4

    .line 149
    iget v5, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    iget v6, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->legacyScale:F

    .line 150
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    .line 149
    invoke-virtual {v0, v5, v6, v7, v13}, Lcom/android/server/wm/TaskSnapshotLoader;->getLegacySnapshotConfig(IFZZ)Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_40

    .line 152
    iget-boolean v7, v5, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;->mForceLoadReducedJpeg:Z

    if-eqz v7, :cond_40

    const/4 v7, 0x1

    goto :goto_41

    :cond_40
    move v7, v6

    :goto_41
    if-nez v13, :cond_45

    if-eqz v7, :cond_4b

    .line 155
    :cond_45
    iget-object v4, v0, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v4, v1, v2}, Lcom/android/server/wm/TaskSnapshotPersister;->getLowResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v4

    .line 157
    :cond_4b
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_52

    return-object v20

    .line 161
    :cond_52
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 162
    iget-object v0, v0, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->use16BitFormat()Z

    move-result v0

    if-eqz v0, :cond_66

    iget-boolean v0, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    if-nez v0, :cond_66

    .line 163
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_68

    .line 164
    :cond_66
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_68
    iput-object v0, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 165
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_8d

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load bitmap: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v20

    .line 171
    :cond_8d
    sget-object v2, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 172
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    if-nez v2, :cond_b1

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create hardware bitmap: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v20

    .line 177
    :cond_b1
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v6

    if-nez v6, :cond_d0

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to retrieve gralloc buffer for bitmap: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v15, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v20

    .line 184
    :cond_d0
    iget-object v0, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v5, :cond_f1

    .line 189
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget v7, v5, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    div-float/2addr v4, v7

    float-to-int v4, v4

    .line 190
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v5, v5, Lcom/android/server/wm/TaskSnapshotLoader$PreRLegacySnapshotConfig;->mScale:F

    div-float/2addr v7, v5

    float-to-int v5, v7

    .line 191
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    move-object v10, v7

    goto :goto_fb

    .line 193
    :cond_f1
    new-instance v4, Landroid/graphics/Point;

    iget v5, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    iget v7, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskHeight:I

    invoke-direct {v4, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    move-object v10, v4

    .line 196
    :goto_fb
    new-instance v21, Landroid/window/TaskSnapshot;

    iget-wide v4, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->id:J

    .line 197
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v7

    iget v8, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    iget v9, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->rotation:I

    new-instance v11, Landroid/graphics/Rect;

    iget v2, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    iget v12, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    iget v14, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    iget v13, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    invoke-direct {v11, v2, v12, v14, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    iget v2, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetLeft:I

    iget v13, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetTop:I

    iget v14, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetRight:I
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_11c} :catch_157

    move-object/from16 v16, v15

    :try_start_11e
    iget v15, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetBottom:I

    invoke-direct {v12, v2, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-boolean v14, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    iget v15, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    iget v13, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->appearance:I

    iget-boolean v2, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    const/16 v18, 0x0

    new-instance v1, Landroid/graphics/Rect;

    move/from16 v17, v2

    iget v2, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cutoutInsetLeft:I

    move/from16 v19, v13

    iget v13, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cutoutInsetTop:I

    move/from16 p0, v15

    iget v15, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cutoutInsetRight:I

    iget v3, v3, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cutoutInsetBottom:I

    invoke-direct {v1, v2, v13, v15, v3}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_140
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_140} :catch_154

    move-object/from16 v2, v21

    move-wide v3, v4

    move-object v5, v0

    move/from16 v0, v19

    move/from16 v13, p3

    move-object/from16 v22, v16

    move/from16 v15, p0

    move/from16 v16, v0

    move-object/from16 v19, v1

    :try_start_150
    invoke-direct/range {v2 .. v19}, Landroid/window/TaskSnapshot;-><init>(JLandroid/content/ComponentName;Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;IILandroid/graphics/Point;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZIIZZLandroid/graphics/Rect;)V
    :try_end_153
    .catch Ljava/io/IOException; {:try_start_150 .. :try_end_153} :catch_159

    return-object v21

    :catch_154
    move-object/from16 v22, v16

    goto :goto_159

    :catch_157
    move-object/from16 v22, v15

    .line 208
    :catch_159
    :goto_159
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to load task snapshot data for taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v22

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v20
.end method
