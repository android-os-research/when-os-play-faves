.class Lcom/samsung/android/wfd/WFDUibcManager$KeyInfo;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wfd/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyInfo"
.end annotation


# instance fields
.field public blacklist keyFlag:I

.field public blacklist keyRepeatCount:I

.field public blacklist keyTime:J


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
