.class public Lcom/android/server/wm/TspStateController$DeviceSize;
.super Ljava/lang/Object;
.source "TspStateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TspStateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceSize"
.end annotation


# instance fields
.field public height:I

.field public initHeight:I

.field public initWidth:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 735
    iput v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    .line 736
    iput v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    .line 737
    iput v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    .line 738
    iput v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    return-void
.end method


# virtual methods
.method public initialized()Z
    .registers 3

    .line 751
    iget v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    if-eq v0, v1, :cond_13

    iget v0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    if-eq v0, v1, :cond_13

    iget p0, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    if-eq p0, v1, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public set(IIII)V
    .registers 5

    .line 744
    iput p1, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->width:I

    .line 745
    iput p2, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->height:I

    .line 746
    iput p3, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initWidth:I

    .line 747
    iput p4, p0, Lcom/android/server/wm/TspStateController$DeviceSize;->initHeight:I

    return-void
.end method
