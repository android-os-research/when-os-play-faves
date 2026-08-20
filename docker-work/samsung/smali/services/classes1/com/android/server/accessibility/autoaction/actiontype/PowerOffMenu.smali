.class public Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "PowerOffMenu.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createAction(Landroid/content/Context;)Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;
    .registers 2

    .line 33
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getStringResId()I
    .registers 1

    const v0, 0x104011b

    return v0
.end method


# virtual methods
.method public performCornerAction(I)V
    .registers 3

    .line 42
    new-instance p1, Landroid/content/Intent;

    const-string v0, "SYSTEM_ACTION_POWER_DIALOG"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/PowerOffMenu;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
