.class public Lcom/android/server/input/InputManagerService$38;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Lcom/android/server/input/InputManagerService$KeyboardLayoutVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/input/InputManagerService;->getKeyboardLayoutForInputDevice(Landroid/hardware/input/InputDeviceIdentifier;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Landroid/hardware/input/KeyboardLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;

.field public final synthetic val$result:[Landroid/hardware/input/KeyboardLayout;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;[Landroid/hardware/input/KeyboardLayout;)V
    .registers 3

    .line 6854
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$38;->this$0:Lcom/android/server/input/InputManagerService;

    iput-object p2, p0, Lcom/android/server/input/InputManagerService$38;->val$result:[Landroid/hardware/input/KeyboardLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visitKeyboardLayout(Landroid/content/res/Resources;ILandroid/hardware/input/KeyboardLayout;)V
    .registers 4

    .line 6858
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$38;->val$result:[Landroid/hardware/input/KeyboardLayout;

    const/4 p1, 0x0

    aput-object p3, p0, p1

    return-void
.end method
