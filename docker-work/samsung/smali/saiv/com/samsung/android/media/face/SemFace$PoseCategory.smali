.class public Lcom/samsung/android/media/face/SemFace$PoseCategory;
.super Ljava/lang/Object;
.source "SemFace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/media/face/SemFace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PoseCategory"
.end annotation


# static fields
.field public static final FRONTAL_ROLL_CCW:I = 0x10

.field public static final FRONTAL_ROLL_CW:I = 0x70

.field public static final FRONTAL_UP:I = 0x0

.field public static final PROFILE_LEFT:I = 0x1

.field public static final PROFILE_RIGHT:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
