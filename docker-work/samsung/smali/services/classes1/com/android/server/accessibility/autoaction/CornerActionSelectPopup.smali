.class public Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;
.super Ljava/lang/Object;
.source "CornerActionSelectPopup.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CornerActionSelectPopup"


# instance fields
.field public final POPUP_GRAVITY:[I

.field public mAnchorView:Landroid/view/View;

.field public mContext:Landroid/content/Context;

.field public mParams:Landroid/view/WindowManager$LayoutParams;

.field public mPopup:Landroid/widget/PopupMenu;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPopup(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)Landroid/widget/PopupMenu;
    .registers 1

    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 43
    fill-array-data v0, :array_28

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->POPUP_GRAVITY:[I

    .line 48
    new-instance v0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    .line 61
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->makeView(I)V

    .line 63
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 64
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    nop

    :array_28
    .array-data 4
        0x33
        0x35
        0x53
        0x55
    .end array-data
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 120
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 121
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mAnchorView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    return-void
.end method

.method public dismiss()V
    .registers 1

    .line 108
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->dismiss()V

    return-void
.end method

.method public final isNightMode()Z
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v0, 0x20

    if-ne p0, v0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method public final makeView(I)V
    .registers 5

    .line 69
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mWindowManager:Landroid/view/WindowManager;

    .line 70
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    .line 71
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/16 v1, 0x7d9

    .line 72
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 73
    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->POPUP_GRAVITY:[I

    aget p1, v1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 p1, 0x120

    .line 74
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 76
    iget p1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v1, 0x20000

    or-int/2addr p1, v1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 p1, 0x3

    .line 77
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 79
    new-instance p1, Landroid/view/View;

    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mAnchorView:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->isNightMode()Z

    move-result p1

    if-eqz p1, :cond_4b

    const p1, 0x1030128

    goto :goto_4e

    :cond_4b
    const p1, 0x103012b

    .line 83
    :goto_4e
    new-instance v0, Landroid/widget/PopupMenu;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mAnchorView:Landroid/view/View;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    return-void
.end method

.method public setCornerActionList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 92
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1a

    .line 93
    iget-object v2, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2, v0, v1, v0, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1a
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V
    .registers 2

    .line 112
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {p0, p1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .registers 2

    .line 116
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {p0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    return-void
.end method

.method public show()V
    .registers 3

    .line 98
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99
    new-instance v1, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$2;

    invoke-direct {v1, p0}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$2;-><init>(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
