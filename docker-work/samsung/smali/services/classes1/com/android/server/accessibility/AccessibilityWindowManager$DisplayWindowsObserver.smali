.class public final Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;
.super Ljava/lang/Object;
.source "AccessibilityWindowManager.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DisplayWindowsObserver"
.end annotation


# instance fields
.field public final mA11yWindowInfoById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mCachedWindowInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mDisplayId:I

.field public mHasWatchOutsideTouchWindow:Z

.field public mTrackingWindows:Z

.field public final mWindowInfoById:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;)I
    .registers 1

    iget p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .registers 3

    .line 142
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    .line 133
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    .line 134
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    const/4 p1, 0x0

    .line 136
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 143
    iput p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    return-void
.end method


# virtual methods
.method public final cacheWindows(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 410
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 412
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInfo;

    invoke-virtual {v1}, Landroid/view/WindowInfo;->recycle()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 414
    :cond_18
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1d
    if-ge v1, v0, :cond_31

    .line 416
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    .line 417
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-static {v2}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_31
    return-void
.end method

.method public final clearWindowsLocked()V
    .registers 4

    .line 493
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v1

    .line 497
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityUserManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowsLocked(ILjava/util/List;)V

    .line 500
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    const/4 v0, 0x0

    .line 501
    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    return-void
.end method

.method public computePartialInteractiveRegionForWindowLocked(IZLandroid/graphics/Region;)Z
    .registers 12

    .line 297
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    .line 308
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 309
    new-instance v3, Landroid/graphics/Region;

    invoke-direct {v3}, Landroid/graphics/Region;-><init>()V

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    :goto_12
    if-ltz v0, :cond_44

    .line 311
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v2, :cond_2e

    .line 313
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    if-ne v6, p1, :cond_41

    .line 314
    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 315
    invoke-virtual {p3, v3}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    move-object v2, p3

    if-eqz p2, :cond_41

    goto :goto_40

    .line 322
    :cond_2e
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_41

    .line 324
    invoke-virtual {v5, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRegionInScreen(Landroid/graphics/Region;)V

    .line 325
    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    move-result v5

    if-eqz v5, :cond_41

    :goto_40
    move v1, v4

    :cond_41
    add-int/lit8 v0, v0, -0x1

    goto :goto_12

    :cond_44
    return v1
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 797
    invoke-static {p3}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->isPrintNodes([Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_61

    .line 798
    invoke-static {p3}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->isPrintNodeSimple([Ljava/lang/String;)Z

    move-result p1

    .line 799
    invoke-static {p3}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->isPrintNodeVisibleOnly([Ljava/lang/String;)Z

    move-result v0

    .line 800
    invoke-static {p3}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->getTargetWindowId([Ljava/lang/String;)I

    move-result v1

    .line 801
    invoke-static {p3}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->getConnectionId([Ljava/lang/String;)I

    move-result p3

    const/4 v2, -0x1

    if-ne p3, v2, :cond_1f

    const-string p0, "Failed to get windows. Please turn on Accessibility Service"

    .line 803
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_1f
    if-ne v1, v2, :cond_3e

    .line 807
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_27
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 809
    invoke-static {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 810
    invoke-virtual {v1, p3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 812
    invoke-static {p2, v1, p1, v0}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->printNodeTreeOfWindow(Ljava/io/PrintWriter;Landroid/view/accessibility/AccessibilityWindowInfo;ZZ)V

    goto :goto_27

    .line 815
    :cond_3e
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_44
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_60

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 816
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    if-ne v3, v1, :cond_44

    .line 818
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    .line 819
    invoke-virtual {p0, p3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setConnectionId(I)V

    .line 821
    invoke-static {p2, p0, p1, v0}, Lcom/android/server/accessibility/SamsungWindowDumpUtils;->printNodeTreeOfWindow(Ljava/io/PrintWriter;Landroid/view/accessibility/AccessibilityWindowInfo;ZZ)V

    :cond_60
    return-void

    :cond_61
    const-string p1, "Global Info [ "

    .line 830
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 831
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Top focused display Id = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "     Active Window Id = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "     Top Focused Window Id = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "     Accessibility Focused Window Id = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " ]"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 837
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz p1, :cond_143

    .line 838
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 p3, 0x0

    :goto_df
    if-ge p3, p1, :cond_140

    if-nez p3, :cond_f9

    const-string v0, "Display["

    .line 841
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 842
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, "] : "

    .line 843
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 844
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_f9
    if-lez p3, :cond_103

    const/16 v0, 0x2c

    .line 847
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 848
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_103
    const-string v0, "A11yWindow["

    .line 850
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 851
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 852
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const/16 v1, 0x5d

    .line 853
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 854
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 855
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;

    move-result-object v0

    if-eqz v0, :cond_13d

    const-string v1, "WindowInfo["

    .line 857
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 858
    invoke-virtual {v0}, Landroid/view/WindowInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    const-string v0, "]"

    .line 859
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 860
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_13d
    add-int/lit8 p3, p3, 0x1

    goto :goto_df

    .line 864
    :cond_140
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_143
    return-void
.end method

.method public findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 2

    .line 206
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityWindowInfo;

    return-object p0
.end method

.method public findWindowInfoByIdLocked(I)Landroid/view/WindowInfo;
    .registers 2

    .line 217
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowInfo;

    return-object p0
.end method

.method public getPictureInPictureWindowLocked()Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 5

    .line 227
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_1d

    .line 228
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_1d

    .line 230
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 231
    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityWindowInfo;->isInPictureInPictureMode()Z

    move-result v3

    if-eqz v3, :cond_1a

    return-object v2

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_1d
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTypeForWindowManagerWindowType(I)I
    .registers 6

    const/4 p0, 0x1

    if-eq p1, p0, :cond_45

    const/4 v0, 0x2

    if-eq p1, v0, :cond_45

    const/4 v1, 0x3

    if-eq p1, v1, :cond_45

    const/4 v2, 0x4

    if-eq p1, v2, :cond_45

    const/16 v3, 0x3ed

    if-eq p1, v3, :cond_45

    const/16 v3, 0x7e1

    if-eq p1, v3, :cond_44

    const/16 v3, 0x7e8

    if-eq p1, v3, :cond_44

    const/16 v3, 0x7f0

    if-eq p1, v3, :cond_43

    const/16 v2, 0x7f2

    if-eq p1, v2, :cond_41

    const/16 v2, 0x7f4

    if-eq p1, v2, :cond_44

    const/16 v2, 0x8b2

    if-eq p1, v2, :cond_44

    const/16 v2, 0x7e3

    if-eq p1, v2, :cond_44

    const/16 v2, 0x7e4

    if-eq p1, v2, :cond_44

    packed-switch p1, :pswitch_data_46

    packed-switch p1, :pswitch_data_52

    packed-switch p1, :pswitch_data_5e

    packed-switch p1, :pswitch_data_72

    const/4 p0, -0x1

    return p0

    :pswitch_3e
    const/4 p0, 0x6

    return p0

    :pswitch_40
    return v0

    :cond_41
    const/4 p0, 0x5

    return p0

    :cond_43
    return v2

    :cond_44
    :pswitch_44
    return v1

    :cond_45
    :pswitch_45
    return p0

    :pswitch_data_46
    .packed-switch 0x3e8
        :pswitch_45
        :pswitch_45
        :pswitch_45
        :pswitch_45
    .end packed-switch

    :pswitch_data_52
    .packed-switch 0x7d0
        :pswitch_44
        :pswitch_44
        :pswitch_45
        :pswitch_44
    .end packed-switch

    :pswitch_data_5e
    .packed-switch 0x7d5
        :pswitch_45
        :pswitch_44
        :pswitch_45
        :pswitch_44
        :pswitch_44
        :pswitch_44
        :pswitch_40
        :pswitch_45
    .end packed-switch

    :pswitch_data_72
    .packed-switch 0x7f6
        :pswitch_44
        :pswitch_3e
        :pswitch_44
        :pswitch_44
    .end packed-switch
.end method

.method public getWatchOutsideTouchWindowIdLocked(I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 335
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowInfo;

    if-eqz p1, :cond_41

    .line 336
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    if-eqz v0, :cond_41

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 338
    :goto_14
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 339
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    if-eqz v2, :cond_3d

    .line 340
    iget v3, v2, Landroid/view/WindowInfo;->layer:I

    iget v4, p1, Landroid/view/WindowInfo;->layer:I

    if-ge v3, v4, :cond_3d

    iget-boolean v2, v2, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v2, :cond_3d

    .line 342
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_40
    return-object v0

    .line 347
    :cond_41
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getWindowListLocked()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    return-object p0
.end method

.method public final isEmbeddedHierarchyWindowsLocked(I)Z
    .registers 5

    .line 717
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmWindowIdMap(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IBinder;

    const/4 v0, 0x0

    if-nez p1, :cond_10

    return v0

    :cond_10
    move v1, v0

    .line 722
    :goto_11
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmHostEmbeddedMap(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_34

    .line 723
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmHostEmbeddedMap(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 p0, 0x1

    return p0

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_34
    return v0
.end method

.method public isTrackingWindowsLocked()Z
    .registers 1

    .line 186
    iget-boolean p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    return p0
.end method

.method public onWindowsForAccessibilityChanged(ZILandroid/os/IBinder;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Landroid/os/IBinder;",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 366
    :try_start_7
    invoke-virtual {p0, p1, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->shouldUpdateWindowsLocked(ZLjava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 367
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 368
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p1, p3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmTopFocusedWindowToken(Lcom/android/server/accessibility/AccessibilityWindowManager;Landroid/os/IBinder;)V

    .line 369
    invoke-virtual {p0, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->cacheWindows(Ljava/util/List;)V

    .line 371
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityUserManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result p1

    invoke-virtual {p0, p1, p4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->updateWindowsLocked(ILjava/util/List;)V

    .line 374
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmLock(Lcom/android/server/accessibility/AccessibilityWindowManager;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 376
    :cond_30
    monitor-exit v0

    return-void

    :catchall_32
    move-exception p0

    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public final populateReportedWindowLocked(ILandroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;
    .registers 8

    .line 670
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v1, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_c

    return-object v1

    .line 676
    :cond_c
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmHostEmbeddedMap(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_1f

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->isEmbeddedHierarchyWindowsLocked(I)Z

    move-result v2

    if-eqz v2, :cond_1f

    return-object v1

    .line 679
    :cond_1f
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    .line 681
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setId(I)V

    .line 682
    iget v0, p2, Landroid/view/WindowInfo;->type:I

    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->getTypeForWindowManagerWindowType(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setType(I)V

    .line 685
    iget v0, p2, Landroid/view/WindowInfo;->type:I

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->semSetRawType(I)V

    .line 688
    iget v0, p2, Landroid/view/WindowInfo;->layer:I

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 689
    iget-boolean v0, p2, Landroid/view/WindowInfo;->focused:Z

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setFocused(Z)V

    .line 690
    iget-object v0, p2, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setRegionInScreen(Landroid/graphics/Region;)V

    .line 691
    iget-object v0, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTitle(Ljava/lang/CharSequence;)V

    .line 692
    iget-wide v2, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    invoke-virtual {v1, v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAnchorId(J)V

    .line 693
    iget-boolean v0, p2, Landroid/view/WindowInfo;->inPictureInPicture:Z

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setPictureInPicture(Z)V

    .line 694
    iget v0, p2, Landroid/view/WindowInfo;->displayId:I

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setDisplayId(I)V

    .line 695
    iget v0, p2, Landroid/view/WindowInfo;->taskId:I

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setTaskId(I)V

    .line 697
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget-object v2, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v0

    if-ltz v0, :cond_69

    .line 699
    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityWindowInfo;->setParentId(I)V

    .line 702
    :cond_69
    iget-object v0, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v0, :cond_8a

    .line 703
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_72
    if-ge v2, v0, :cond_8a

    .line 705
    iget-object v3, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 706
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v4, p1, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v3

    if-ltz v3, :cond_87

    .line 708
    invoke-virtual {v1, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->addChild(I)V

    :cond_87
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    :cond_8a
    return-object v1
.end method

.method public final sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;",
            "Landroid/util/SparseArray<",
            "Landroid/view/accessibility/AccessibilityWindowInfo;",
            ">;)V"
        }
    .end annotation

    .line 634
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 636
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_2e

    .line 638
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 639
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2b

    .line 641
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    const/4 v5, 0x2

    .line 640
    invoke-static {v4, v5}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 646
    :cond_2e
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    move v1, v2

    :goto_35
    if-ge v1, p1, :cond_6c

    .line 648
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 649
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/accessibility/AccessibilityWindowInfo;

    if-nez v4, :cond_58

    .line 652
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    const/4 v4, 0x1

    .line 651
    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_69

    .line 654
    :cond_58
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->differenceFrom(Landroid/view/accessibility/AccessibilityWindowInfo;)I

    move-result v4

    if-eqz v4, :cond_69

    .line 657
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v3

    .line 656
    invoke-static {v3, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_69
    :goto_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 662
    :cond_6c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    :goto_70
    if-ge v2, p1, :cond_84

    .line 664
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityEventSender(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    move-result-object p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityEvent;

    invoke-interface {p2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_70

    :cond_84
    return-void
.end method

.method public setAccessibilityFocusedWindowLocked(I)V
    .registers 8

    .line 268
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_3b

    .line 269
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_3b

    .line 271
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 272
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    if-ne v4, p1, :cond_35

    .line 273
    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    iget v5, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-static {v4, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmAccessibilityFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    const/4 v4, 0x1

    .line 274
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    .line 275
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityEventSender(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    move-result-object v3

    const/16 v4, 0x80

    .line 276
    invoke-static {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 275
    invoke-interface {v3, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_38

    .line 280
    :cond_35
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    :goto_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_3b
    return-void
.end method

.method public setActiveWindowLocked(I)V
    .registers 7

    .line 245
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-eqz v0, :cond_34

    .line 246
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_a
    if-ge v2, v0, :cond_34

    .line 248
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 249
    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v4

    if-ne v4, p1, :cond_2e

    const/4 v4, 0x1

    .line 250
    invoke-virtual {v3, v4}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    .line 251
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v3}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityEventSender(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;

    move-result-object v3

    const/16 v4, 0x20

    .line 252
    invoke-static {p1, v4}, Landroid/view/accessibility/AccessibilityEvent;->obtainWindowsChangedEvent(II)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v4

    .line 251
    invoke-interface {v3, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager$AccessibilityEventSender;->sendAccessibilityEventForCurrentUserLocked(Landroid/view/accessibility/AccessibilityEvent;)V

    goto :goto_31

    .line 255
    :cond_2e
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_34
    return-void
.end method

.method public final shouldUpdateWindowsLocked(ZLjava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    return v0

    .line 385
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 387
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, p1, :cond_11

    return v0

    .line 390
    :cond_11
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_20

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3b

    :cond_20
    move v1, v2

    :goto_21
    if-ge v1, p1, :cond_3b

    .line 395
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mCachedWindowInfos:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowInfo;

    .line 396
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInfo;

    .line 400
    invoke-virtual {p0, v3, v4}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z

    move-result v3

    if-eqz v3, :cond_38

    return v0

    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_3b
    return v2
.end method

.method public startTrackingWindowsLocked()V
    .registers 4

    .line 150
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x1

    .line 154
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 155
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mtraceWMEnabled(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 156
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setWindowsForAccessibilityCallback"

    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mlogTraceWM(Lcom/android/server/accessibility/AccessibilityWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_32
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    :cond_3d
    return-void
.end method

.method public stopTrackingWindowsLocked()V
    .registers 4

    .line 168
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-eqz v0, :cond_3e

    .line 169
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mtraceWMEnabled(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 170
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";callback=null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "setWindowsForAccessibilityCallback"

    invoke-static {v0, v2, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mlogTraceWM(Lcom/android/server/accessibility/AccessibilityWindowManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_2c
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/accessibility/AccessibilityWindowManager;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setWindowsForAccessibilityCallback(ILcom/android/server/wm/WindowManagerInternal$WindowsForAccessibilityCallback;)V

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    .line 176
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->clearWindowsLocked()V

    :cond_3e
    return-void
.end method

.method public final updateWindowsLocked(ILjava/util/List;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 511
    iget-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    if-nez v2, :cond_f

    .line 512
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    .line 515
    :cond_f
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 516
    iget-object v3, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v3

    .line 519
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 520
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    const/4 v4, 0x0

    move v5, v4

    .line 522
    :goto_28
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3e

    .line 523
    iget-object v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowInfo;

    invoke-virtual {v6}, Landroid/view/WindowInfo;->recycle()V

    add-int/lit8 v5, v5, 0x1

    goto :goto_28

    .line 525
    :cond_3e
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 526
    iput-boolean v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    .line 528
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    .line 529
    iget v6, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTopFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v6, v7, :cond_56

    move v6, v8

    goto :goto_57

    :cond_56
    move v6, v4

    .line 530
    :goto_57
    iget v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mDisplayId:I

    iget-object v9, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityFocusedDisplayId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v9

    if-ne v7, v9, :cond_63

    move v7, v8

    goto :goto_64

    :cond_63
    move v7, v4

    :goto_64
    const/4 v9, -0x1

    if-eqz v6, :cond_89

    if-lez v5, :cond_77

    .line 537
    iget-object v10, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTopFocusedWindowToken(Lcom/android/server/accessibility/AccessibilityWindowManager;)Landroid/os/IBinder;

    move-result-object v11

    invoke-virtual {v10, v1, v11}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findWindowIdLocked(ILandroid/os/IBinder;)I

    move-result v11

    invoke-static {v10, v11}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    goto :goto_7c

    .line 540
    :cond_77
    iget-object v10, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v10, v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 543
    :goto_7c
    iget-object v10, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTouchInteractionInProgress(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v10

    if-nez v10, :cond_89

    .line 544
    iget-object v10, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v10, v9}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    :cond_89
    if-eqz v7, :cond_95

    .line 558
    iget-object v10, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v10

    if-eq v10, v9, :cond_95

    move v9, v8

    goto :goto_96

    :cond_95
    move v9, v4

    :goto_96
    if-lez v5, :cond_15b

    move v10, v4

    move v11, v8

    :goto_9a
    if-ge v10, v5, :cond_102

    move-object/from16 v12, p2

    .line 563
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowInfo;

    .line 565
    iget-boolean v14, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mTrackingWindows:Z

    if-eqz v14, :cond_ad

    .line 566
    invoke-virtual {v0, v1, v13}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->populateReportedWindowLocked(ILandroid/view/WindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v14

    goto :goto_ae

    :cond_ad
    const/4 v14, 0x0

    :goto_ae
    if-eqz v14, :cond_fe

    add-int/lit8 v15, v5, -0x1

    .line 573
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v14, v15}, Landroid/view/accessibility/AccessibilityWindowInfo;->setLayer(I)V

    .line 575
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v15

    .line 576
    invoke-virtual {v14}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v16

    if-eqz v16, :cond_e1

    if-eqz v6, :cond_e1

    .line 577
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTouchInteractionInProgress(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v4

    if-nez v4, :cond_d8

    .line 580
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v4, v15}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    .line 581
    invoke-virtual {v14, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    goto :goto_e1

    .line 582
    :cond_d8
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v4

    if-ne v15, v4, :cond_e1

    const/4 v11, 0x0

    .line 586
    :cond_e1
    :goto_e1
    iget-boolean v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    if-nez v4, :cond_eb

    iget-boolean v4, v13, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eqz v4, :cond_eb

    .line 587
    iput-boolean v8, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mHasWatchOutsideTouchWindow:Z

    .line 589
    :cond_eb
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v4, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mA11yWindowInfoById:Landroid/util/SparseArray;

    invoke-virtual {v4, v15, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 591
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindowInfoById:Landroid/util/SparseArray;

    invoke-static {v13}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v13

    invoke-virtual {v4, v15, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_fe
    add-int/lit8 v10, v10, 0x1

    const/4 v4, 0x0

    goto :goto_9a

    .line 594
    :cond_102
    iget-object v1, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v6, :cond_13a

    .line 596
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTouchInteractionInProgress(Lcom/android/server/accessibility/AccessibilityWindowManager;)Z

    move-result v4

    if-eqz v4, :cond_11d

    if-eqz v11, :cond_11d

    .line 597
    iget-object v4, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v4}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmTopFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fputmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    :cond_11d
    const/4 v4, 0x0

    :goto_11e
    if-ge v4, v1, :cond_13a

    .line 602
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 603
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    iget-object v10, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v10}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmActiveWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v10

    if-ne v6, v10, :cond_137

    .line 604
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setActive(Z)V

    :cond_137
    add-int/lit8 v4, v4, 0x1

    goto :goto_11e

    :cond_13a
    if-eqz v7, :cond_15b

    const/4 v4, 0x0

    :goto_13d
    if-ge v4, v1, :cond_15b

    .line 610
    iget-object v5, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->mWindows:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityWindowInfo;

    .line 611
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v6

    iget-object v7, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v7}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v7

    if-ne v6, v7, :cond_158

    .line 612
    invoke-virtual {v5, v8}, Landroid/view/accessibility/AccessibilityWindowInfo;->setAccessibilityFocused(Z)V

    const/4 v4, 0x0

    goto :goto_15c

    :cond_158
    add-int/lit8 v4, v4, 0x1

    goto :goto_13d

    :cond_15b
    move v4, v9

    .line 620
    :goto_15c
    invoke-virtual {v0, v2, v3}, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->sendEventsForChangedWindowsLocked(Ljava/util/List;Landroid/util/SparseArray;)V

    .line 622
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v8

    :goto_164
    if-ltz v1, :cond_172

    .line 624
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_164

    :cond_172
    if-eqz v4, :cond_17d

    .line 628
    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityWindowManager$DisplayWindowsObserver;->this$0:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$fgetmAccessibilityFocusedWindowId(Lcom/android/server/accessibility/AccessibilityWindowManager;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->-$$Nest$mclearAccessibilityFocusLocked(Lcom/android/server/accessibility/AccessibilityWindowManager;I)V

    :cond_17d
    return-void
.end method

.method public final windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    .registers 8

    const/4 p0, 0x0

    if-ne p1, p2, :cond_4

    return p0

    :cond_4
    const/4 v0, 0x1

    if-nez p1, :cond_8

    return v0

    :cond_8
    if-nez p2, :cond_b

    return v0

    .line 431
    :cond_b
    iget v1, p1, Landroid/view/WindowInfo;->type:I

    iget v2, p2, Landroid/view/WindowInfo;->type:I

    if-eq v1, v2, :cond_12

    return v0

    .line 434
    :cond_12
    iget-boolean v1, p1, Landroid/view/WindowInfo;->focused:Z

    iget-boolean v2, p2, Landroid/view/WindowInfo;->focused:Z

    if-eq v1, v2, :cond_19

    return v0

    .line 437
    :cond_19
    iget-object v1, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-nez v1, :cond_22

    .line 438
    iget-object v1, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_2b

    return v0

    .line 441
    :cond_22
    iget-object v2, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2b

    return v0

    .line 444
    :cond_2b
    iget-object v1, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-nez v1, :cond_34

    .line 445
    iget-object v1, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-eqz v1, :cond_3d

    return v0

    .line 448
    :cond_34
    iget-object v2, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3d

    return v0

    .line 451
    :cond_3d
    iget-object v1, p1, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    if-nez v1, :cond_46

    .line 452
    iget-object v1, p2, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    if-eqz v1, :cond_4f

    return v0

    .line 455
    :cond_46
    iget-object v2, p2, Landroid/view/WindowInfo;->activityToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4f

    return v0

    .line 458
    :cond_4f
    iget-object v1, p1, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    iget-object v2, p2, Landroid/view/WindowInfo;->regionInScreen:Landroid/graphics/Region;

    invoke-virtual {v1, v2}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    return v0

    .line 461
    :cond_5a
    iget-object v1, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v1, :cond_69

    iget-object v2, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v2, :cond_69

    .line 462
    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_69

    return v0

    .line 465
    :cond_69
    iget-object v1, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iget-object v2, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_74

    return v0

    .line 468
    :cond_74
    iget-wide v1, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    iget-wide v3, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_7d

    return v0

    .line 471
    :cond_7d
    iget-boolean v1, p1, Landroid/view/WindowInfo;->inPictureInPicture:Z

    iget-boolean v2, p2, Landroid/view/WindowInfo;->inPictureInPicture:Z

    if-eq v1, v2, :cond_84

    return v0

    .line 474
    :cond_84
    iget-boolean v1, p1, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    iget-boolean v2, p2, Landroid/view/WindowInfo;->hasFlagWatchOutsideTouch:Z

    if-eq v1, v2, :cond_8b

    return v0

    .line 477
    :cond_8b
    iget v1, p1, Landroid/view/WindowInfo;->displayId:I

    iget v2, p2, Landroid/view/WindowInfo;->displayId:I

    if-eq v1, v2, :cond_92

    return v0

    .line 480
    :cond_92
    iget v1, p1, Landroid/view/WindowInfo;->taskId:I

    iget v2, p2, Landroid/view/WindowInfo;->taskId:I

    if-eq v1, v2, :cond_99

    return v0

    .line 483
    :cond_99
    iget-object p1, p1, Landroid/view/WindowInfo;->mTransformMatrix:[F

    iget-object p2, p2, Landroid/view/WindowInfo;->mTransformMatrix:[F

    invoke-static {p1, p2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p1

    if-nez p1, :cond_a4

    return v0

    :cond_a4
    return p0
.end method
