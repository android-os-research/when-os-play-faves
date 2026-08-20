.class Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wfd/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TouchPointer"
.end annotation


# instance fields
.field public blacklist id:I

.field public blacklist x:F

.field public blacklist y:F


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
