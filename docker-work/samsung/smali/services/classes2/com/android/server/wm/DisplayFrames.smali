.class public Lcom/android/server/wm/DisplayFrames;
.super Ljava/lang/Object;
.source "DisplayFrames.java"


# instance fields
.field public final mDisplayCutoutSafe:Landroid/graphics/Rect;

.field public mDisplayHeight:I

.field public final mDisplayId:I

.field public mDisplayWidth:I

.field public final mInsetsState:Landroid/view/InsetsState;

.field public mRotation:I

.field public mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

.field public final mUnrestricted:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(ILandroid/view/InsetsState;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)V
    .registers 15

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 77
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/DisplayFrames;-><init>(ILandroid/view/InsetsState;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Lcom/android/server/wm/UdcCutoutPolicy;)V

    return-void
.end method

.method public constructor <init>(ILandroid/view/InsetsState;Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;Lcom/android/server/wm/UdcCutoutPolicy;)V
    .registers 9

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 84
    iput-object p7, p0, Lcom/android/server/wm/DisplayFrames;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    .line 87
    iput p1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayId:I

    .line 88
    iput-object p2, p0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 89
    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/android/server/wm/DisplayFrames;->update(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)Z

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "DisplayFrames w="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " h="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " r="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 4

    .line 148
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 149
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public update(Landroid/view/DisplayInfo;Lcom/android/server/wm/utils/WmDisplayCutout;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)Z
    .registers 11

    .line 104
    iget-object v0, p0, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 105
    iget-object v1, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    .line 106
    invoke-virtual {p2}, Lcom/android/server/wm/utils/WmDisplayCutout;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p2

    .line 108
    iget-object v2, p0, Lcom/android/server/wm/DisplayFrames;->mUdcCutoutPolicy:Lcom/android/server/wm/UdcCutoutPolicy;

    if-eqz v2, :cond_f

    .line 109
    invoke-virtual {v2, v0, p1, p3, p4}, Lcom/android/server/wm/UdcCutoutPolicy;->onDisplayInfoUpdated(Landroid/view/InsetsState;Landroid/view/DisplayInfo;Landroid/view/RoundedCorners;Landroid/view/PrivacyIndicatorBounds;)V

    .line 112
    :cond_f
    iget v2, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    iget v3, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    const/4 v4, 0x0

    if-ne v2, v3, :cond_41

    iget v2, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    iget v3, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    if-ne v2, v3, :cond_41

    iget v2, p0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    iget v3, p1, Landroid/view/DisplayInfo;->rotation:I

    if-ne v2, v3, :cond_41

    .line 114
    invoke-virtual {v0}, Landroid/view/InsetsState;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/DisplayCutout;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 115
    invoke-virtual {v0}, Landroid/view/InsetsState;->getRoundedCorners()Landroid/view/RoundedCorners;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/view/RoundedCorners;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 116
    invoke-virtual {v0}, Landroid/view/InsetsState;->getPrivacyIndicatorBounds()Landroid/view/PrivacyIndicatorBounds;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/view/PrivacyIndicatorBounds;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    return v4

    .line 119
    :cond_41
    iget v2, p1, Landroid/view/DisplayInfo;->logicalWidth:I

    iput v2, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayWidth:I

    .line 120
    iget v3, p1, Landroid/view/DisplayInfo;->logicalHeight:I

    iput v3, p0, Lcom/android/server/wm/DisplayFrames;->mDisplayHeight:I

    .line 121
    iget p1, p1, Landroid/view/DisplayInfo;->rotation:I

    iput p1, p0, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    .line 122
    iget-object p0, p0, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    .line 123
    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 124
    invoke-virtual {v0, p0}, Landroid/view/InsetsState;->setDisplayFrame(Landroid/graphics/Rect;)V

    .line 125
    invoke-virtual {v0, p2}, Landroid/view/InsetsState;->setDisplayCutout(Landroid/view/DisplayCutout;)V

    .line 126
    invoke-virtual {v0, p3}, Landroid/view/InsetsState;->setRoundedCorners(Landroid/view/RoundedCorners;)V

    .line 127
    invoke-virtual {v0, p4}, Landroid/view/InsetsState;->setPrivacyIndicatorBounds(Landroid/view/PrivacyIndicatorBounds;)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/view/InsetsState;->getDisplayCutoutSafe(Landroid/graphics/Rect;)V

    .line 129
    invoke-virtual {p2}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result p1

    const/16 p2, 0xe

    const/16 p3, 0xd

    const/16 p4, 0xc

    const/16 v2, 0xb

    if-nez p1, :cond_ac

    .line 130
    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object p1

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 132
    invoke-virtual {v0, p4}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object p1

    iget p4, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, p4, v2, v3, v4}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 134
    invoke-virtual {v0, p3}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object p1

    iget p3, v1, Landroid/graphics/Rect;->right:I

    iget p4, p0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p3, p4, v2, v3}, Landroid/view/InsetsSource;->setFrame(IIII)V

    .line 136
    invoke-virtual {v0, p2}, Landroid/view/InsetsState;->getSource(I)Landroid/view/InsetsSource;

    move-result-object p1

    iget p2, p0, Landroid/graphics/Rect;->left:I

    iget p3, v1, Landroid/graphics/Rect;->bottom:I

    iget p4, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, p2, p3, p4, p0}, Landroid/view/InsetsSource;->setFrame(IIII)V

    goto :goto_b8

    .line 139
    :cond_ac
    invoke-virtual {v0, v2}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 140
    invoke-virtual {v0, p4}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 141
    invoke-virtual {v0, p3}, Landroid/view/InsetsState;->removeSource(I)Z

    .line 142
    invoke-virtual {v0, p2}, Landroid/view/InsetsState;->removeSource(I)Z

    :goto_b8
    const/4 p0, 0x1

    return p0
.end method
