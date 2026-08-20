.class public Lcom/samsung/app/video/editor/external/VideoEditor;
.super Ljava/lang/Object;
.source "VideoEditor.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "VideoEditor"

.field public static final blacklist VERSION:Ljava/lang/String; = "0.0.00"

.field private static blacklist instance:Lcom/samsung/app/video/editor/external/VideoEditor;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/app/video/editor/external/VideoEditor;->instance:Lcom/samsung/app/video/editor/external/VideoEditor;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/res/AssetManager;Landroid/content/Context;)V
    .registers 5
    .param p1, "assetManager"    # Landroid/content/res/AssetManager;
    .param p2, "c"    # Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "VideoEditor"

    const-string v1, "Creating VideoEditor instance"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    sget-object v1, Lcom/samsung/app/video/editor/external/VideoEditor;->instance:Lcom/samsung/app/video/editor/external/VideoEditor;

    if-nez v1, :cond_14

    .line 33
    const-string v1, "SDK Version Name = 0.0.00"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void

    .line 30
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cannot create, please use getInstance"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getInstance(Landroid/content/res/AssetManager;Landroid/content/Context;)Lcom/samsung/app/video/editor/external/VideoEditor;
    .registers 4
    .param p0, "assetManager"    # Landroid/content/res/AssetManager;
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    const-string v0, "VideoEditor"

    const-string v1, "In getInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v0, Lcom/samsung/app/video/editor/external/VideoEditor;->instance:Lcom/samsung/app/video/editor/external/VideoEditor;

    if-nez v0, :cond_12

    .line 47
    new-instance v0, Lcom/samsung/app/video/editor/external/VideoEditor;

    invoke-direct {v0, p0, p1}, Lcom/samsung/app/video/editor/external/VideoEditor;-><init>(Landroid/content/res/AssetManager;Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/app/video/editor/external/VideoEditor;->instance:Lcom/samsung/app/video/editor/external/VideoEditor;

    .line 48
    :cond_12
    sget-object v0, Lcom/samsung/app/video/editor/external/VideoEditor;->instance:Lcom/samsung/app/video/editor/external/VideoEditor;

    return-object v0
.end method
