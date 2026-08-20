.class public Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "TalkToBixby.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 35
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mContext:Landroid/content/Context;

    .line 37
    iput p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mUserId:I

    return-void
.end method

.method public static createAction(Landroid/content/Context;I)Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;
    .registers 3

    .line 41
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public static getStringResId()I
    .registers 1

    const v0, 0x104012b

    return v0
.end method

.method public static isTablet()Z
    .registers 2

    const-string/jumbo v0, "ro.build.characteristics"

    .line 75
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method


# virtual methods
.method public final isSetupWizard(Landroid/content/Context;)Z
    .registers 6

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    move v0, v1

    goto :goto_11

    :cond_10
    move v0, v2

    .line 68
    :goto_11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mUserId:I

    const-string/jumbo v3, "user_setup_complete"

    invoke-static {p1, v3, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_22

    move p0, v1

    goto :goto_23

    :cond_22
    move p0, v2

    :goto_23
    if-eqz v0, :cond_27

    if-nez p0, :cond_28

    :cond_27
    move v2, v1

    :cond_28
    return v2
.end method

.method public performCornerAction(I)V
    .registers 5

    .line 50
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->isSetupWizard(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 51
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_14

    const p1, 0x1040e23

    goto :goto_17

    :cond_14
    const p1, 0x1040e22

    :goto_17
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_42

    .line 57
    :cond_20
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.bixby.action.START_WITH_EPD_BIXBY"

    .line 58
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.bixby.agent"

    const-string v2, "com.samsung.android.bixby.receiver.WakeupReceiver"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mUserId:I

    invoke-direct {v1, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :goto_42
    return-void
.end method
