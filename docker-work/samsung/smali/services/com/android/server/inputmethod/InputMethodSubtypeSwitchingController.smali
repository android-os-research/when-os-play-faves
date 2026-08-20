.class public final Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
.super Ljava/lang/Object;
.source "InputMethodSubtypeSwitchingController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;,
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$DynamicRotationList;,
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$StaticRotationList;,
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;,
        Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final NOT_A_SUBTYPE_ID:I = -0x1

.field public static final TAG:Ljava/lang/String; = "InputMethodSubtypeSwitchingController"


# instance fields
.field public mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

.field public final mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

.field public mSubtypeList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;


# direct methods
.method public static bridge synthetic -$$Nest$smcalculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->calculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I

    move-result p0

    return p0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)V
    .registers 3

    .line 495
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 496
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 497
    invoke-virtual {p0, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->resetCircularListLocked(Landroid/content/Context;)V

    return-void
.end method

.method public static calculateSubtypeId(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)I
    .registers 2

    if-eqz p1, :cond_b

    .line 245
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodSubtype;->hashCode()I

    move-result p1

    .line 244
    invoke-static {p0, p1}, Lcom/android/server/inputmethod/InputMethodUtils;->getSubtypeIdFromHashCode(Landroid/view/inputmethod/InputMethodInfo;I)I

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, -0x1

    :goto_c
    return p0
.end method

.method public static createInstanceLocked(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;
    .registers 3

    .line 502
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;

    invoke-direct {v0, p0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;-><init>(Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public dump(Landroid/util/Printer;)V
    .registers 2

    .line 541
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    if-eqz p0, :cond_8

    .line 542
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->dump(Landroid/util/Printer;)V

    goto :goto_d

    :cond_8
    const-string p0, "    mController=null"

    .line 544
    invoke-interface {p1, p0}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method public getNextInputMethodLocked(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;
    .registers 4

    .line 525
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 531
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->getNextInputMethod(ZLandroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;

    move-result-object p0

    return-object p0
.end method

.method public getSortedInputMethodAndSubtypeListForImeMenuLocked(ZZ)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/List<",
            "Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ImeSubtypeListItem;",
            ">;"
        }
    .end annotation

    .line 536
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->getSortedInputMethodAndSubtypeList(ZZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V
    .registers 3

    .line 506
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    if-nez p0, :cond_5

    return-void

    .line 512
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->onUserActionLocked(Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)V

    return-void
.end method

.method public resetCircularListLocked(Landroid/content/Context;)V
    .registers 4

    .line 516
    new-instance v0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-direct {v0, p1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;-><init>(Landroid/content/Context;Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;)V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mSubtypeList:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;

    .line 517
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    const/4 v1, 0x0

    .line 518
    invoke-virtual {v0, v1, v1, v1}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$InputMethodAndSubtypeList;->getSortedInputMethodAndSubtypeList(ZZZ)Ljava/util/List;

    move-result-object v0

    .line 517
    invoke-static {p1, v0}, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;->createFrom(Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;Ljava/util/List;)Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController;->mController:Lcom/android/server/inputmethod/InputMethodSubtypeSwitchingController$ControllerImpl;

    return-void
.end method
