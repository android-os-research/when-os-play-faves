.class Lcom/samsung/android/wfd/WFDUibcManager$TouchInput;
.super Ljava/lang/Object;
.source "WFDUibcManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wfd/WFDUibcManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TouchInput"
.end annotation


# instance fields
.field public blacklist action:I

.field public blacklist pointer:[Lcom/samsung/android/wfd/WFDUibcManager$TouchPointer;

.field public blacklist pointers:I


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
