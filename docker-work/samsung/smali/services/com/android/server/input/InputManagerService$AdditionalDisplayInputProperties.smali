.class public Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;
.super Ljava/lang/Object;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdditionalDisplayInputProperties"
.end annotation


# static fields
.field public static final DEFAULT_POINTER_ACCELERATION:F = 3.0f

.field public static final DEFAULT_POINTER_ICON_VISIBLE:Z = true


# instance fields
.field public pointerAcceleration:F

.field public pointerIconVisible:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5877
    invoke-virtual {p0}, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->reset()V

    return-void
.end method


# virtual methods
.method public allDefaults()Z
    .registers 3

    .line 5881
    iget v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    const/high16 v1, 0x40400000    # 3.0f

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_10

    iget-boolean p0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    if-ne p0, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method public reset()V
    .registers 2

    const/high16 v0, 0x40400000    # 3.0f

    .line 5886
    iput v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerAcceleration:F

    const/4 v0, 0x1

    .line 5887
    iput-boolean v0, p0, Lcom/android/server/input/InputManagerService$AdditionalDisplayInputProperties;->pointerIconVisible:Z

    return-void
.end method
