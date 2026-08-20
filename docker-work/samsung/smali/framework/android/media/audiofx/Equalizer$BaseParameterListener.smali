.class Landroid/media/audiofx/Equalizer$BaseParameterListener;
.super Ljava/lang/Object;
.source "Equalizer.java"

# interfaces
.implements Landroid/media/audiofx/AudioEffect$OnParameterChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/Equalizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BaseParameterListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/audiofx/Equalizer;


# direct methods
.method private constructor blacklist <init>(Landroid/media/audiofx/Equalizer;)V
    .registers 2

    .line 393
    iput-object p1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 395
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/audiofx/Equalizer;Landroid/media/audiofx/Equalizer$BaseParameterListener-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/audiofx/Equalizer$BaseParameterListener;-><init>(Landroid/media/audiofx/Equalizer;)V

    return-void
.end method


# virtual methods
.method public blacklist onParameterChange(Landroid/media/audiofx/AudioEffect;I[B[B)V
    .registers 15
    .param p1, "effect"    # Landroid/media/audiofx/AudioEffect;
    .param p2, "status"    # I
    .param p3, "param"    # [B
    .param p4, "value"    # [B

    .line 397
    const/4 v0, 0x0

    .line 399
    .local v0, "l":Landroid/media/audiofx/Equalizer$OnParameterChangeListener;
    iget-object v1, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-static {v1}, Landroid/media/audiofx/Equalizer;->-$$Nest$fgetmParamListenerLock(Landroid/media/audiofx/Equalizer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 400
    :try_start_8
    iget-object v2, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-static {v2}, Landroid/media/audiofx/Equalizer;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 401
    iget-object v2, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    invoke-static {v2}, Landroid/media/audiofx/Equalizer;->-$$Nest$fgetmParamListener(Landroid/media/audiofx/Equalizer;)Landroid/media/audiofx/Equalizer$OnParameterChangeListener;

    move-result-object v2

    move-object v0, v2

    .line 403
    :cond_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_53

    .line 404
    if-eqz v0, :cond_52

    .line 405
    const/4 v1, -0x1

    .line 406
    .local v1, "p1":I
    const/4 v2, -0x1

    .line 407
    .local v2, "p2":I
    const/4 v3, -0x1

    .line 409
    .local v3, "v":I
    array-length v4, p3

    const/4 v5, 0x0

    const/4 v6, 0x4

    if-lt v4, v6, :cond_2f

    .line 410
    invoke-static {p3, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v1

    .line 411
    array-length v4, p3

    const/16 v7, 0x8

    if-lt v4, v7, :cond_2f

    .line 412
    invoke-static {p3, v6}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v2

    .line 415
    :cond_2f
    array-length v4, p4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_39

    .line 416
    invoke-static {p4, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToShort([BI)S

    move-result v3

    move v9, v3

    goto :goto_43

    .line 417
    :cond_39
    array-length v4, p4

    if-ne v4, v6, :cond_42

    .line 418
    invoke-static {p4, v5}, Landroid/media/audiofx/AudioEffect;->byteArrayToInt([BI)I

    move-result v3

    move v9, v3

    goto :goto_43

    .line 417
    :cond_42
    move v9, v3

    .line 421
    .end local v3    # "v":I
    .local v9, "v":I
    :goto_43
    const/4 v3, -0x1

    if-eq v1, v3, :cond_52

    if-eq v9, v3, :cond_52

    .line 422
    iget-object v4, p0, Landroid/media/audiofx/Equalizer$BaseParameterListener;->this$0:Landroid/media/audiofx/Equalizer;

    move-object v3, v0

    move v5, p2

    move v6, v1

    move v7, v2

    move v8, v9

    invoke-interface/range {v3 .. v8}, Landroid/media/audiofx/Equalizer$OnParameterChangeListener;->onParameterChange(Landroid/media/audiofx/Equalizer;IIII)V

    .line 425
    .end local v1    # "p1":I
    .end local v2    # "p2":I
    .end local v9    # "v":I
    :cond_52
    return-void

    .line 403
    :catchall_53
    move-exception v2

    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw v2
.end method
