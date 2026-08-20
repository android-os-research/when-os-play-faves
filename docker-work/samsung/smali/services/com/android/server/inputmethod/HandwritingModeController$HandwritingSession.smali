.class public final Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;
.super Ljava/lang/Object;
.source "HandwritingModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/HandwritingModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HandwritingSession"
.end annotation


# instance fields
.field public final mHandwritingChannel:Landroid/view/InputChannel;

.field public final mRecordedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public final mRequestId:I


# direct methods
.method public constructor <init>(ILandroid/view/InputChannel;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/InputChannel;",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;)V"
        }
    .end annotation

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput p1, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRequestId:I

    .line 292
    iput-object p2, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mHandwritingChannel:Landroid/view/InputChannel;

    .line 293
    iput-object p3, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRecordedEvents:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(ILandroid/view/InputChannel;Ljava/util/List;Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;-><init>(ILandroid/view/InputChannel;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getHandwritingChannel()Landroid/view/InputChannel;
    .registers 1

    .line 301
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mHandwritingChannel:Landroid/view/InputChannel;

    return-object p0
.end method

.method public getRecordedEvents()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .line 305
    iget-object p0, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRecordedEvents:Ljava/util/List;

    return-object p0
.end method

.method public getRequestId()I
    .registers 1

    .line 297
    iget p0, p0, Lcom/android/server/inputmethod/HandwritingModeController$HandwritingSession;->mRequestId:I

    return p0
.end method
