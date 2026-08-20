.class public Lcom/android/server/wm/WindowFrames;
.super Ljava/lang/Object;
.source "WindowFrames.java"


# static fields
.field public static final sTmpSB:Ljava/lang/StringBuilder;


# instance fields
.field public final mCompatFrame:Landroid/graphics/Rect;

.field public mContentChanged:Z

.field public final mDisplayFrame:Landroid/graphics/Rect;

.field public mForceReportingResized:Z

.field public final mFrame:Landroid/graphics/Rect;

.field public mFrameSizeChanged:Z

.field public mInsetsChanged:Z

.field public mLastForceReportingResized:Z

.field public final mLastFrame:Landroid/graphics/Rect;

.field public final mLastRelFrame:Landroid/graphics/Rect;

.field public final mParentFrame:Landroid/graphics/Rect;

.field public mParentFrameWasClippedByDisplayCutout:Z

.field public final mRelFrame:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    .line 46
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mRelFrame:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastRelFrame:Landroid/graphics/Rect;

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    .line 72
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    .line 79
    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    .line 80
    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    return-void
.end method


# virtual methods
.method public clearReportResizeHints()V
    .registers 2

    const/4 v0, 0x0

    .line 130
    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    .line 131
    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    return-void
.end method

.method public didFrameSizeChange()Z
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    if-eq v0, p0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 p0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 p0, 0x1

    :goto_20
    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "Frames: parent="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/server/wm/WindowFrames;->sTmpSB:Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " display="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    .line 188
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " frame="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    .line 189
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " last="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/WindowFrames;->mLastFrame:Landroid/graphics/Rect;

    .line 190
    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->toShortString(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " insetsChanged="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowFrames;->mInsetsChanged:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 187
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 7

    .line 178
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000008L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 180
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mFrame:Landroid/graphics/Rect;

    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 182
    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mCompatFrame:Landroid/graphics/Rect;

    const-wide v0, 0x10b00000010L

    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 183
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public forceReportingResized()V
    .registers 2

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    return-void
.end method

.method public getInsetsChangedInfo()Ljava/lang/String;
    .registers 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceReportingResized="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public hasContentChanged()Z
    .registers 1

    .line 160
    iget-boolean p0, p0, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    return p0
.end method

.method public hasInsetsChanged()Z
    .registers 1

    .line 174
    iget-boolean p0, p0, Lcom/android/server/wm/WindowFrames;->mInsetsChanged:Z

    return p0
.end method

.method public isFrameSizeChangeReported()Z
    .registers 2

    .line 122
    iget-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/WindowFrames;->didFrameSizeChange()Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method public onResizeHandled()V
    .registers 2

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    return-void
.end method

.method public parentFrameWasClippedByDisplayCutout()Z
    .registers 1

    .line 97
    iget-boolean p0, p0, Lcom/android/server/wm/WindowFrames;->mParentFrameWasClippedByDisplayCutout:Z

    return p0
.end method

.method public setContentChanged(Z)V
    .registers 2

    .line 153
    iput-boolean p1, p0, Lcom/android/server/wm/WindowFrames;->mContentChanged:Z

    return-void
.end method

.method public setFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/android/server/wm/WindowFrames;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 88
    iget-object p0, p0, Lcom/android/server/wm/WindowFrames;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {p0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setInsetsChanged(Z)V
    .registers 2

    .line 167
    iput-boolean p1, p0, Lcom/android/server/wm/WindowFrames;->mInsetsChanged:Z

    return-void
.end method

.method public setParentFrameWasClippedByDisplayCutout(Z)V
    .registers 2

    .line 93
    iput-boolean p1, p0, Lcom/android/server/wm/WindowFrames;->mParentFrameWasClippedByDisplayCutout:Z

    return-void
.end method

.method public setReportResizeHints()Z
    .registers 3

    .line 113
    iget-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    iget-boolean v1, p0, Lcom/android/server/wm/WindowFrames;->mForceReportingResized:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    .line 114
    iget-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    invoke-virtual {p0}, Lcom/android/server/wm/WindowFrames;->didFrameSizeChange()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowFrames;->mFrameSizeChanged:Z

    .line 115
    iget-boolean p0, p0, Lcom/android/server/wm/WindowFrames;->mLastForceReportingResized:Z

    if-nez p0, :cond_19

    if-eqz v0, :cond_17

    goto :goto_19

    :cond_17
    const/4 p0, 0x0

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x1

    :goto_1a
    return p0
.end method
