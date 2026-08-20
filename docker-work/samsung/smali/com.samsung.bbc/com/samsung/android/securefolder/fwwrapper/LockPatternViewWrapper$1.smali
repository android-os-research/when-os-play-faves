.class Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$1;
.super Ljava/lang/Object;
.source "LockPatternViewWrapper.java"

# interfaces
.implements Lcom/android/internal/widget/LockPatternView$OnPatternListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper;->setOnPatternListener(Landroid/view/View;Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$LockPatternViewWrapperListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$mListener:Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$LockPatternViewWrapperListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$LockPatternViewWrapperListener;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$1;->val$mListener:Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$LockPatternViewWrapperListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 42
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$1;->val$mListener:Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$LockPatternViewWrapperListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$LockPatternViewWrapperListener;->onPatternCellAdded(Ljava/util/List;)V

    return-void
.end method

.method public onPatternCleared()V
    .registers 1

    .line 37
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$1;->val$mListener:Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$LockPatternViewWrapperListener;

    invoke-interface {p0}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$LockPatternViewWrapperListener;->onPatternCleared()V

    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .line 47
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$1;->val$mListener:Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$LockPatternViewWrapperListener;

    invoke-interface {p0, p1}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$LockPatternViewWrapperListener;->onPatternDetected(Ljava/util/List;)V

    return-void
.end method

.method public onPatternStart()V
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$1;->val$mListener:Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$LockPatternViewWrapperListener;

    invoke-interface {p0}, Lcom/samsung/android/securefolder/fwwrapper/LockPatternViewWrapper$LockPatternViewWrapperListener;->onPatternStart()V

    return-void
.end method
