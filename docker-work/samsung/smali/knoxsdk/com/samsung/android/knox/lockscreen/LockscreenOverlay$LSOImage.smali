.class public final Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;
.super Ljava/lang/Object;
.source "LockscreenOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LSOImage"
.end annotation


# instance fields
.field public greylist bottomPosition:I

.field public greylist filePath:Ljava/lang/String;

.field public greylist scaleType:Landroid/widget/ImageView$ScaleType;

.field public greylist topPosition:I


# direct methods
.method public constructor greylist <init>()V
    .registers 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    const/16 v0, 0x64

    .line 3
    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    .line 4
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor greylist <init>(ILjava/lang/String;I)V
    .registers 4

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    .line 12
    iput p3, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    .line 13
    iput-object p2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->filePath:Ljava/lang/String;

    .line 14
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor greylist <init>(ILjava/lang/String;ILandroid/widget/ImageView$ScaleType;)V
    .registers 5

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    .line 17
    iput p3, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    .line 18
    iput-object p2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->filePath:Ljava/lang/String;

    .line 19
    iput-object p4, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;)V
    .registers 3

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    const/16 v0, 0x64

    .line 7
    iput v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    .line 8
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->filePath:Ljava/lang/String;

    .line 9
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method
