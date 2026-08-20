.class public Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "ScreenOff.java"


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 29
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static createAction(Landroid/content/Context;)Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;
    .registers 2

    .line 34
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getStringResId()I
    .registers 1

    const v0, 0x1040121

    return v0
.end method


# virtual methods
.method public performCornerAction(I)V
    .registers 3

    .line 43
    new-instance p1, Landroid/content/Intent;

    const-string v0, "SYSTEM_ACTION_LOCK_SCREEN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenOff;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
