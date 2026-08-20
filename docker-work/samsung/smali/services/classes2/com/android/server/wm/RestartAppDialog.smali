.class public final Lcom/android/server/wm/RestartAppDialog;
.super Landroid/app/AlertDialog;
.source "RestartAppDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "RestartAppDialog"


# instance fields
.field public final mAppLabel:Ljava/lang/CharSequence;

.field public mDialogMessage:Landroid/widget/TextView;

.field public final mDoNotShowAgainCheckBox:Landroid/widget/CheckBox;

.field public final mOnClickCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageName:Ljava/lang/String;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public final mTaskId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/CharSequence;Ljava/util/function/Consumer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v0, Lcom/android/server/wm/RestartAppDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/RestartAppDialog$1;-><init>(Lcom/android/server/wm/RestartAppDialog;)V

    iput-object v0, p0, Lcom/android/server/wm/RestartAppDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->assertRuntimeOverlayThemable()V

    .line 54
    iput p2, p0, Lcom/android/server/wm/RestartAppDialog;->mTaskId:I

    .line 55
    iput-object p3, p0, Lcom/android/server/wm/RestartAppDialog;->mPackageName:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/android/server/wm/RestartAppDialog;->mAppLabel:Ljava/lang/CharSequence;

    .line 57
    iput-object p5, p0, Lcom/android/server/wm/RestartAppDialog;->mOnClickCallback:Ljava/util/function/Consumer;

    const p2, 0x104054f

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    new-array p5, p3, [Ljava/lang/Object;

    const-string v0, ""

    if-eqz p4, :cond_25

    move-object v1, p4

    goto :goto_26

    :cond_25
    move-object v1, v0

    :goto_26
    const/4 v2, 0x0

    aput-object v1, p5, v2

    .line 59
    invoke-static {p2, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 62
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 63
    invoke-virtual {p0, p3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 65
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object p5

    const-string v1, "layout_inflater"

    invoke-virtual {p5, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Landroid/view/LayoutInflater;

    const v1, 0x109008f

    const/4 v3, 0x0

    .line 67
    invoke-virtual {p5, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    const v1, 0x104054e

    .line 71
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array p3, p3, [Ljava/lang/Object;

    if-eqz p4, :cond_53

    goto :goto_54

    :cond_53
    move-object p4, v0

    :goto_54
    aput-object p4, p3, v2

    .line 70
    invoke-static {v1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const p4, 0x102031f

    .line 73
    invoke-virtual {p5, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/android/server/wm/RestartAppDialog;->mDialogMessage:Landroid/widget/TextView;

    .line 74
    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x102031e

    .line 75
    invoke-virtual {p5, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/server/wm/RestartAppDialog;->mDoNotShowAgainCheckBox:Landroid/widget/CheckBox;

    .line 78
    invoke-virtual {p0, p5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    const/4 p3, -0x1

    const p4, 0x1040451

    .line 79
    invoke-virtual {p1, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p4

    invoke-virtual {p0, p3, p4, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p3, -0x2

    const/high16 p4, 0x1040000

    .line 80
    invoke-virtual {p1, p4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p3, p1, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 82
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    .line 83
    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 p2, 0x7d3

    .line 84
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 85
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p3, 0x20000

    or-int/2addr p2, p3

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 p2, 0x51

    .line 86
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 87
    iget p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 p2, p2, 0x110

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 89
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 p1, -0x2

    const-string v0, "RestartAppDialog"

    if-eq p2, p1, :cond_38

    const/4 p1, -0x1

    if-eq p2, p1, :cond_9

    goto :goto_54

    .line 118
    :cond_9
    iget-object p1, p0, Lcom/android/server/wm/RestartAppDialog;->mDoNotShowAgainCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClick: BUTTON_POSITIVE (tid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/RestartAppDialog;->mTaskId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")Do_not_show_again="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p0, p0, Lcom/android/server/wm/RestartAppDialog;->mOnClickCallback:Ljava/util/function/Consumer;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_54

    .line 124
    :cond_38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onClick: BUTTON_NEGATIVE (tid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/RestartAppDialog;->mTaskId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_54
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 103
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 104
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/RestartAppDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .registers 2

    .line 110
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 111
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/RestartAppDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
